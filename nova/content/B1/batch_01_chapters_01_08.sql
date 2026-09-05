-- ===============================================================
-- NOVA v9.0 / B1 BATCH 01 / SERIES 081-088 / CHAPTERS 01-08
-- Generated only after all chapter QA and cross-chapter QA passed.
-- Canonical archive SHA-256: 11e5b8834dcee6002ccf6981650069309ba9df0bdb10063b82fcc5dfb293e8c2
-- Contains content imports only; no schema DDL.
-- ===============================================================

-- BEGIN SERIES 081
-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 081
-- B1 > Entscheidungen & Gründe > Ich muss mich entscheiden
-- FIRST B1 CHAPTER
-- Requires complete A1/A2 through Series 080.
-- Creates B1 Level + B1 Module 01 skeleton when missing.
-- Uses the unchanged Nova v9.0 schema from the canonical archive.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_081_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_081_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_a2 BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_moechten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_in BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_andere BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wohnung BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wohnen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_dieser BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_oder BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_muessen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_koennen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_heute BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_noch BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_morgen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zeit BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bis BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_dann BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sprechen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sich_entscheiden BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_muss_mich_entscheiden BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_kann_mich_noch_nicht_entscheiden BIGINT UNSIGNED DEFAULT NULL;
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

  SELECT id INTO v_a2 FROM levels WHERE course_id=v_course AND cefr_level='A2' AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_a2 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Level not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM levels WHERE id=v_a2 AND status='complete';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 080 and complete A2 before Series 081.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters c JOIN modules m ON m.id=c.module_id WHERE m.level_id=v_a2 AND m.sort_order BETWEEN 1 AND 8 AND c.status IN ('validated','complete');
  IF v_count<>40 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081 requires all 40 A2 Chapters validated/complete.'; END IF;

  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='B1' AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN
    INSERT INTO levels(course_id,cefr_level,title,title_translation,description,description_translation,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_course,'B1','Selbstständiger im Alltag','مستقل تر در زندگی روزمره','Alltägliche Entscheidungen erklären, Gründe nennen und längere praktische Gespräche selbstständig führen.','تصمیم های روزمره را توضیح بده، دلیل بیاور و گفت و گوهای کاربردی طولانی تر را مستقل تر پیش ببر.',41,60,3,'active','{"curriculum":"language-specific","startingPoint":"after-A2","storyFirst":true}');
    SET v_level=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_level,'Entscheidungen & Gründe','تصمیم ها و دلیل ها','Über eine wichtige Alltagsentscheidung sprechen, Unsicherheit ausdrücken und schrittweise Gründe nennen.','درباره یک تصمیم مهم روزمره صحبت کن، تردید را بیان کن و کم کم دلیل بیاور.','🤔',41,43,1,'active','{"focus":"decisions-and-reasons","grammarApproach":"context-first"}');
    SET v_module=LAST_INSERT_ID();
  END IF;

  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Ich muss mich entscheiden','باید تصمیم بگیرم','Mit sich entscheiden ausdrücken, dass eine Wahl notwendig ist.','با ساختار sich entscheiden بگو که باید انتخاب کنی.',NULL,41,41,1,'draft' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=1);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Warum willst du das machen?','چرا می خوای این کار رو انجام بدی؟','Nach dem Grund für eine Entscheidung fragen.','دلیل یک تصمیم را بپرس.',NULL,41,42,2,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=2);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Weil ich etwas ändern möchte','چون می خوام یه چیزی رو تغییر بدم','Einen einfachen persönlichen Grund mit weil nennen.','با weil یک دلیل شخصی ساده بیان کن.',NULL,42,42,3,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=3);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Ich bin mir noch nicht sicher','هنوز مطمئن نیستم','Unsicherheit genauer ausdrücken und Möglichkeiten vergleichen.','تردید را دقیق تر بیان کن و گزینه ها را مقایسه کن.',NULL,42,43,4,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=4);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Ich habe mich entschieden','تصمیمم رو گرفتم','Eine Entscheidung mitteilen und das Gespräch klar abschließen.','تصمیمت را اعلام کن و گفت و گو را روشن به پایان ببر.',NULL,43,43,5,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=5);

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 01 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 01 must be empty before Series 081 import.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;

  SELECT id INTO v_w_moechten FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_moechten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word möchten not found.'; END IF;
  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;
  SELECT id INTO v_w_in FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_in IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word in not found.'; END IF;
  SELECT id INTO v_w_ein FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_ein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ein not found.'; END IF;
  SELECT id INTO v_w_andere FROM words WHERE course_id=v_course AND lemma='andere' AND part_of_speech='adjective' AND translation='دیگر / متفاوت' ORDER BY id LIMIT 1;
  IF v_w_andere IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word andere not found.'; END IF;
  SELECT id INTO v_w_wohnung FROM words WHERE course_id=v_course AND lemma='Wohnung' AND part_of_speech='noun' AND translation='خانه / آپارتمان' ORDER BY id LIMIT 1;
  IF v_w_wohnung IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Wohnung not found.'; END IF;
  SELECT id INTO v_w_wohnen FROM words WHERE course_id=v_course AND lemma='wohnen' AND part_of_speech='verb' AND translation='زندگی کردن / ساکن بودن' ORDER BY id LIMIT 1;
  IF v_w_wohnen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wohnen not found.'; END IF;
  SELECT id INTO v_w_dieser FROM words WHERE course_id=v_course AND lemma='dieser' AND part_of_speech='determiner' AND translation='این' ORDER BY id LIMIT 1;
  IF v_w_dieser IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word dieser not found.'; END IF;
  SELECT id INTO v_w_oder FROM words WHERE course_id=v_course AND lemma='oder' AND part_of_speech='conjunction' AND translation='یا' ORDER BY id LIMIT 1;
  IF v_w_oder IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word oder not found.'; END IF;
  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;
  SELECT id INTO v_w_muessen FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_muessen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word müssen not found.'; END IF;
  SELECT id INTO v_w_koennen FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_koennen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word können not found.'; END IF;
  SELECT id INTO v_w_heute FROM words WHERE course_id=v_course AND lemma='heute' AND part_of_speech='adverb' AND translation='امروز' ORDER BY id LIMIT 1;
  IF v_w_heute IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word heute not found.'; END IF;
  SELECT id INTO v_w_noch FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_noch IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word noch not found.'; END IF;
  SELECT id INTO v_w_nicht FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_nicht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nicht not found.'; END IF;
  SELECT id INTO v_w_nein FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_nein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nein not found.'; END IF;
  SELECT id INTO v_w_morgen FROM words WHERE course_id=v_course AND lemma='morgen' AND part_of_speech='adverb' AND translation='فردا' ORDER BY id LIMIT 1;
  IF v_w_morgen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word morgen not found.'; END IF;
  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;
  SELECT id INTO v_w_zeit FROM words WHERE course_id=v_course AND lemma='Zeit' AND part_of_speech='noun' AND translation='وقت / زمان' ORDER BY id LIMIT 1;
  IF v_w_zeit IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Zeit not found.'; END IF;
  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;
  SELECT id INTO v_w_bis FROM words WHERE course_id=v_course AND lemma='bis' AND part_of_speech='preposition' AND translation='تا' ORDER BY id LIMIT 1;
  IF v_w_bis IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bis not found.'; END IF;
  SELECT id INTO v_w_dann FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_dann IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word dann not found.'; END IF;
  SELECT id INTO v_w_sprechen FROM words WHERE course_id=v_course AND lemma='sprechen' AND part_of_speech='verb' AND translation='صحبت کردن / حرف زدن' ORDER BY id LIMIT 1;
  IF v_w_sprechen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sprechen not found.'; END IF;
  SELECT id INTO v_w_wir FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_wir IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wir not found.'; END IF;
  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_sich_entscheiden FROM words WHERE course_id=v_course AND lemma='sich entscheiden' AND part_of_speech='verb' AND translation='تصمیم گرفتن' ORDER BY id LIMIT 1;
  IF v_w_sich_entscheiden IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sich entscheiden','sich entscheiden','verb','تصمیم گرفتن',41,'{"reflexive":true,"case":"accusative","pattern":"sich entscheiden"}','[{"text":"warten","translation":"منتظر ماندن"},{"text":"sprechen","translation":"صحبت کردن"},{"text":"fahren","translation":"رفتن با وسیله"},{"text":"arbeiten","translation":"کار کردن"},{"text":"helfen","translation":"کمک کردن"}]','Ich muss mich entscheiden.','باید تصمیم بگیرم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":81}');
    SET v_w_sich_entscheiden=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_muss_mich_entscheiden FROM words WHERE course_id=v_course AND lemma='Ich muss mich entscheiden.' AND part_of_speech='phrase' AND translation='باید تصمیم بگیرم.' ORDER BY id LIMIT 1;
  IF v_w_ich_muss_mich_entscheiden IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich muss mich entscheiden.','Ich muss mich entscheiden.','phrase','باید تصمیم بگیرم.',41,NULL,'[{"text":"Ich muss arbeiten.","translation":"باید کار کنم."},{"text":"Ich kann morgen.","translation":"فردا می تونم."},{"text":"Ich habe noch Zeit.","translation":"هنوز وقت دارم."},{"text":"Wir sprechen morgen.","translation":"فردا صحبت می کنیم."},{"text":"Noch nicht.","translation":"هنوز نه."}]',NULL,NULL,NULL,NULL,'{"cefr":"B1","introducedInSeries":81}');
    SET v_w_ich_muss_mich_entscheiden=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_kann_mich_noch_nicht_entscheiden FROM words WHERE course_id=v_course AND lemma='Ich kann mich noch nicht entscheiden.' AND part_of_speech='phrase' AND translation='هنوز نمی تونم تصمیم بگیرم.' ORDER BY id LIMIT 1;
  IF v_w_ich_kann_mich_noch_nicht_entscheiden IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich kann mich noch nicht entscheiden.','Ich kann mich noch nicht entscheiden.','phrase','هنوز نمی تونم تصمیم بگیرم.',41,NULL,'[{"text":"Ich muss mich entscheiden.","translation":"باید تصمیم بگیرم."},{"text":"Ich kann morgen nicht.","translation":"فردا نمی تونم."},{"text":"Ich bin noch nicht fertig.","translation":"هنوز تمام نکرده ام."},{"text":"Ich habe noch Zeit.","translation":"هنوز وقت دارم."},{"text":"Wir sprechen morgen.","translation":"فردا صحبت می کنیم."}]',NULL,NULL,NULL,NULL,'{"cefr":"B1","introducedInSeries":81}');
    SET v_w_ich_kann_mich_noch_nicht_entscheiden=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Eine Entscheidung','یک تصمیم','Sara fragt Mia, ob sie in einer anderen Wohnung wohnen möchte. Mia sagt, dass sie sich entscheiden muss.','سارا از میا می پرسد آیا می خواهد در خانه دیگری زندگی کند. میا می گوید که باید تصمیم بگیرد.','story','mia-sara-b1-decisions',1,41,120,1,'validated','{"relationship":"friends","context":"choosing-an-apartment","cefr":"B1","storyArc":"choice-uncertainty-time-next-step"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Möchtest du in einer anderen Wohnung wohnen?','می خوای در یک خونه دیگه زندگی کنی؟',41,NULL,NULL,NULL,NULL,'[{"surface":"Möchtest","lemma":"möchten","translation":"خواستن / مایل بودن","partOfSpeech":"verb","meaning":"می خوای","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"in","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition"},{"surface":"einer","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"dative_feminine"},{"surface":"anderen","lemma":"andere","translation":"دیگر / متفاوت","partOfSpeech":"adjective","meaning":"دیگه","form":"dative_feminine"},{"surface":"Wohnung","lemma":"Wohnung","translation":"خانه / آپارتمان","partOfSpeech":"noun"},{"surface":"wohnen","lemma":"wohnen","translation":"زندگی کردن / ساکن بودن","partOfSpeech":"verb","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ich muss mich entscheiden.','باید تصمیم بگیرم.',41,NULL,NULL,'ich muss mich entscheiden',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"muss","lemma":"müssen","translation":"مجبور بودن / باید","partOfSpeech":"verb","meaning":"باید","form":"present_1sg"},{"surface":"mich","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"خودم","form":"reflexive_accusative_1sg"},{"surface":"entscheiden","lemma":"sich entscheiden","translation":"تصمیم گرفتن","partOfSpeech":"verb","suffix":"."}]','فعل بازتابی sich entscheiden','برای ich از ضمیر بازتابی mich استفاده می کنیم: Ich entscheide mich. با فعل کمکی، entscheiden در پایان می آید.','{"pattern":"ich + modal + mich + entscheiden","reflexivePronoun":"mich"}','{"cefr":"B1"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Heute noch?','همین امروز؟',41,NULL,NULL,NULL,NULL,'[{"surface":"Heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb"},{"surface":"noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb","meaning":"همین امروز","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Nein, morgen.','نه، فردا.',41,NULL,NULL,'nein morgen',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":","},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Noch nicht entschieden','هنوز تصمیم نگرفتم','Sara fragt genauer nach. Mia drückt aus, dass die Entscheidung noch offen ist.','سارا دقیق تر می پرسد. میا می گوید که تصمیم هنوز باز است.','story','mia-sara-b1-decisions',2,41,120,2,'validated','{"relationship":"friends","context":"choosing-an-apartment","cefr":"B1","storyArc":"choice-uncertainty-time-next-step"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,1,'character','Kannst du dich entscheiden?','می تونی تصمیم بگیری؟',41,NULL,NULL,NULL,NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"dich","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"خودت","form":"reflexive_accusative_2sg"},{"surface":"entscheiden","lemma":"sich entscheiden","translation":"تصمیم گرفتن","partOfSpeech":"verb","suffix":"?"}]','ضمیر بازتابی برای du','برای du از dich استفاده می کنیم: Du entscheidest dich. با können، شکل پایه entscheiden در پایان می آید.','{"pattern":"du + können + dich + entscheiden","reflexivePronoun":"dich"}','{"cefr":"B1"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Ich kann mich noch nicht entscheiden.','هنوز نمی تونم تصمیم بگیرم.',41,NULL,NULL,'ich kann mich noch nicht entscheiden',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونم","form":"present_1sg"},{"surface":"mich","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"خودم","form":"reflexive_accusative_1sg"},{"surface":"noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle"},{"surface":"entscheiden","lemma":"sich entscheiden","translation":"تصمیم گرفتن","partOfSpeech":"verb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,3,'character','Diese Wohnung oder eine andere?','این خونه یا یک خونه دیگه؟',41,NULL,NULL,NULL,NULL,'[{"surface":"Diese","lemma":"dieser","translation":"این","partOfSpeech":"determiner","form":"nominative_feminine"},{"surface":"Wohnung","lemma":"Wohnung","translation":"خانه / آپارتمان","partOfSpeech":"noun"},{"surface":"oder","lemma":"oder","translation":"یا","partOfSpeech":"conjunction"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"nominative_feminine"},{"surface":"andere","lemma":"andere","translation":"دیگر / متفاوت","partOfSpeech":"adjective","meaning":"خونه دیگه","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Noch nicht.','هنوز نه.',41,NULL,NULL,'noch nicht',NULL,'[{"surface":"Noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Diese oder eine andere?','این خانه یا یکی دیگر؟','Sara benennt die beiden Möglichkeiten. Mia nimmt sich bis morgen Zeit.','سارا دو گزینه را نام می برد. میا تا فردا به خودش فرصت می دهد.','story','mia-sara-b1-decisions',3,41,130,3,'validated','{"relationship":"friends","context":"choosing-an-apartment","cefr":"B1","storyArc":"choice-uncertainty-time-next-step"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,1,'character','Diese Wohnung oder eine andere?','این خونه یا یک خونه دیگه؟',41,NULL,NULL,NULL,NULL,'[{"surface":"Diese","lemma":"dieser","translation":"این","partOfSpeech":"determiner","form":"nominative_feminine"},{"surface":"Wohnung","lemma":"Wohnung","translation":"خانه / آپارتمان","partOfSpeech":"noun"},{"surface":"oder","lemma":"oder","translation":"یا","partOfSpeech":"conjunction"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"nominative_feminine"},{"surface":"andere","lemma":"andere","translation":"دیگر / متفاوت","partOfSpeech":"adjective","meaning":"خونه دیگه","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ich kann mich noch nicht entscheiden.','هنوز نمی تونم تصمیم بگیرم.',41,NULL,NULL,'ich kann mich noch nicht entscheiden',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونم","form":"present_1sg"},{"surface":"mich","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"خودم","form":"reflexive_accusative_1sg"},{"surface":"noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle"},{"surface":"entscheiden","lemma":"sich entscheiden","translation":"تصمیم گرفتن","partOfSpeech":"verb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,3,'character','Du hast noch Zeit.','هنوز وقت داری.',41,NULL,NULL,NULL,NULL,'[{"surface":"Du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داری","form":"present_2sg"},{"surface":"noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Ja, bis morgen.','بله، تا فردا.',41,NULL,NULL,'ja bis morgen',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,5,'character','Dann sprechen wir morgen.','پس فردا صحبت می کنیم.',41,NULL,NULL,NULL,NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb","meaning":"پس"},{"surface":"sprechen","lemma":"sprechen","translation":"صحبت کردن / حرف زدن","partOfSpeech":"verb","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,6,'learner','Gut.','خوبه.',41,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_14=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Ich entscheide mich morgen','فردا تصمیم می گیرم','Mia führt das Gespräch vollständig und legt fest, wann sie ihre Entscheidung über die Wohnung trifft.','میا گفت و گو را کامل پیش می برد و مشخص می کند چه زمانی درباره خانه تصمیم می گیرد.','story','mia-sara-b1-decisions',4,41,150,4,'validated','{"relationship":"friends","context":"choosing-an-apartment","cefr":"B1","storyArc":"choice-uncertainty-time-next-step"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,1,'character','Möchtest du in einer anderen Wohnung wohnen?','می خوای در یک خونه دیگه زندگی کنی؟',41,NULL,NULL,NULL,NULL,'[{"surface":"Möchtest","lemma":"möchten","translation":"خواستن / مایل بودن","partOfSpeech":"verb","meaning":"می خوای","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"in","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition"},{"surface":"einer","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"dative_feminine"},{"surface":"anderen","lemma":"andere","translation":"دیگر / متفاوت","partOfSpeech":"adjective","meaning":"دیگه","form":"dative_feminine"},{"surface":"Wohnung","lemma":"Wohnung","translation":"خانه / آپارتمان","partOfSpeech":"noun"},{"surface":"wohnen","lemma":"wohnen","translation":"زندگی کردن / ساکن بودن","partOfSpeech":"verb","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Ich muss mich entscheiden.','باید تصمیم بگیرم.',41,NULL,NULL,'ich muss mich entscheiden',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"muss","lemma":"müssen","translation":"مجبور بودن / باید","partOfSpeech":"verb","meaning":"باید","form":"present_1sg"},{"surface":"mich","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"خودم","form":"reflexive_accusative_1sg"},{"surface":"entscheiden","lemma":"sich entscheiden","translation":"تصمیم گرفتن","partOfSpeech":"verb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,3,'character','Kannst du dich noch nicht entscheiden?','هنوز نمی تونی تصمیم بگیری؟',41,NULL,NULL,NULL,NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"dich","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"خودت","form":"reflexive_accusative_2sg"},{"surface":"noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle"},{"surface":"entscheiden","lemma":"sich entscheiden","translation":"تصمیم گرفتن","partOfSpeech":"verb","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Nein, noch nicht.','نه، هنوز نه.',41,NULL,NULL,'nein noch nicht',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":","},{"surface":"noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,5,'character','Du hast noch Zeit.','هنوز وقت داری.',41,NULL,NULL,NULL,NULL,'[{"surface":"Du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داری","form":"present_2sg"},{"surface":"noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Ja. Ich entscheide mich morgen.','بله. فردا تصمیم می گیرم.',41,NULL,NULL,'ja ich entscheide mich morgen',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"entscheide","lemma":"sich entscheiden","translation":"تصمیم گرفتن","partOfSpeech":"verb","meaning":"تصمیم می گیرم","form":"present_1sg"},{"surface":"mich","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"خودم","form":"reflexive_accusative_1sg"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"."}]','زمان حال برای برنامه نزدیک','در آلمانی برای برنامه مشخص آینده نزدیک می توان از زمان حال همراه morgen استفاده کرد.','{"pattern":"present + future-time adverb","timeAdverb":"morgen"}','{"cefr":"B1"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,7,'character','Dann sprechen wir morgen.','پس فردا صحبت می کنیم.',41,NULL,NULL,NULL,NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb","meaning":"پس"},{"surface":"sprechen","lemma":"sprechen","translation":"صحبت کردن / حرف زدن","partOfSpeech":"verb","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,8,'learner','Gut, bis morgen.','خوبه، تا فردا.',41,NULL,NULL,'gut bis morgen',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","suffix":","},{"surface":"bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_22=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_moechten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_in,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_andere,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wohnung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wohnen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_muessen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sich_entscheiden,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich_muss_mich_entscheiden,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_heute,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_noch,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_morgen,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_koennen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sich_entscheiden,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_noch,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_nicht,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_dieser,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wohnung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_oder,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_andere,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_kann_mich_noch_nicht_entscheiden,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_dieser,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wohnung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_oder,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_andere,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_koennen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sich_entscheiden,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_noch,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_zeit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bis,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_morgen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_dann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sprechen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_kann_mich_noch_nicht_entscheiden,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_moechten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_in,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_andere,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wohnung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wohnen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_muessen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_koennen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sich_entscheiden,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_noch,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nicht,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zeit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_morgen,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_dann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sprechen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bis,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_muss_mich_entscheiden,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_sich_entscheiden,'فعل جدید',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_ich_muss_mich_entscheiden,'عبارت جدید',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به سوال درباره خانه گوش کن',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'بگو باید تصمیم بگیری',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به سوال کوتاه سارا گوش کن',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'بگو فردا تصمیم می گیری',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_sich_entscheiden,'معنی درست را انتخاب کن',NULL,41,'{"mode":"word_translation","question":"sich entscheiden","choices":["تصمیم گرفتن","منتظر ماندن","صحبت کردن"],"correctIndex":0}','{"cefr":"B1"}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_ich_kann_mich_noch_nicht_entscheiden,'عبارت جدید',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال درباره تصمیم گوش کن',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بگو هنوز نمی تونی تصمیم بگیری',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به دو گزینه خانه گوش کن',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'بگو هنوز نه',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,41,'{"mode":"turn_translation","question":"«Ich kann mich noch nicht entscheiden.» یعنی چی؟","choices":["هنوز نمی تونم تصمیم بگیرم.","باید امروز تصمیم بگیرم.","فردا با قطار می رم."],"correctIndex":0}','{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله تصمیم نگرفتن را به ترتیب درست بساز',NULL,41,'{"source":"turn_tokens","shuffle":true}','{"cefr":"B1"}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',1,v_t_9,NULL,'به دو گزینه خانه گوش کن',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',2,v_t_10,NULL,'تردیدت را بیان کن',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_11,NULL,'به فرصت دادن سارا گوش کن',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_12,NULL,'بگو تا فردا',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_13,NULL,'به قرار گفت و گو گوش کن',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_14,NULL,'موافقت کن',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,41,'{"mode":"turn_translation","question":"میا درباره تصمیمش چه می گوید؟","choices":["هنوز نمی تواند تصمیم بگیرد.","خانه فعلی را انتخاب کرده است.","خانه دیگری را انتخاب کرده است."],"correctIndex":0}','{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,41,'{"source":"lesson_story","question":"میا تا چه زمانی برای تصمیم گرفتن وقت دارد؟","choices":["تا فردا","تا شنبه","فقط تا امروز"],"correctIndex":0}','{"cefr":"B1"}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_15,NULL,'به سوال کامل سارا درباره خانه گوش کن',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_16,NULL,'بگو باید تصمیم بگیری',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_17,NULL,'به سوال درباره تردید گوش کن',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_18,NULL,'بگو هنوز تصمیم نگرفتی',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_19,NULL,'به فرصت دادن سارا گوش کن',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_20,NULL,'بگو فردا تصمیم می گیری',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',7,v_t_21,NULL,'به قرار فردا گوش کن',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',8,v_t_22,NULL,'گفت و گو را تمام کن',NULL,41,NULL,'{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',9,v_t_20,NULL,'معنی درست را انتخاب کن',NULL,41,'{"mode":"turn_translation","question":"میا چه زمانی تصمیم می گیرد؟","choices":["فردا","امروز","شنبه"],"correctIndex":0}','{"cefr":"B1"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,41,'{"source":"lesson_story","question":"میا باید درباره چه چیزی تصمیم بگیرد؟","choices":["زندگی در خانه دیگری","رفتن با قطار یا اتوبوس","کار کردن یا استراحت کردن"],"correctIndex":0}','{"cefr":"B1"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 081 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>22 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 081 turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 081 activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>3 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 081 explicit-target count.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  UPDATE levels SET status='active' WHERE id=v_level;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_081_v9();
DROP PROCEDURE IF EXISTS import_nova_series_081_v9;
-- END SERIES 081

-- BEGIN SERIES 082
-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 082
-- B1 > Entscheidungen & Gründe > Warum willst du das machen?
-- Requires canonical Nova v9.0 and QA-passed staged Series 081.
-- Uses the unchanged Nova v9.0 schema; contains no schema DDL.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_082_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_082_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_prior_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_001 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_002 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_003 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_004 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_005 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_006 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_007 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_008 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_009 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_010 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_011 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_012 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_013 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_014 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_015 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_016 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_017 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_018 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_019 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_020 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_021 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_022 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_023 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_024 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_025 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_026 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_027 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_028 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_029 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_030 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_031 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_032 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_033 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_034 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_035 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_036 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_037 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_038 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_039 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_040 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_041 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_042 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_043 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_044 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_045 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_046 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_047 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_048 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_049 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_050 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_051 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_052 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_053 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_054 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_055 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_056 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_057 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_058 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_059 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_060 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_061 BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE v_t_23 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_24 BIGINT UNSIGNED DEFAULT NULL;

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;

  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='B1' AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Level from Series 081 not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 from Series 081 not found.'; END IF;

  SELECT id INTO v_prior_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_prior_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081 Chapter not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prior_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081 Chapter must be validated before Series 082.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prior_chapter AND storyline_key='mia-sara-b1-decisions' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081 storyline orders 1-4 are required.'; END IF;

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 02 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Warum willst du das machen?' AND title_translation='چرا می خوای این کار رو انجام بدی؟';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 082 canonical Chapter title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 02 must be empty before Series 082 import.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;
  IF v_c_mia=v_c_sara THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Mia and Sara must be distinct Characters.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='warum' AND part_of_speech='adverb' AND translation='چرا' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: warum | adverb'; END IF;

  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: möchten | verb'; END IF;

  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;

  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: in | preposition'; END IF;

  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;

  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='andere' AND part_of_speech='adjective' AND translation='دیگر / متفاوت' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: andere | adjective'; END IF;

  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='Wohnung' AND part_of_speech='noun' AND translation='خانه / آپارتمان' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Wohnung | noun'; END IF;

  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='wohnen' AND part_of_speech='verb' AND translation='زندگی کردن / ساکن بودن' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wohnen | verb'; END IF;

  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;

  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='brauchen' AND part_of_speech='verb' AND translation='نیاز داشتن / لازم داشتن' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: brauchen | verb'; END IF;

  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='mehr' AND part_of_speech='adverb' AND translation='دیگه / بیشتر' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mehr | adverb'; END IF;

  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='Platz' AND part_of_speech='noun' AND translation='جا / فضا' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Platz','Platz','noun','جا / فضا',41,NULL,'[{"text":"Zeit","translation":"وقت"},{"text":"Straße","translation":"خیابان"},{"text":"Balkon","translation":"بالکن"},{"text":"Arbeit","translation":"کار"},{"text":"Wohnung","translation":"خانه"}]','Ich brauche mehr Platz.','به فضای بیشتری نیاز دارم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_012=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='arbeiten' AND part_of_speech='verb' AND translation='کار کردن' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: arbeiten | verb'; END IF;

  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='oft' AND part_of_speech='adverb' AND translation='اغلب' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'oft','oft','adverb','اغلب',41,NULL,'[{"text":"immer","translation":"همیشه"},{"text":"nie","translation":"هرگز"},{"text":"selten","translation":"به ندرت"},{"text":"heute","translation":"امروز"},{"text":"morgen","translation":"فردا"}]','Ich arbeite oft in der Wohnung.','اغلب در خانه کار می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_014=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;

  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;

  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='dort' AND part_of_speech='adverb' AND translation='آنجا' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dort | adverb'; END IF;

  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='genug' AND part_of_speech='adverb' AND translation='کافی' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'genug','genug','adverb','کافی',41,NULL,'[{"text":"mehr","translation":"بیشتر"},{"text":"wenig","translation":"کم"},{"text":"noch","translation":"هنوز"},{"text":"nicht","translation":"نه"},{"text":"oft","translation":"اغلب"}]','Hast du dort genug Platz?','آنجا فضای کافی داری؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nein | interjection'; END IF;

  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='mein' AND part_of_speech='determiner' AND translation='مال من / من' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mein | determiner'; END IF;

  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='Schreibtisch' AND part_of_speech='noun' AND translation='میز تحریر / میز کار' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Schreibtisch','Schreibtisch','noun','میز تحریر / میز کار',41,NULL,'[{"text":"Bett","translation":"تخت"},{"text":"Stuhl","translation":"صندلی"},{"text":"Balkon","translation":"بالکن"},{"text":"Straße","translation":"خیابان"},{"text":"Fenster","translation":"پنجره"}]','Nein, mein Schreibtisch steht im Schlafzimmer.','نه، میز کارم در اتاق خواب است.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_021=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='stehen' AND part_of_speech='verb' AND translation='قرار داشتن / ایستادن' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'stehen','stehen','verb','قرار داشتن / ایستادن',41,NULL,'[{"text":"sitzen","translation":"نشستن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"fahren","translation":"رفتن با وسیله"}]','Nein, mein Schreibtisch steht im Schlafzimmer.','نه، میز کارم در اتاق خواب است.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_022=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='Schlafzimmer' AND part_of_speech='noun' AND translation='اتاق خواب' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Schlafzimmer','Schlafzimmer','noun','اتاق خواب',41,NULL,'[{"text":"Arbeitszimmer","translation":"اتاق کار"},{"text":"Küche","translation":"آشپزخانه"},{"text":"Bad","translation":"حمام"},{"text":"Balkon","translation":"بالکن"},{"text":"Straße","translation":"خیابان"}]','Nein, mein Schreibtisch steht im Schlafzimmer.','نه، میز کارم در اتاق خواب است.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_023=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;

  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='stören' AND part_of_speech='verb' AND translation='مزاحم بودن / اذیت کردن' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'stören','stören','verb','مزاحم بودن / اذیت کردن',41,NULL,'[{"text":"helfen","translation":"کمک کردن"},{"text":"gefallen","translation":"خوش آمدن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"sprechen","translation":"صحبت کردن"}]','Was stört dich noch?','دیگه چی اذیتت می کنه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_025=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;

  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='Straße' AND part_of_speech='noun' AND translation='خیابان' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Straße','Straße','noun','خیابان',41,NULL,'[{"text":"Wohnung","translation":"خانه"},{"text":"Zimmer","translation":"اتاق"},{"text":"Balkon","translation":"بالکن"},{"text":"Bahnhof","translation":"ایستگاه قطار"},{"text":"Hotel","translation":"هتل"}]','Die Straße ist laut.','خیابان پرسروصدا است.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_027=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;

  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='laut' AND part_of_speech='adjective' AND translation='پر سر و صدا' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: laut | adjective'; END IF;

  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این / ضمیر خنثی' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: es | pronoun'; END IF;

  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='abends' AND part_of_speech='adverb' AND translation='عصرها / شب ها' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'abends','abends','adverb','عصرها / شب ها',41,NULL,'[{"text":"morgens","translation":"صبح ها"},{"text":"heute","translation":"امروز"},{"text":"morgen","translation":"فردا"},{"text":"oft","translation":"اغلب"},{"text":"nie","translation":"هرگز"}]','Ist es abends auch laut?','شب ها هم پرسروصدا است؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_031=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='auch' AND part_of_speech='adverb' AND translation='هم / همچنین' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'auch','auch','adverb','هم / همچنین',41,NULL,'[{"text":"nur","translation":"فقط"},{"text":"nicht","translation":"نه"},{"text":"noch","translation":"هنوز"},{"text":"immer","translation":"همیشه"},{"text":"nie","translation":"هرگز"}]','Ist es abends auch laut?','شب ها هم پرسروصدا است؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_032=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;

  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;

  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;

  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='schlecht' AND part_of_speech='adverb' AND translation='بد / به سختی' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schlecht','schlecht','adverb','بد / به سختی',41,NULL,'[{"text":"gut","translation":"خوب"},{"text":"gern","translation":"با علاقه"},{"text":"ruhig","translation":"آرام"},{"text":"laut","translation":"پرسروصدا"},{"text":"genug","translation":"کافی"}]','Ja, und ich kann schlecht schlafen.','آره، و به سختی می تونم بخوابم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_036=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='schlafen' AND part_of_speech='verb' AND translation='خوابیدن' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schlafen','schlafen','verb','خوابیدن',41,NULL,'[{"text":"arbeiten","translation":"کار کردن"},{"text":"sitzen","translation":"نشستن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"sprechen","translation":"صحبت کردن"},{"text":"fahren","translation":"رفتن با وسیله"}]','Ja, und ich kann schlecht schlafen.','آره، و به سختی می تونم بخوابم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_037=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='deshalb' AND part_of_speech='adverb' AND translation='برای همین / بنابراین' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'deshalb','deshalb','adverb','برای همین / بنابراین',41,NULL,'[{"text":"trotzdem","translation":"با این حال"},{"text":"vielleicht","translation":"شاید"},{"text":"morgen","translation":"فردا"},{"text":"dort","translation":"آنجا"},{"text":"noch","translation":"هنوز"}]','Möchtest du deshalb umziehen?','برای همین می خوای اسباب کشی کنی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_038=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='umziehen' AND part_of_speech='verb' AND translation='اسباب کشی کردن' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'umziehen','umziehen','verb','اسباب کشی کردن',41,NULL,'[{"text":"wohnen","translation":"ساکن بودن"},{"text":"bleiben","translation":"ماندن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"fahren","translation":"رفتن با وسیله"}]','Möchtest du deshalb umziehen?','برای همین می خوای اسباب کشی کنی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_039=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;

  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='wichtig' AND part_of_speech='adjective' AND translation='مهم' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wichtig','wichtig','adjective','مهم',41,NULL,'[{"text":"klein","translation":"کوچک"},{"text":"laut","translation":"پرسروصدا"},{"text":"ruhig","translation":"آرام"},{"text":"schlecht","translation":"بد"},{"text":"anders","translation":"متفاوت"}]','Ja, das ist ein wichtiger Grund.','آره، این یک دلیل مهمه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='Grund' AND part_of_speech='noun' AND translation='دلیل' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Grund','Grund','noun','دلیل',41,NULL,'[{"text":"Frage","translation":"سوال"},{"text":"Antwort","translation":"پاسخ"},{"text":"Wohnung","translation":"خانه"},{"text":"Zeit","translation":"زمان"},{"text":"Platz","translation":"فضا"}]','Ja, das ist ein wichtiger Grund.','آره، این یک دلیل مهمه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_042=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='sich wünschen' AND part_of_speech='verb' AND translation='آرزو داشتن / خواستن' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sich wünschen','sich wünschen','verb','آرزو داشتن / خواستن',42,NULL,'[{"text":"brauchen","translation":"نیاز داشتن"},{"text":"haben","translation":"داشتن"},{"text":"entscheiden","translation":"تصمیم گرفتن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"schlafen","translation":"خوابیدن"}]','Was wünschst du dir in der neuen Wohnung?','در خونه جدید چی می خوای؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_043=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='neu' AND part_of_speech='adjective' AND translation='جدید / تازه' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'neu','neu','adjective','جدید / تازه',42,'{"comparison":"neuer, am neuesten","type":"adjective"}','[{"text":"alt","translation":"قدیمی"},{"text":"laut","translation":"پرسروصدا"},{"text":"ruhig","translation":"آرام"},{"text":"klein","translation":"کوچک"},{"text":"wichtig","translation":"مهم"}]','Was wünschst du dir in der neuen Wohnung?','در خونه جدید چی می خوای؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_044=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='ruhig' AND part_of_speech='adjective' AND translation='آرام' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ruhig','ruhig','adjective','آرام',42,NULL,'[{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"anders","translation":"متفاوت"},{"text":"schlecht","translation":"بد"},{"text":"wichtig","translation":"مهم"}]','Ich wünsche mir ein ruhiges Arbeitszimmer.','یک اتاق کار آرام می خوام.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_045=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='Arbeitszimmer' AND part_of_speech='noun' AND translation='اتاق کار' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Arbeitszimmer','Arbeitszimmer','noun','اتاق کار',42,NULL,'[{"text":"Schlafzimmer","translation":"اتاق خواب"},{"text":"Balkon","translation":"بالکن"},{"text":"Straße","translation":"خیابان"},{"text":"Wohnung","translation":"خانه"},{"text":"Hotel","translation":"هتل"}]','Ich wünsche mir ein ruhiges Arbeitszimmer.','یک اتاق کار آرام می خوام.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_046=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='klein' AND part_of_speech='adjective' AND translation='کوچک' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'klein','klein','adjective','کوچک',42,NULL,'[{"text":"groß","translation":"بزرگ"},{"text":"laut","translation":"پرسروصدا"},{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"anders","translation":"متفاوت"}]','Ich möchte einen kleinen Balkon.','یک بالکن کوچک می خوام.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_047=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='Balkon' AND part_of_speech='noun' AND translation='بالکن' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Balkon','Balkon','noun','بالکن',42,NULL,'[{"text":"Straße","translation":"خیابان"},{"text":"Zimmer","translation":"اتاق"},{"text":"Wohnung","translation":"خانه"},{"text":"Hotel","translation":"هتل"},{"text":"Bahnhof","translation":"ایستگاه قطار"}]','Ich möchte einen kleinen Balkon.','یک بالکن کوچک می خوام.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_048=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='sitzen' AND part_of_speech='verb' AND translation='نشستن' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sitzen','sitzen','verb','نشستن',42,NULL,'[{"text":"stehen","translation":"ایستادن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"fahren","translation":"رفتن با وسیله"}]','Ich sitze gern draußen.','دوست دارم بیرون بشینم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_049=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='gern' AND part_of_speech='adverb' AND translation='با علاقه / با میل' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gern | adverb'; END IF;

  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='draußen' AND part_of_speech='adverb' AND translation='بیرون' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'draußen','draußen','adverb','بیرون',42,NULL,'[{"text":"drinnen","translation":"داخل"},{"text":"dort","translation":"آنجا"},{"text":"hier","translation":"اینجا"},{"text":"oben","translation":"بالا"},{"text":"unten","translation":"پایین"}]','Ich sitze gern draußen.','دوست دارم بیرون بشینم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_051=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='also' AND part_of_speech='adverb' AND translation='پس / بنابراین' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'also','also','adverb','پس / بنابراین',42,NULL,'[{"text":"aber","translation":"اما"},{"text":"oder","translation":"یا"},{"text":"noch","translation":"هنوز"},{"text":"vielleicht","translation":"شاید"},{"text":"dann","translation":"بعد"}]','Warum möchtest du also umziehen?','پس چرا می خوای اسباب کشی کنی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_052=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='Ruhe' AND part_of_speech='noun' AND translation='آرامش / سکوت' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ruhe','Ruhe','noun','آرامش / سکوت',42,NULL,'[{"text":"Lärm","translation":"سروصدا"},{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Ich brauche mehr Platz und mehr Ruhe.','به فضای بیشتر و آرامش بیشتری نیاز دارم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_053=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='geben' AND part_of_speech='verb' AND translation='دادن' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: geben | verb'; END IF;

  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='dein' AND part_of_speech='determiner' AND translation='مال تو / تو' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dein | determiner'; END IF;

  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'jetzt','jetzt','adverb','حالا / اکنون',42,NULL,'[{"text":"heute","translation":"امروز"},{"text":"morgen","translation":"فردا"},{"text":"später","translation":"بعدا"},{"text":"noch","translation":"هنوز"},{"text":"oft","translation":"اغلب"}]','Ja. Jetzt weiß ich, was mir wichtig ist.','آره. حالا می دونم چه چیزی برام مهمه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_056=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='wissen' AND part_of_speech='verb' AND translation='دانستن' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wissen','wissen','verb','دانستن',42,NULL,'[{"text":"fragen","translation":"پرسیدن"},{"text":"sagen","translation":"گفتن"},{"text":"sprechen","translation":"صحبت کردن"},{"text":"entscheiden","translation":"تصمیم گرفتن"},{"text":"brauchen","translation":"نیاز داشتن"}]','Ja. Jetzt weiß ich, was mir wichtig ist.','آره. حالا می دونم چه چیزی برام مهمه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_057=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='Warum möchtest du in einer anderen Wohnung wohnen?' AND part_of_speech='phrase' AND translation='چرا می خوای در یک خونه دیگه زندگی کنی؟' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Warum möchtest du in einer anderen Wohnung wohnen?','Warum möchtest du in einer anderen Wohnung wohnen?','phrase','چرا می خوای در یک خونه دیگه زندگی کنی؟',41,'{"type":"sentence_pattern"}','[{"text":"Wann möchtest du umziehen?","translation":"کی می خوای اسباب کشی کنی؟"},{"text":"Wo möchtest du wohnen?","translation":"کجا می خوای زندگی کنی؟"},{"text":"Möchtest du heute arbeiten?","translation":"امروز می خوای کار کنی؟"},{"text":"Hast du genug Zeit?","translation":"وقت کافی داری؟"},{"text":"Welche Wohnung ist frei?","translation":"کدوم خونه خالیه؟"}]','Warum möchtest du in einer anderen Wohnung wohnen?','چرا می خوای در یک خونه دیگه زندگی کنی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_058=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='Die Straße ist laut.' AND part_of_speech='phrase' AND translation='خیابان پرسروصدا است.' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Die Straße ist laut.','Die Straße ist laut.','phrase','خیابان پرسروصدا است.',41,'{"type":"sentence_pattern"}','[{"text":"Die Straße ist ruhig.","translation":"خیابان آرامه."},{"text":"Die Wohnung ist klein.","translation":"خونه کوچیکه."},{"text":"Das Zimmer ist frei.","translation":"اتاق خالیه."},{"text":"Der Balkon ist groß.","translation":"بالکن بزرگه."},{"text":"Das Hotel ist laut.","translation":"هتل پرسروصدا است."}]','Die Straße ist laut.','خیابان پرسروصدا است.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_059=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='Ich wünsche mir ein ruhiges Arbeitszimmer.' AND part_of_speech='phrase' AND translation='یک اتاق کار آرام می خوام.' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich wünsche mir ein ruhiges Arbeitszimmer.','Ich wünsche mir ein ruhiges Arbeitszimmer.','phrase','یک اتاق کار آرام می خوام.',42,'{"type":"sentence_pattern"}','[{"text":"Ich wünsche mir einen Balkon.","translation":"یک بالکن می خوام."},{"text":"Ich brauche mehr Platz.","translation":"به فضای بیشتری نیاز دارم."},{"text":"Ich arbeite im Schlafzimmer.","translation":"در اتاق خواب کار می کنم."},{"text":"Ich schlafe schlecht.","translation":"بد می خوابم."},{"text":"Ich wohne in dieser Wohnung.","translation":"در این خونه زندگی می کنم."}]','Ich wünsche mir ein ruhiges Arbeitszimmer.','یک اتاق کار آرام می خوام.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_060=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='Ich brauche mehr Platz und mehr Ruhe.' AND part_of_speech='phrase' AND translation='به فضای بیشتر و آرامش بیشتری نیاز دارم.' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich brauche mehr Platz und mehr Ruhe.','Ich brauche mehr Platz und mehr Ruhe.','phrase','به فضای بیشتر و آرامش بیشتری نیاز دارم.',42,'{"type":"sentence_pattern"}','[{"text":"Ich brauche nur mehr Platz.","translation":"فقط به فضای بیشتری نیاز دارم."},{"text":"Ich wünsche mir einen Balkon.","translation":"یک بالکن می خوام."},{"text":"Die Straße ist zu laut.","translation":"خیابان بیش از حد پرسروصدا است."},{"text":"Ich kann schlecht schlafen.","translation":"به سختی می تونم بخوابم."},{"text":"Ich möchte dort arbeiten.","translation":"می خوام اونجا کار کنم."}]','Ich brauche mehr Platz und mehr Ruhe.','به فضای بیشتر و آرامش بیشتری نیاز دارم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_061=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Mehr Platz','فضای بیشتر','Sara fragt nach Mias erstem Grund. Mia erklärt, dass sie zu wenig Platz zum Arbeiten hat.','سارا درباره اولین دلیل میا می پرسد. میا توضیح می دهد که برای کار کردن فضای کافی ندارد.','story','mia-sara-b1-decisions',5,41,150,1,'validated','{"relationship":"friends","context":"reasons-for-moving","cefr":"B1","storyArc":"reasons-space-noise-wishes-summary"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Warum möchtest du in einer anderen Wohnung wohnen?','چرا می خوای در یک خونه دیگه زندگی کنی؟',41,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_2sg","lemma":"möchten","meaning":"می خوای","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"form":"dative_feminine","lemma":"ein","meaning":"یک","partOfSpeech":"article","surface":"einer","translation":"یک / حرف تعریف نامعین"},{"form":"dative_feminine","lemma":"andere","meaning":"دیگه","partOfSpeech":"adjective","surface":"anderen","translation":"دیگر / متفاوت"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"lemma":"wohnen","partOfSpeech":"verb","suffix":"?","surface":"wohnen","translation":"زندگی کردن / ساکن بودن"}]','چرا؟','با warum دلیل یک تصمیم را می پرسیم.','{"position":1,"questionWord":"warum"}','{"cefr":"B1"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ich brauche mehr Platz.','به فضای بیشتری نیاز دارم.',41,NULL,NULL,'ich brauche mehr platz',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"brauchen","partOfSpeech":"verb","surface":"brauche","translation":"نیاز داشتن / لازم داشتن"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Platz","partOfSpeech":"noun","suffix":".","surface":"Platz","translation":"جا / فضا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Warum brauchst du mehr Platz?','چرا به فضای بیشتری نیاز داری؟',41,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_2sg","lemma":"brauchen","partOfSpeech":"verb","surface":"brauchst","translation":"نیاز داشتن / لازم داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Platz","partOfSpeech":"noun","suffix":"?","surface":"Platz","translation":"جا / فضا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Ich arbeite oft in der Wohnung.','اغلب در خانه کار می کنم.',41,NULL,NULL,'ich arbeite oft in der wohnung',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"arbeiten","partOfSpeech":"verb","surface":"arbeite","translation":"کار کردن"},{"lemma":"oft","partOfSpeech":"adverb","surface":"oft","translation":"اغلب"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"form":"dative_feminine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Wohnung","partOfSpeech":"noun","suffix":".","surface":"Wohnung","translation":"خانه / آپارتمان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,5,'character','Hast du dort genug Platz?','آنجا فضای کافی داری؟',41,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"dort","partOfSpeech":"adverb","surface":"dort","translation":"آنجا"},{"lemma":"genug","partOfSpeech":"adverb","surface":"genug","translation":"کافی"},{"lemma":"Platz","partOfSpeech":"noun","suffix":"?","surface":"Platz","translation":"جا / فضا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,6,'learner','Nein, mein Schreibtisch steht im Schlafzimmer.','نه، میز کارم در اتاق خواب است.',41,NULL,NULL,'nein mein schreibtisch steht im schlafzimmer',NULL,'[{"lemma":"nein","partOfSpeech":"interjection","suffix":",","surface":"Nein","translation":"نه"},{"lemma":"mein","partOfSpeech":"determiner","surface":"mein","translation":"مال من / من"},{"lemma":"Schreibtisch","partOfSpeech":"noun","surface":"Schreibtisch","translation":"میز تحریر / میز کار"},{"form":"present_3sg","lemma":"stehen","partOfSpeech":"verb","surface":"steht","translation":"قرار داشتن / ایستادن"},{"form":"dative_neuter","lemma":"in","meaning":"در","partOfSpeech":"preposition","surface":"im","translation":"در / داخل"},{"lemma":"Schlafzimmer","partOfSpeech":"noun","suffix":".","surface":"Schlafzimmer","translation":"اتاق خواب"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_6=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Die laute Straße','خیابان پرسروصدا','Mia nennt den Lärm als zweiten Grund und verbindet ihn mit ihrem schlechten Schlaf.','میا سروصدا را دلیل دوم می داند و آن را به خواب بدش ربط می دهد.','story','mia-sara-b1-decisions',6,41,150,2,'validated','{"relationship":"friends","context":"reasons-for-moving","cefr":"B1","storyArc":"reasons-space-noise-wishes-summary"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,1,'character','Was stört dich noch?','دیگه چی اذیتت می کنه؟',41,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_3sg","lemma":"stören","partOfSpeech":"verb","surface":"stört","translation":"مزاحم بودن / اذیت کردن"},{"form":"accusative_2sg","lemma":"du","meaning":"تو را","partOfSpeech":"pronoun","surface":"dich","translation":"تو"},{"lemma":"noch","partOfSpeech":"adverb","suffix":"?","surface":"noch","translation":"هنوز"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Die Straße ist laut.','خیابان پرسروصدا است.',41,NULL,NULL,'die straße ist laut',NULL,'[{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"Die","translation":"حرف تعریف"},{"lemma":"Straße","partOfSpeech":"noun","surface":"Straße","translation":"خیابان"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"laut","partOfSpeech":"adjective","suffix":".","surface":"laut","translation":"پر سر و صدا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,3,'character','Ist es abends auch laut?','شب ها هم پرسروصدا است؟',41,NULL,NULL,NULL,NULL,'[{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"Ist","translation":"بودن"},{"lemma":"es","partOfSpeech":"pronoun","surface":"es","translation":"آن / این / ضمیر خنثی"},{"lemma":"abends","partOfSpeech":"adverb","surface":"abends","translation":"عصرها / شب ها"},{"lemma":"auch","partOfSpeech":"adverb","surface":"auch","translation":"هم / همچنین"},{"lemma":"laut","partOfSpeech":"adjective","suffix":"?","surface":"laut","translation":"پر سر و صدا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Ja, und ich kann schlecht schlafen.','آره، و به سختی می تونم بخوابم.',41,NULL,NULL,'ja und ich kann schlecht schlafen',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"können","meaning":"می تونم","partOfSpeech":"verb","surface":"kann","translation":"توانستن / بتوان"},{"lemma":"schlecht","partOfSpeech":"adverb","surface":"schlecht","translation":"بد / به سختی"},{"lemma":"schlafen","partOfSpeech":"verb","suffix":".","surface":"schlafen","translation":"خوابیدن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,5,'character','Möchtest du deshalb umziehen?','برای همین می خوای اسباب کشی کنی؟',41,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"möchten","meaning":"می خوای","partOfSpeech":"verb","surface":"Möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"deshalb","partOfSpeech":"adverb","surface":"deshalb","translation":"برای همین / بنابراین"},{"lemma":"umziehen","partOfSpeech":"verb","suffix":"?","surface":"umziehen","translation":"اسباب کشی کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,6,'learner','Ja, das ist ein wichtiger Grund.','آره، این یک دلیل مهمه.',41,NULL,NULL,'ja das ist ein wichtiger grund',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"ein","partOfSpeech":"article","surface":"ein","translation":"یک / حرف تعریف نامعین"},{"form":"nominative_masculine","lemma":"wichtig","partOfSpeech":"adjective","surface":"wichtiger","translation":"مهم"},{"lemma":"Grund","partOfSpeech":"noun","suffix":".","surface":"Grund","translation":"دلیل"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Ein ruhiges Arbeitszimmer','یک اتاق کار آرام','Sara fragt nach Mias Wünschen. Mia beschreibt ein Arbeitszimmer und einen Balkon.','سارا درباره خواسته های میا می پرسد. میا یک اتاق کار و یک بالکن را توصیف می کند.','story','mia-sara-b1-decisions',7,42,150,3,'validated','{"relationship":"friends","context":"reasons-for-moving","cefr":"B1","storyArc":"reasons-space-noise-wishes-summary"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,1,'character','Was wünschst du dir in der neuen Wohnung?','در خونه جدید چی می خوای؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_2sg","lemma":"sich wünschen","meaning":"می خوای","partOfSpeech":"verb","surface":"wünschst","translation":"آرزو داشتن / خواستن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"reflexive_dative_2sg","lemma":"du","meaning":"برای خودت","partOfSpeech":"pronoun","surface":"dir","translation":"تو"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"form":"dative_feminine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"form":"dative_feminine","lemma":"neu","meaning":"جدید","partOfSpeech":"adjective","surface":"neuen","translation":"جدید / تازه"},{"lemma":"Wohnung","partOfSpeech":"noun","suffix":"?","surface":"Wohnung","translation":"خانه / آپارتمان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ich wünsche mir ein ruhiges Arbeitszimmer.','یک اتاق کار آرام می خوام.',42,NULL,NULL,'ich wünsche mir ein ruhiges arbeitszimmer',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"sich wünschen","meaning":"می خوام","partOfSpeech":"verb","surface":"wünsche","translation":"آرزو داشتن / خواستن"},{"form":"reflexive_dative_1sg","lemma":"ich","meaning":"برای خودم","partOfSpeech":"pronoun","surface":"mir","translation":"من"},{"lemma":"ein","partOfSpeech":"article","surface":"ein","translation":"یک / حرف تعریف نامعین"},{"form":"accusative_neuter","lemma":"ruhig","partOfSpeech":"adjective","surface":"ruhiges","translation":"آرام"},{"lemma":"Arbeitszimmer","partOfSpeech":"noun","suffix":".","surface":"Arbeitszimmer","translation":"اتاق کار"}]','sich etwas wünschen','برای بیان خواسته می گوییم: Ich wünsche mir ...','{"pattern":"ich + wünsche + mir + object"}','{"cefr":"B1"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,3,'character','Und was noch?','و دیگه چی؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"und","partOfSpeech":"conjunction","surface":"Und","translation":"و"},{"lemma":"was","partOfSpeech":"pronoun","surface":"was","translation":"چی / چه"},{"lemma":"noch","partOfSpeech":"adverb","suffix":"?","surface":"noch","translation":"هنوز"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Ich möchte einen kleinen Balkon.','یک بالکن کوچک می خوام.',42,NULL,NULL,'ich möchte einen kleinen balkon',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"form":"accusative_masculine","lemma":"ein","partOfSpeech":"article","surface":"einen","translation":"یک / حرف تعریف نامعین"},{"form":"accusative_masculine","lemma":"klein","partOfSpeech":"adjective","surface":"kleinen","translation":"کوچک"},{"lemma":"Balkon","partOfSpeech":"noun","suffix":".","surface":"Balkon","translation":"بالکن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,5,'character','Warum ist dir ein Balkon wichtig?','چرا بالکن برات مهمه؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"form":"dative_2sg","lemma":"du","meaning":"برای تو","partOfSpeech":"pronoun","surface":"dir","translation":"تو"},{"lemma":"ein","partOfSpeech":"article","surface":"ein","translation":"یک / حرف تعریف نامعین"},{"lemma":"Balkon","partOfSpeech":"noun","surface":"Balkon","translation":"بالکن"},{"lemma":"wichtig","partOfSpeech":"adjective","suffix":"?","surface":"wichtig","translation":"مهم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,6,'learner','Ich sitze gern draußen.','دوست دارم بیرون بشینم.',42,NULL,NULL,'ich sitze gern draußen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"sitzen","partOfSpeech":"verb","surface":"sitze","translation":"نشستن"},{"lemma":"gern","partOfSpeech":"adverb","surface":"gern","translation":"با علاقه / با میل"},{"lemma":"draußen","partOfSpeech":"adverb","suffix":".","surface":"draußen","translation":"بیرون"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Meine wichtigsten Gründe','مهم ترین دلیل های من','Mia fasst ihre Gründe zusammen und versteht klarer, was ihr wichtig ist.','میا دلیل هایش را جمع بندی می کند و بهتر می فهمد چه چیزی برایش مهم است.','story','mia-sara-b1-decisions',8,42,150,4,'validated','{"relationship":"friends","context":"reasons-for-moving","cefr":"B1","storyArc":"reasons-space-noise-wishes-summary"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,1,'character','Warum möchtest du also umziehen?','پس چرا می خوای اسباب کشی کنی؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"also","partOfSpeech":"adverb","surface":"also","translation":"پس / بنابراین"},{"lemma":"umziehen","partOfSpeech":"verb","suffix":"?","surface":"umziehen","translation":"اسباب کشی کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Ich brauche mehr Platz und mehr Ruhe.','به فضای بیشتر و آرامش بیشتری نیاز دارم.',42,NULL,NULL,'ich brauche mehr platz und mehr ruhe',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"brauchen","partOfSpeech":"verb","surface":"brauche","translation":"نیاز داشتن / لازم داشتن"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Platz","partOfSpeech":"noun","surface":"Platz","translation":"جا / فضا"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Ruhe","partOfSpeech":"noun","suffix":".","surface":"Ruhe","translation":"آرامش / سکوت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,3,'character','Gibt es noch einen Grund?','دلیل دیگه ای هم هست؟',42,NULL,NULL,NULL,NULL,'[{"form":"present_3sg","lemma":"geben","partOfSpeech":"verb","surface":"Gibt","translation":"دادن"},{"lemma":"es","partOfSpeech":"pronoun","surface":"es","translation":"آن / این / ضمیر خنثی"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"form":"accusative_masculine","lemma":"ein","partOfSpeech":"article","surface":"einen","translation":"یک / حرف تعریف نامعین"},{"lemma":"Grund","partOfSpeech":"noun","suffix":"?","surface":"Grund","translation":"دلیل"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Ja, ich möchte einen Balkon.','آره، یک بالکن می خوام.',42,NULL,NULL,'ja ich möchte einen balkon',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"form":"accusative_masculine","lemma":"ein","partOfSpeech":"article","surface":"einen","translation":"یک / حرف تعریف نامعین"},{"lemma":"Balkon","partOfSpeech":"noun","suffix":".","surface":"Balkon","translation":"بالکن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,5,'character','Sind das deine wichtigsten Gründe?','این ها مهم ترین دلیل هات هستند؟',42,NULL,NULL,NULL,NULL,'[{"form":"present_3pl","lemma":"sein","partOfSpeech":"verb","surface":"Sind","translation":"بودن"},{"lemma":"das","meaning":"این ها","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"form":"nominative_plural","lemma":"dein","meaning":"مال تو","partOfSpeech":"determiner","surface":"deine","translation":"مال تو / تو"},{"form":"superlative_plural","lemma":"wichtig","partOfSpeech":"adjective","surface":"wichtigsten","translation":"مهم"},{"form":"plural","lemma":"Grund","partOfSpeech":"noun","suffix":"?","surface":"Gründe","translation":"دلیل"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Ja. Jetzt weiß ich, was mir wichtig ist.','آره. حالا می دونم چه چیزی برام مهمه.',42,NULL,NULL,'ja jetzt weiß ich was mir wichtig ist',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":".","surface":"Ja","translation":"بله / آره"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"Jetzt","translation":"حالا / اکنون"},{"form":"present_1sg","lemma":"wissen","partOfSpeech":"verb","surface":"weiß","translation":"دانستن"},{"lemma":"ich","partOfSpeech":"pronoun","suffix":",","surface":"ich","translation":"من"},{"lemma":"was","partOfSpeech":"pronoun","surface":"was","translation":"چی / چه"},{"form":"dative_1sg","lemma":"ich","meaning":"برای من","partOfSpeech":"pronoun","surface":"mir","translation":"من"},{"lemma":"wichtig","partOfSpeech":"adjective","surface":"wichtig","translation":"مهم"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","suffix":".","surface":"ist","translation":"بودن"}]','was-Satz','was یک جمله وابسته را شروع می کند و فعل صرف شده در پایان می آید.','{"connector":"was","verbPosition":"final"}','{"cefr":"B1"}');
  SET v_t_24=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'new',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_021,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_022,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_023,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_058,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_025,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_027,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_028,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_029,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_032,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_033,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_036,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_037,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_039,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_040,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_042,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_059,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_024,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_043,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_005,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_045,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_046,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_047,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_048,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_041,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_049,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_051,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_060,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_052,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_053,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_042,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_033,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_028,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_040,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_041,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_056,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_057,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_061,'new',1,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_058,'عبارت کلیدی درس',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_012,'واژه کلیدی درس',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به پرسش سارا گوش کن',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ میا را با صدای بلند بگو',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به پرسش بعدی گوش کن',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'دلیل را با صدای بلند بگو',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_012,'معنی واژه کلیدی را انتخاب کن',NULL,41,'{"mode":"word_translation","question":"Platz در این درس چه معنی دارد؟","choices":["جا / فضا","فضای بیشتر","زمان"],"correctIndex":0}','{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,41,'{"source":"lesson_story","question":"چرا میا به فضای بیشتری نیاز دارد؟","choices":["چون در خانه کار می کند.","چون یک هتل می خواهد.","چون فردا سفر می کند."],"correctIndex":0}','{"cefr":"B1","series":82}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_059,'عبارت کلیدی درس',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_025,'واژه کلیدی درس',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به پرسش سارا گوش کن',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ میا را با صدای بلند بگو',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به پرسش بعدی گوش کن',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'دلیل را با صدای بلند بگو',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_025,'معنی واژه کلیدی را انتخاب کن',NULL,41,'{"mode":"word_translation","question":"stört در این درس چه معنی دارد؟","choices":["مزاحم بودن / اذیت کردن","خیابان پرسروصدا","زمان"],"correctIndex":0}','{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,41,'{"source":"lesson_story","question":"شب ها چه چیزی برای میا مشکل ایجاد می کند؟","choices":["صدای خیابان","اندازه بالکن","میز کار"],"correctIndex":0}','{"cefr":"B1","series":82}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_060,'عبارت کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_043,'واژه کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به پرسش سارا گوش کن',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ میا را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به پرسش بعدی گوش کن',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'دلیل را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_043,'معنی واژه کلیدی را انتخاب کن',NULL,42,'{"mode":"word_translation","question":"wünschst در این درس چه معنی دارد؟","choices":["آرزو داشتن / خواستن","یک اتاق کار آرام","زمان"],"correctIndex":0}','{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,42,'{"source":"lesson_story","question":"میا در خانه جدید چه اتاقی می خواهد؟","choices":["یک اتاق کار آرام","یک اتاق خواب بزرگ","یک آشپزخانه کوچک"],"correctIndex":0}','{"cefr":"B1","series":82}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_061,'عبارت کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_042,'واژه کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به پرسش سارا گوش کن',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ میا را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به پرسش بعدی گوش کن',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'دلیل را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_042,'معنی واژه کلیدی را انتخاب کن',NULL,42,'{"mode":"word_translation","question":"Grund در این درس چه معنی دارد؟","choices":["دلیل","مهم ترین دلیل های من","زمان"],"correctIndex":0}','{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,42,'{"source":"lesson_story","question":"دو دلیل اصلی میا برای اسباب کشی چیست؟","choices":["فضای بیشتر و آرامش بیشتر","کار کمتر و سفر بیشتر","هتل و ایستگاه قطار"],"correctIndex":0}','{"cefr":"B1","series":82}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 082 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mia-sara-b1-decisions' AND storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 082 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 082 turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 082 activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 082 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (
    SELECT lw.lesson_id,lw.word_id,COUNT(*) AS n
    FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id
    WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1
  ) duplicate_pairs;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple detected.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_082_v9();
DROP PROCEDURE IF EXISTS import_nova_series_082_v9;
-- END SERIES 082

-- BEGIN SERIES 083
-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 083
-- B1 > Entscheidungen & Gründe > Weil ich etwas ändern möchte
-- Requires canonical Nova v9.0 and QA-passed staged Series 081-082.
-- Uses the unchanged Nova v9.0 schema; contains no schema DDL.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_083_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_083_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_001 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_002 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_003 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_004 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_005 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_006 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_007 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_008 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_009 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_010 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_011 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_012 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_013 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_014 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_015 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_016 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_017 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_018 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_019 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_020 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_021 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_022 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_023 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_024 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_025 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_026 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_027 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_028 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_029 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_030 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_031 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_032 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_033 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_034 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_035 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_036 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_037 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_038 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_039 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_040 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_041 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_042 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_043 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_044 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_045 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_046 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_047 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_048 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_049 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_050 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_051 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_052 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_053 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_054 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_055 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_056 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_057 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_058 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_059 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_060 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_061 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_062 BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE v_t_23 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_24 BIGINT UNSIGNED DEFAULT NULL;

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='B1' AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Level from Series 081 not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 from Series 081 not found.'; END IF;

  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND sort_order IN (1,2) AND status IN ('validated','complete');
  IF v_count<>2 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081-082 Chapters must be validated before Series 083.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id
  WHERE c.module_id=v_module AND c.sort_order IN (1,2) AND l.storyline_key='mia-sara-b1-decisions' AND l.storyline_order BETWEEN 1 AND 8;
  IF v_count<>8 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081-082 storyline orders 1-8 are required.'; END IF;

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 03 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Weil ich etwas ändern möchte' AND title_translation='چون می خوام یه چیزی رو تغییر بدم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 083 canonical Chapter title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 03 must be empty before Series 083 import.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;
  IF v_c_mia=v_c_sara THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Mia and Sara must be distinct Characters.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;

  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;

  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='Grund' AND part_of_speech='noun' AND translation='دلیل' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Grund | noun'; END IF;

  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='nennen' AND part_of_speech='verb' AND translation='نام بردن / گفتن' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nennen','nennen','verb','نام بردن / گفتن',42,'{"participle":"genannt","type":"irregular_verb"}','[{"text":"fragen","translation":"پرسیدن"},{"text":"hören","translation":"شنیدن"},{"text":"suchen","translation":"جست و جو کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"}]','Du hast Gründe genannt.','دلیل هات رو گفتی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_004=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;

  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;

  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: möchten | verb'; END IF;

  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='etwas' AND part_of_speech='pronoun' AND translation='چیزی / یک چیزی' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: etwas | pronoun'; END IF;

  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='ändern' AND part_of_speech='verb' AND translation='تغییر دادن' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ändern','ändern','verb','تغییر دادن',42,'{"type":"regular_verb"}','[{"text":"bleiben","translation":"ماندن"},{"text":"suchen","translation":"جست و جو کردن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"}]','Ja, ich möchte etwas ändern.','آره، می خوام یه چیزی رو تغییر بدم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;

  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='genau' AND part_of_speech='adverb' AND translation='دقیقا' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'genau','genau','adverb','دقیقا',42,NULL,'[{"text":"vielleicht","translation":"شاید"},{"text":"später","translation":"بعدا"},{"text":"ungefähr","translation":"تقریبا"},{"text":"noch","translation":"هنوز"},{"text":"oft","translation":"اغلب"}]','Was möchtest du genau ändern?','دقیقا چی رو می خوای تغییر بدی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='Arbeit' AND part_of_speech='noun' AND translation='کار' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Arbeit','Arbeit','noun','کار',42,'{"gender":"feminine","plural":"Arbeiten"}','[{"text":"Ruhe","translation":"آرامش"},{"text":"Wohnung","translation":"خانه"},{"text":"Straße","translation":"خیابان"},{"text":"Schlaf","translation":"خواب"},{"text":"Platz","translation":"فضا"}]','Ich möchte Arbeit und Schlaf trennen.','می خوام کار و خواب رو از هم جدا کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_012=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;

  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='Schlaf' AND part_of_speech='noun' AND translation='خواب' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Schlaf','Schlaf','noun','خواب',42,'{"gender":"masculine","plural":null}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Ich möchte Arbeit und Schlaf trennen.','می خوام کار و خواب رو از هم جدا کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_014=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='trennen' AND part_of_speech='verb' AND translation='جدا کردن' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'trennen','trennen','verb','جدا کردن',42,'{"type":"regular_verb"}','[{"text":"verbinden","translation":"وصل کردن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"}]','Ich möchte Arbeit und Schlaf trennen.','می خوام کار و خواب رو از هم جدا کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='warum' AND part_of_speech='adverb' AND translation='چرا' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: warum | adverb'; END IF;

  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;

  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;

  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='wichtig' AND part_of_speech='adjective' AND translation='مهم' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wichtig | adjective'; END IF;

  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='weil' AND part_of_speech='conjunction' AND translation='چون / زیرا' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'weil','weil','conjunction','چون / زیرا',42,'{"type":"subordinating_conjunction","verbPosition":"final"}','[{"text":"denn","translation":"چون"},{"text":"aber","translation":"اما"},{"text":"oder","translation":"یا"},{"text":"deshalb","translation":"بنابراین"},{"text":"und","translation":"و"}]','Weil ich oft in der Wohnung arbeite.','چون اغلب در خانه کار می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_020=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='oft' AND part_of_speech='adverb' AND translation='اغلب' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: oft | adverb'; END IF;

  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: in | preposition'; END IF;

  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;

  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='Wohnung' AND part_of_speech='noun' AND translation='خانه / آپارتمان' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Wohnung | noun'; END IF;

  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='arbeiten' AND part_of_speech='verb' AND translation='کار کردن' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: arbeiten | verb'; END IF;

  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='Alltag' AND part_of_speech='noun' AND translation='زندگی روزمره' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Alltag','Alltag','noun','زندگی روزمره',42,'{"gender":"masculine","plural":"Alltage"}','[{"text":"Arbeit","translation":"کار"},{"text":"Urlaub","translation":"تعطیلات"},{"text":"Wohnung","translation":"خانه"},{"text":"Woche","translation":"هفته"},{"text":"Straße","translation":"خیابان"}]','Was möchtest du im Alltag ändern?','در زندگی روزمره ات چی رو می خوای تغییر بدی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_026=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='abends' AND part_of_speech='adverb' AND translation='عصرها / شب ها' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: abends | adverb'; END IF;

  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='mehr' AND part_of_speech='adverb' AND translation='دیگه / بیشتر' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mehr | adverb'; END IF;

  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='Ruhe' AND part_of_speech='noun' AND translation='آرامش / سکوت' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Ruhe | noun'; END IF;

  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='brauchen' AND part_of_speech='verb' AND translation='نیاز داشتن / لازم داشتن' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: brauchen | verb'; END IF;

  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;

  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='besser' AND part_of_speech='adverb' AND translation='بهتر' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'besser','besser','adverb','بهتر',42,'{"base":"gut","type":"comparative_adverb"}','[{"text":"schlechter","translation":"بدتر"},{"text":"gleich","translation":"یکسان"},{"text":"langsam","translation":"آهسته"},{"text":"später","translation":"بعدا"},{"text":"oft","translation":"اغلب"}]','Weil ich dann besser schlafen kann.','چون اون وقت می تونم بهتر بخوابم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_032=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='schlafen' AND part_of_speech='verb' AND translation='خوابیدن' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schlafen | verb'; END IF;

  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;

  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='laut' AND part_of_speech='adjective' AND translation='پر سر و صدا' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: laut | adjective'; END IF;

  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='Straße' AND part_of_speech='noun' AND translation='خیابان' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Straße | noun'; END IF;

  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='deshalb' AND part_of_speech='adverb' AND translation='برای همین / بنابراین' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: deshalb | adverb'; END IF;

  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='umziehen' AND part_of_speech='verb' AND translation='اسباب کشی کردن' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: umziehen | verb'; END IF;

  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wie | adverb'; END IF;

  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='dein' AND part_of_speech='determiner' AND translation='مال تو / تو' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dein | determiner'; END IF;

  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='organisieren' AND part_of_speech='verb' AND translation='برنامه ریزی کردن / سامان دادن' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'organisieren','organisieren','verb','برنامه ریزی کردن / سامان دادن',42,'{"type":"regular_verb"}','[{"text":"vergessen","translation":"فراموش کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"warten","translation":"منتظر ماندن"},{"text":"fahren","translation":"رفتن با وسیله"},{"text":"wohnen","translation":"ساکن بودن"}]','Wie möchtest du deine Arbeit organisieren?','می خوای کارت رو چطور برنامه ریزی کنی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;

  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='Arbeitszimmer' AND part_of_speech='noun' AND translation='اتاق کار' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Arbeitszimmer | noun'; END IF;

  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nicht | particle'; END IF;

  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='Schlafzimmer' AND part_of_speech='noun' AND translation='اتاق خواب' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Schlafzimmer | noun'; END IF;

  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='sich' AND part_of_speech='pronoun' AND translation='خود / خودش' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sich','sich','pronoun','خود / خودش',42,'{"type":"reflexive_pronoun"}','[{"text":"mich","translation":"خودم"},{"text":"dich","translation":"خودت"},{"text":"uns","translation":"خودمان"},{"text":"euch","translation":"خودتان"},{"text":"ihn","translation":"او را"}]','Was ändert sich dadurch?','در نتیجه چی تغییر می کنه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_046=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='dadurch' AND part_of_speech='adverb' AND translation='از این طریق / در نتیجه' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'dadurch','dadurch','adverb','از این طریق / در نتیجه',42,NULL,'[{"text":"trotzdem","translation":"با این حال"},{"text":"vielleicht","translation":"شاید"},{"text":"danach","translation":"بعد از آن"},{"text":"deshalb","translation":"بنابراین"},{"text":"dort","translation":"آنجا"}]','Was ändert sich dadurch?','در نتیجه چی تغییر می کنه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_047=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='sich konzentrieren' AND part_of_speech='verb' AND translation='تمرکز کردن' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sich konzentrieren','sich konzentrieren','verb','تمرکز کردن',42,'{"case":"accusative","type":"reflexive_verb"}','[{"text":"sich entscheiden","translation":"تصمیم گرفتن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"sprechen","translation":"صحبت کردن"},{"text":"warten","translation":"منتظر ماندن"}]','Dann kann ich mich besser konzentrieren.','اون وقت می تونم بهتر تمرکز کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_048=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='zuerst' AND part_of_speech='adverb' AND translation='اول / ابتدا' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zuerst | adverb'; END IF;

  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='suchen' AND part_of_speech='verb' AND translation='جست و جو کردن' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'suchen','suchen','verb','جست و جو کردن',42,'{"type":"regular_verb"}','[{"text":"finden","translation":"پیدا کردن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"arbeiten","translation":"کار کردن"}]','Zuerst suche ich eine ruhigere Wohnung.','اول دنبال یک خونه آروم تر می گردم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_050=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='ruhig' AND part_of_speech='adjective' AND translation='آرام' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ruhig | adjective'; END IF;

  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='passen' AND part_of_speech='verb' AND translation='اندازه بودن / مناسب بودن' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: passen | verb'; END IF;

  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='zu' AND part_of_speech='preposition' AND translation='به / به سمت' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zu | preposition'; END IF;

  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='dort' AND part_of_speech='adverb' AND translation='آنجا' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dort | adverb'; END IF;

  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='Platz' AND part_of_speech='noun' AND translation='جا / فضا' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Platz | noun'; END IF;

  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='wissen' AND part_of_speech='verb' AND translation='دانستن' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wissen | verb'; END IF;

  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;

  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='mein' AND part_of_speech='determiner' AND translation='مال من / من' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mein | determiner'; END IF;

  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='Ich möchte etwas ändern.' AND part_of_speech='phrase' AND translation='می خوام یه چیزی رو تغییر بدم.' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich möchte etwas ändern.','Ich möchte etwas ändern.','phrase','می خوام یه چیزی رو تغییر بدم.',42,'{"type":"sentence_pattern"}','[{"text":"Ich möchte nichts ändern.","translation":"نمی خوام چیزی رو تغییر بدم."},{"text":"Ich möchte nur schlafen.","translation":"فقط می خوام بخوابم."},{"text":"Ich brauche mehr Zeit.","translation":"به زمان بیشتری نیاز دارم."},{"text":"Ich suche eine Wohnung.","translation":"دنبال یک خونه می گردم."},{"text":"Ich arbeite heute.","translation":"امروز کار می کنم."}]','Ich möchte etwas ändern.','می خوام یه چیزی رو تغییر بدم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_059=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='Weil ich dann besser schlafen kann.' AND part_of_speech='phrase' AND translation='چون اون وقت می تونم بهتر بخوابم.' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Weil ich dann besser schlafen kann.','Weil ich dann besser schlafen kann.','phrase','چون اون وقت می تونم بهتر بخوابم.',42,'{"type":"sentence_pattern"}','[{"text":"Weil ich dann länger arbeiten kann.","translation":"چون اون وقت می تونم بیشتر کار کنم."},{"text":"Weil ich heute keine Zeit habe.","translation":"چون امروز وقت ندارم."},{"text":"Deshalb schlafe ich schlecht.","translation":"برای همین بد می خوابم."},{"text":"Ich möchte abends arbeiten.","translation":"می خوام شب ها کار کنم."},{"text":"Die Straße ist sehr laut.","translation":"خیابون خیلی پرسروصدا است."}]','Weil ich dann besser schlafen kann.','چون اون وقت می تونم بهتر بخوابم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_060=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='Weil ich Arbeit und Schlaf trennen möchte.' AND part_of_speech='phrase' AND translation='چون می خوام کار و خواب رو از هم جدا کنم.' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Weil ich Arbeit und Schlaf trennen möchte.','Weil ich Arbeit und Schlaf trennen möchte.','phrase','چون می خوام کار و خواب رو از هم جدا کنم.',42,'{"type":"sentence_pattern"}','[{"text":"Weil ich im Schlafzimmer arbeiten möchte.","translation":"چون می خوام در اتاق خواب کار کنم."},{"text":"Weil ich mehr Platz brauche.","translation":"چون به فضای بیشتری نیاز دارم."},{"text":"Ich möchte heute nicht arbeiten.","translation":"امروز نمی خوام کار کنم."},{"text":"Arbeit und Schlaf sind wichtig.","translation":"کار و خواب مهم هستند."},{"text":"Ich organisiere meinen Alltag.","translation":"زندگی روزمره ام رو برنامه ریزی می کنم."}]','Weil ich Arbeit und Schlaf trennen möchte.','چون می خوام کار و خواب رو از هم جدا کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_061=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='Weil ich dort mehr Platz und Ruhe habe.' AND part_of_speech='phrase' AND translation='چون اونجا فضا و آرامش بیشتری دارم.' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Weil ich dort mehr Platz und Ruhe habe.','Weil ich dort mehr Platz und Ruhe habe.','phrase','چون اونجا فضا و آرامش بیشتری دارم.',42,'{"type":"sentence_pattern"}','[{"text":"Weil ich dort weniger Platz habe.","translation":"چون اونجا فضای کمتری دارم."},{"text":"Weil die Straße dort lauter ist.","translation":"چون خیابون اونجا پرسروصداتر است."},{"text":"Ich suche ein kleines Schlafzimmer.","translation":"دنبال یک اتاق خواب کوچک می گردم."},{"text":"Ich möchte in dieser Wohnung bleiben.","translation":"می خوام در همین خونه بمونم."},{"text":"Dort kann ich nicht arbeiten.","translation":"اونجا نمی تونم کار کنم."}]','Weil ich dort mehr Platz und Ruhe habe.','چون اونجا فضا و آرامش بیشتری دارم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_062=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Etwas ändern','تغییر دادن یک چیز','Sara greift Mias Gründe auf. Mia erklärt, welche Veränderung sie in ihrem Alltag braucht.','سارا به دلیل های میا برمی گردد. میا توضیح می دهد که در زندگی روزمره اش به چه تغییری نیاز دارد.','story','mia-sara-b1-decisions',9,42,150,1,'validated','{"relationship":"friends","context":"explaining-change-with-weil","cefr":"B1","storyArc":"reasons-change-routine-work-rest-plan"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Du hast Gründe genannt.','دلیل هات رو گفتی.',42,NULL,NULL,NULL,NULL,'[{"lemma":"du","partOfSpeech":"pronoun","surface":"Du","translation":"تو"},{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"hast","translation":"داشتن"},{"form":"plural","lemma":"Grund","partOfSpeech":"noun","surface":"Gründe","translation":"دلیل"},{"form":"past_participle","lemma":"nennen","partOfSpeech":"verb","suffix":".","surface":"genannt","translation":"نام بردن / گفتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ja, ich möchte etwas ändern.','آره، می خوام یه چیزی رو تغییر بدم.',42,NULL,NULL,'ja ich möchte etwas ändern',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"lemma":"etwas","partOfSpeech":"pronoun","surface":"etwas","translation":"چیزی / یک چیزی"},{"lemma":"ändern","partOfSpeech":"verb","suffix":".","surface":"ändern","translation":"تغییر دادن"}]','جمله با möchten','برای بیان یک تغییر دلخواه از möchten و مصدر در پایان استفاده می کنیم.','{"pattern":"subject + möchten + object + infinitive"}','{"cefr":"B1"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Was möchtest du genau ändern?','دقیقا چی رو می خوای تغییر بدی؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"genau","partOfSpeech":"adverb","surface":"genau","translation":"دقیقا"},{"lemma":"ändern","partOfSpeech":"verb","suffix":"?","surface":"ändern","translation":"تغییر دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Ich möchte Arbeit und Schlaf trennen.','می خوام کار و خواب رو از هم جدا کنم.',42,NULL,NULL,'ich möchte arbeit und schlaf trennen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"lemma":"Arbeit","partOfSpeech":"noun","surface":"Arbeit","translation":"کار"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"Schlaf","partOfSpeech":"noun","surface":"Schlaf","translation":"خواب"},{"lemma":"trennen","partOfSpeech":"verb","suffix":".","surface":"trennen","translation":"جدا کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,5,'character','Warum ist dir das wichtig?','چرا این موضوع برات مهمه؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"form":"dative_2sg","lemma":"du","meaning":"برای تو","partOfSpeech":"pronoun","surface":"dir","translation":"تو"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"lemma":"wichtig","partOfSpeech":"adjective","suffix":"?","surface":"wichtig","translation":"مهم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,6,'learner','Weil ich oft in der Wohnung arbeite.','چون اغلب در خانه کار می کنم.',42,NULL,NULL,'weil ich oft in der wohnung arbeite',NULL,'[{"lemma":"weil","partOfSpeech":"conjunction","surface":"Weil","translation":"چون / زیرا"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"oft","partOfSpeech":"adverb","surface":"oft","translation":"اغلب"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"form":"dative_feminine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"form":"present_1sg","lemma":"arbeiten","partOfSpeech":"verb","suffix":".","surface":"arbeite","translation":"کار کردن"}]','دلیل با weil','بعد از weil فعل صرف شده در پایان جمله وابسته قرار می گیرد.','{"pattern":"weil + subject + ... + finite verb"}','{"cefr":"B1"}');
  SET v_t_6=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Mehr Ruhe im Alltag','آرامش بیشتر در زندگی روزمره','Mia verbindet ihren Wunsch nach Ruhe mit einer konkreten Folge: besser schlafen.','میا خواسته اش برای آرامش را به یک نتیجه روشن ربط می دهد: خواب بهتر.','story','mia-sara-b1-decisions',10,42,150,2,'validated','{"relationship":"friends","context":"explaining-change-with-weil","cefr":"B1","storyArc":"reasons-change-routine-work-rest-plan"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,1,'character','Was möchtest du im Alltag ändern?','در زندگی روزمره ات چی رو می خوای تغییر بدی؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"contraction_in_dem","lemma":"in","partOfSpeech":"preposition","surface":"im","translation":"در / داخل"},{"lemma":"Alltag","partOfSpeech":"noun","surface":"Alltag","translation":"زندگی روزمره"},{"lemma":"ändern","partOfSpeech":"verb","suffix":"?","surface":"ändern","translation":"تغییر دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Ich möchte abends mehr Ruhe haben.','می خوام شب ها آرامش بیشتری داشته باشم.',42,NULL,NULL,'ich möchte abends mehr ruhe haben',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"lemma":"abends","partOfSpeech":"adverb","surface":"abends","translation":"عصرها / شب ها"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Ruhe","partOfSpeech":"noun","surface":"Ruhe","translation":"آرامش / سکوت"},{"lemma":"haben","partOfSpeech":"verb","suffix":".","surface":"haben","translation":"داشتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,3,'character','Warum brauchst du mehr Ruhe?','چرا به آرامش بیشتری نیاز داری؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_2sg","lemma":"brauchen","partOfSpeech":"verb","surface":"brauchst","translation":"نیاز داشتن / لازم داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Ruhe","partOfSpeech":"noun","suffix":"?","surface":"Ruhe","translation":"آرامش / سکوت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Weil ich dann besser schlafen kann.','چون اون وقت می تونم بهتر بخوابم.',42,NULL,NULL,'weil ich dann besser schlafen kann',NULL,'[{"lemma":"weil","partOfSpeech":"conjunction","surface":"Weil","translation":"چون / زیرا"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"dann","partOfSpeech":"adverb","surface":"dann","translation":"بعد / سپس"},{"lemma":"besser","partOfSpeech":"adverb","surface":"besser","translation":"بهتر"},{"lemma":"schlafen","partOfSpeech":"verb","surface":"schlafen","translation":"خوابیدن"},{"form":"present_1sg","lemma":"können","partOfSpeech":"verb","suffix":".","surface":"kann","translation":"توانستن / بتوان"}]','فعل کمکی در جمله weil','وقتی جمله weil فعل کمکی دارد، فعل صرف شده در پایان می آید.','{"pattern":"weil + subject + infinitive + modal"}','{"cefr":"B1"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,5,'character','Und die laute Straße?','و خیابون پرسروصدا چی؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"und","partOfSpeech":"conjunction","surface":"Und","translation":"و"},{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"nominative_feminine","lemma":"laut","partOfSpeech":"adjective","surface":"laute","translation":"پر سر و صدا"},{"lemma":"Straße","partOfSpeech":"noun","suffix":"?","surface":"Straße","translation":"خیابان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,6,'learner','Deshalb möchte ich umziehen.','برای همین می خوام اسباب کشی کنم.',42,NULL,NULL,'deshalb möchte ich umziehen',NULL,'[{"lemma":"deshalb","partOfSpeech":"adverb","surface":"Deshalb","translation":"برای همین / بنابراین"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"umziehen","partOfSpeech":"verb","suffix":".","surface":"umziehen","translation":"اسباب کشی کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Arbeit und Schlaf trennen','جدا کردن کار و خواب','Mia plant ein eigenes Arbeitszimmer, damit Schlafen und Arbeiten nicht mehr am selben Ort stattfinden.','میا برای یک اتاق کار جدا برنامه دارد تا خواب و کار دیگر در یک جا نباشند.','story','mia-sara-b1-decisions',11,42,150,3,'validated','{"relationship":"friends","context":"explaining-change-with-weil","cefr":"B1","storyArc":"reasons-change-routine-work-rest-plan"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,1,'character','Wie möchtest du deine Arbeit organisieren?','می خوای کارت رو چطور برنامه ریزی کنی؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"wie","partOfSpeech":"adverb","surface":"Wie","translation":"چطور / چگونه"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_feminine","lemma":"dein","partOfSpeech":"determiner","surface":"deine","translation":"مال تو / تو"},{"lemma":"Arbeit","partOfSpeech":"noun","surface":"Arbeit","translation":"کار"},{"lemma":"organisieren","partOfSpeech":"verb","suffix":"?","surface":"organisieren","translation":"برنامه ریزی کردن / سامان دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ich möchte in einem Arbeitszimmer arbeiten.','می خوام در یک اتاق کار، کار کنم.',42,NULL,NULL,'ich möchte in einem arbeitszimmer arbeiten',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"form":"dative_neuter","lemma":"ein","partOfSpeech":"article","surface":"einem","translation":"یک / حرف تعریف نامعین"},{"lemma":"Arbeitszimmer","partOfSpeech":"noun","surface":"Arbeitszimmer","translation":"اتاق کار"},{"lemma":"arbeiten","partOfSpeech":"verb","suffix":".","surface":"arbeiten","translation":"کار کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,3,'character','Warum nicht mehr im Schlafzimmer?','چرا دیگه در اتاق خواب نه؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"lemma":"nicht","partOfSpeech":"particle","surface":"nicht","translation":"نه / نیست"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"form":"contraction_in_dem","lemma":"in","partOfSpeech":"preposition","surface":"im","translation":"در / داخل"},{"lemma":"Schlafzimmer","partOfSpeech":"noun","suffix":"?","surface":"Schlafzimmer","translation":"اتاق خواب"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Weil ich Arbeit und Schlaf trennen möchte.','چون می خوام کار و خواب رو از هم جدا کنم.',42,NULL,NULL,'weil ich arbeit und schlaf trennen möchte',NULL,'[{"lemma":"weil","partOfSpeech":"conjunction","surface":"Weil","translation":"چون / زیرا"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"Arbeit","partOfSpeech":"noun","surface":"Arbeit","translation":"کار"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"Schlaf","partOfSpeech":"noun","surface":"Schlaf","translation":"خواب"},{"lemma":"trennen","partOfSpeech":"verb","surface":"trennen","translation":"جدا کردن"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","suffix":".","surface":"möchte","translation":"خواستن / مایل بودن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,5,'character','Was ändert sich dadurch?','در نتیجه چی تغییر می کنه؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_3sg","lemma":"ändern","partOfSpeech":"verb","surface":"ändert","translation":"تغییر دادن"},{"form":"reflexive_accusative_3sg","lemma":"sich","partOfSpeech":"pronoun","surface":"sich","translation":"خود / خودش"},{"lemma":"dadurch","partOfSpeech":"adverb","suffix":"?","surface":"dadurch","translation":"از این طریق / در نتیجه"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,6,'learner','Dann kann ich mich besser konzentrieren.','اون وقت می تونم بهتر تمرکز کنم.',42,NULL,NULL,'dann kann ich mich besser konzentrieren',NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"present_1sg","lemma":"können","partOfSpeech":"verb","surface":"kann","translation":"توانستن / بتوان"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"reflexive_accusative_1sg","lemma":"ich","meaning":"خودم","partOfSpeech":"pronoun","surface":"mich","translation":"من"},{"lemma":"besser","partOfSpeech":"adverb","surface":"besser","translation":"بهتر"},{"form":"infinitive","lemma":"sich konzentrieren","partOfSpeech":"verb","suffix":".","surface":"konzentrieren","translation":"تمرکز کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Ein klarer Plan','یک برنامه روشن','Mia fasst ihre Gründe zusammen und nennt den ersten konkreten Schritt für die Wohnungssuche.','میا دلیل هایش را جمع بندی می کند و اولین قدم مشخص برای پیدا کردن خانه را می گوید.','story','mia-sara-b1-decisions',12,42,150,4,'validated','{"relationship":"friends","context":"explaining-change-with-weil","cefr":"B1","storyArc":"reasons-change-routine-work-rest-plan"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,1,'character','Was möchtest du zuerst ändern?','اول چی رو می خوای تغییر بدی؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"zuerst","partOfSpeech":"adverb","surface":"zuerst","translation":"اول / ابتدا"},{"lemma":"ändern","partOfSpeech":"verb","suffix":"?","surface":"ändern","translation":"تغییر دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Zuerst suche ich eine ruhigere Wohnung.','اول دنبال یک خونه آروم تر می گردم.',42,NULL,NULL,'zuerst suche ich eine ruhigere wohnung',NULL,'[{"lemma":"zuerst","partOfSpeech":"adverb","surface":"Zuerst","translation":"اول / ابتدا"},{"form":"present_1sg","lemma":"suchen","partOfSpeech":"verb","surface":"suche","translation":"جست و جو کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"form":"accusative_feminine_comparative","lemma":"ruhig","partOfSpeech":"adjective","surface":"ruhigere","translation":"آرام"},{"lemma":"Wohnung","partOfSpeech":"noun","suffix":".","surface":"Wohnung","translation":"خانه / آپارتمان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,3,'character','Warum passt das zu deinen Gründen?','چرا این با دلیل هات جور درمیاد؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_3sg","lemma":"passen","partOfSpeech":"verb","surface":"passt","translation":"اندازه بودن / مناسب بودن"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"lemma":"zu","partOfSpeech":"preposition","surface":"zu","translation":"به / به سمت"},{"form":"dative_plural","lemma":"dein","partOfSpeech":"determiner","surface":"deinen","translation":"مال تو / تو"},{"form":"dative_plural","lemma":"Grund","partOfSpeech":"noun","suffix":"?","surface":"Gründen","translation":"دلیل"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Weil ich dort mehr Platz und Ruhe habe.','چون اونجا فضا و آرامش بیشتری دارم.',42,NULL,NULL,'weil ich dort mehr platz und ruhe habe',NULL,'[{"lemma":"weil","partOfSpeech":"conjunction","surface":"Weil","translation":"چون / زیرا"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"dort","partOfSpeech":"adverb","surface":"dort","translation":"آنجا"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Platz","partOfSpeech":"noun","surface":"Platz","translation":"جا / فضا"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"Ruhe","partOfSpeech":"noun","surface":"Ruhe","translation":"آرامش / سکوت"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","suffix":".","surface":"habe","translation":"داشتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,5,'character','Weißt du jetzt, was du möchtest?','حالا می دونی چی می خوای؟',42,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"wissen","partOfSpeech":"verb","surface":"Weißt","translation":"دانستن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"jetzt","partOfSpeech":"adverb","suffix":",","surface":"jetzt","translation":"حالا / اکنون"},{"lemma":"was","partOfSpeech":"pronoun","surface":"was","translation":"چی / چه"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","suffix":"?","surface":"möchtest","translation":"خواستن / مایل بودن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Ja, ich möchte umziehen und meinen Alltag ändern.','آره، می خوام اسباب کشی کنم و زندگی روزمره ام رو تغییر بدم.',42,NULL,NULL,'ja ich möchte umziehen und meinen alltag ändern',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"lemma":"umziehen","partOfSpeech":"verb","surface":"umziehen","translation":"اسباب کشی کردن"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"form":"accusative_masculine","lemma":"mein","partOfSpeech":"determiner","surface":"meinen","translation":"مال من / من"},{"lemma":"Alltag","partOfSpeech":"noun","surface":"Alltag","translation":"زندگی روزمره"},{"lemma":"ändern","partOfSpeech":"verb","suffix":".","surface":"ändern","translation":"تغییر دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_24=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_023,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_059,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_028,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_029,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_031,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_032,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_023,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_060,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_040,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_022,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_042,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_043,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_046,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_047,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_031,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_048,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_061,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_049,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_050,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_042,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_052,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_018,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_053,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_040,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_013,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_057,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_062,'new',1,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_059,'عبارت کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_020,'واژه کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به پرسش سارا گوش کن',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ میا را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به پرسش بعدی گوش کن',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'دلیل را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_020,'معنی واژه کلیدی را انتخاب کن',NULL,42,'{"mode":"word_translation","question":"Weil در این درس چه معنی دارد؟","choices":["چون / زیرا","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,42,'{"source":"lesson_story","question":"میا می خواهد چه چیزهایی را از هم جدا کند؟","choices":["کار و خواب","خانه و خیابان","امروز و فردا"],"correctIndex":0}','{"cefr":"B1","series":83}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_060,'عبارت کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_026,'واژه کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به پرسش سارا گوش کن',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ میا را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به پرسش بعدی گوش کن',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'دلیل را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_026,'معنی واژه کلیدی را انتخاب کن',NULL,42,'{"mode":"word_translation","question":"Alltag در این درس چه معنی دارد؟","choices":["زندگی روزمره","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,42,'{"source":"lesson_story","question":"چرا میا آرامش بیشتری می خواهد؟","choices":["تا بهتر بخوابد","تا بیشتر سفر کند","تا خانه را بفروشد"],"correctIndex":0}','{"cefr":"B1","series":83}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_061,'عبارت کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_015,'واژه کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به پرسش سارا گوش کن',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ میا را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به پرسش بعدی گوش کن',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'دلیل را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_015,'معنی واژه کلیدی را انتخاب کن',NULL,42,'{"mode":"word_translation","question":"trennen در این درس چه معنی دارد؟","choices":["جدا کردن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,42,'{"source":"lesson_story","question":"میا می خواهد کجا کار کند؟","choices":["در یک اتاق کار","در خیابان","در ایستگاه قطار"],"correctIndex":0}','{"cefr":"B1","series":83}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_062,'عبارت کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_050,'واژه کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به پرسش سارا گوش کن',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ میا را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به پرسش بعدی گوش کن',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'دلیل را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_050,'معنی واژه کلیدی را انتخاب کن',NULL,42,'{"mode":"word_translation","question":"suche در این درس چه معنی دارد؟","choices":["جست و جو کردن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,42,'{"source":"lesson_story","question":"اولین قدم میا چیست؟","choices":["دنبال یک خانه آرام تر بگردد","شغلش را عوض کند","همان خانه را نگه دارد"],"correctIndex":0}','{"cefr":"B1","series":83}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 083 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mia-sara-b1-decisions' AND storyline_order BETWEEN 9 AND 12;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 083 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 083 turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 083 activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 083 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) AS n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) duplicate_pairs;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple detected.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_083_v9();
DROP PROCEDURE IF EXISTS import_nova_series_083_v9;
-- END SERIES 083

-- BEGIN SERIES 084
-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 084
-- B1 > Entscheidungen & Gründe > Ich bin mir noch nicht sicher
-- Requires canonical Nova v9.0 and QA-passed staged Series 081-083.
-- Uses the unchanged Nova v9.0 schema; contains no schema DDL.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_084_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_084_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_001 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_002 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_003 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_004 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_005 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_006 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_007 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_008 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_009 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_010 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_011 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_012 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_013 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_014 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_015 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_016 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_017 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_018 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_019 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_020 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_021 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_022 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_023 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_024 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_025 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_026 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_027 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_028 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_029 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_030 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_031 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_032 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_033 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_034 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_035 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_036 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_037 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_038 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_039 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_040 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_041 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_042 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_043 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_044 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_045 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_046 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_047 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_048 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_049 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_050 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_051 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_052 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_053 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_054 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_055 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_056 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_057 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_058 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_059 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_060 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_061 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_062 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_063 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_064 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_065 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_066 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_067 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_068 BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE v_t_23 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_24 BIGINT UNSIGNED DEFAULT NULL;

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='B1' AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Level from Series 081 not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 from Series 081 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND sort_order IN (1,2,3) AND status IN ('validated','complete');
  IF v_count<>3 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081-083 Chapters must be validated before Series 084.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_module AND c.sort_order IN (1,2,3) AND l.storyline_key='mia-sara-b1-decisions' AND l.storyline_order BETWEEN 1 AND 12;
  IF v_count<>12 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081-083 storyline orders 1-12 are required.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 04 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Ich bin mir noch nicht sicher' AND title_translation='هنوز مطمئن نیستم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 084 canonical Chapter title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 04 must be empty before Series 084 import.'; END IF;
  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;
  IF v_c_mia=v_c_sara THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Mia and Sara must be distinct Characters.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;

  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;

  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='schon' AND part_of_speech='adverb' AND translation='قبلا / تا حالا' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schon','schon','adverb','قبلا / تا حالا',42,NULL,'[{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"besser","translation":"بهتر"},{"text":"dort","translation":"آنجا"},{"text":"morgen","translation":"فردا"}]','Hast du schon eine passende Wohnung gefunden?','تا حالا یک خونه مناسب پیدا کردی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;

  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='passend' AND part_of_speech='adjective' AND translation='مناسب' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'passend','passend','adjective','مناسب',42,'{"type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Hast du schon eine passende Wohnung gefunden?','تا حالا یک خونه مناسب پیدا کردی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_005=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='Wohnung' AND part_of_speech='noun' AND translation='خانه / آپارتمان' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Wohnung | noun'; END IF;

  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='finden' AND part_of_speech='verb' AND translation='پیدا کردن' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'finden','finden','verb','پیدا کردن',42,'{"participle":"gefunden","type":"irregular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Hast du schon eine passende Wohnung gefunden?','تا حالا یک خونه مناسب پیدا کردی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_007=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;

  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='aber' AND part_of_speech='conjunction' AND translation='اما' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'aber','aber','conjunction','اما',42,NULL,'[{"text":"und","translation":"و"},{"text":"oder","translation":"یا"},{"text":"weil","translation":"چون"},{"text":"deshalb","translation":"بنابراین"},{"text":"dann","translation":"بعد"}]','Ja, aber ich bin mir noch nicht sicher.','آره، اما هنوز مطمئن نیستم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;

  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;

  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;

  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nicht | particle'; END IF;

  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='sicher' AND part_of_speech='adjective' AND translation='مطمئن' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sicher','sicher','adjective','مطمئن',42,'{"comparison":"sicherer, am sichersten","type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Ja, aber ich bin mir noch nicht sicher.','آره، اما هنوز مطمئن نیستم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_014=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='warum' AND part_of_speech='adverb' AND translation='چرا' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: warum | adverb'; END IF;

  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='unsicher' AND part_of_speech='adjective' AND translation='نامطمئن / مردد' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'unsicher','unsicher','adjective','نامطمئن / مردد',42,'{"type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Warum bist du noch unsicher?','چرا هنوز مرددی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_016=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='zwei' AND part_of_speech='number' AND translation='دو' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zwei | number'; END IF;

  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='beide' AND part_of_speech='pronoun' AND translation='هر دو' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'beide','beide','pronoun','هر دو',42,NULL,'[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"das","translation":"این"},{"text":"etwas","translation":"چیزی"},{"text":"viel","translation":"خیلی"}]','Sind beide Wohnungen gut?','هر دو خونه خوب هستند؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gut | adjective'; END IF;

  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='sie' AND part_of_speech='pronoun' AND translation='او / آن ها' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sie','sie','pronoun','او / آن ها',42,NULL,'[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"das","translation":"این"},{"text":"etwas","translation":"چیزی"},{"text":"beide","translation":"هر دو"}]','Ja, sie haben unterschiedliche Vorteile.','آره، هر کدوم مزیت های متفاوتی دارند.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_020=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='unterschiedlich' AND part_of_speech='adjective' AND translation='متفاوت' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'unterschiedlich','unterschiedlich','adjective','متفاوت',42,'{"type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Ja, sie haben unterschiedliche Vorteile.','آره، هر کدوم مزیت های متفاوتی دارند.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_021=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='Vorteil' AND part_of_speech='noun' AND translation='مزیت' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Vorteil','Vorteil','noun','مزیت',42,'{"gender":"masculine","plural":"Vorteile"}','[{"text":"Wohnung","translation":"خانه"},{"text":"Arbeit","translation":"کار"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Ja, sie haben unterschiedliche Vorteile.','آره، هر کدوم مزیت های متفاوتی دارند.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_022=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='welche' AND part_of_speech='pronoun' AND translation='کدام / چه' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'welche','welche','pronoun','کدام / چه',43,'{"type":"interrogative_pronoun"}','[{"text":"was","translation":"چه"},{"text":"wer","translation":"چه کسی"},{"text":"wie","translation":"چطور"},{"text":"wo","translation":"کجا"},{"text":"wann","translation":"چه زمانی"}]','Welche Wohnung findest du besser?','به نظرت کدوم خونه بهتره؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_023=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='besser' AND part_of_speech='adverb' AND translation='بهتر' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: besser | adverb'; END IF;

  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;

  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='erste' AND part_of_speech='adjective' AND translation='اولین' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'erste','erste','adjective','اولین',43,'{"type":"ordinal_adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Die erste Wohnung ist größer.','خونه اول بزرگ تره.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_026=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='groß' AND part_of_speech='adjective' AND translation='بزرگ' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'groß','groß','adjective','بزرگ',43,'{"comparison":"größer, am größten","type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Die erste Wohnung ist größer.','خونه اول بزرگ تره.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_027=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;

  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='zweite' AND part_of_speech='adjective' AND translation='دومین' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'zweite','zweite','adjective','دومین',43,'{"type":"ordinal_adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Und die zweite Wohnung?','و خونه دوم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_029=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='ruhig' AND part_of_speech='adjective' AND translation='آرام' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ruhig | adjective'; END IF;

  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='nah' AND part_of_speech='adjective' AND translation='نزدیک' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nah','nah','adjective','نزدیک',43,'{"comparison":"näher, am nächsten","type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Sie ist ruhiger und näher an der Arbeit.','آروم تره و به محل کار نزدیک تره.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_031=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: an | preposition'; END IF;

  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='Arbeit' AND part_of_speech='noun' AND translation='کار' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Arbeit | noun'; END IF;

  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;

  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='wichtig' AND part_of_speech='adjective' AND translation='مهم' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wichtig | adjective'; END IF;

  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;

  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='wissen' AND part_of_speech='verb' AND translation='دانستن' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wissen | verb'; END IF;

  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='genau' AND part_of_speech='adverb' AND translation='دقیقا' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: genau | adverb'; END IF;

  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='Angst' AND part_of_speech='noun' AND translation='ترس' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Angst','Angst','noun','ترس',43,'{"gender":"feminine","plural":"Ängste"}','[{"text":"Wohnung","translation":"خانه"},{"text":"Arbeit","translation":"کار"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Hast du Angst vor einer falschen Entscheidung?','از یک تصمیم اشتباه می ترسی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_039=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='vor' AND part_of_speech='preposition' AND translation='از / جلوی' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vor','vor','preposition','از / جلوی',43,NULL,'[{"text":"in","translation":"در"},{"text":"mit","translation":"با"},{"text":"zu","translation":"به"},{"text":"an","translation":"در"},{"text":"bis","translation":"تا"}]','Hast du Angst vor einer falschen Entscheidung?','از یک تصمیم اشتباه می ترسی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_040=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='falsch' AND part_of_speech='adjective' AND translation='اشتباه / نادرست' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'falsch','falsch','adjective','اشتباه / نادرست',43,'{"type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Hast du Angst vor einer falschen Entscheidung?','از یک تصمیم اشتباه می ترسی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='Entscheidung' AND part_of_speech='noun' AND translation='تصمیم' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Entscheidung','Entscheidung','noun','تصمیم',43,'{"gender":"feminine","plural":"Entscheidungen"}','[{"text":"Wohnung","translation":"خانه"},{"text":"Arbeit","translation":"کار"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Hast du Angst vor einer falschen Entscheidung?','از یک تصمیم اشتباه می ترسی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_042=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='bisschen' AND part_of_speech='adverb' AND translation='کمی' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'bisschen','bisschen','adverb','کمی',43,NULL,'[{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"besser","translation":"بهتر"},{"text":"dort","translation":"آنجا"},{"text":"morgen","translation":"فردا"}]','Ein bisschen. Ein Umzug verändert viel.','یک کم. اسباب کشی خیلی چیزها رو تغییر می ده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_043=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='Umzug' AND part_of_speech='noun' AND translation='اسباب کشی' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Umzug','Umzug','noun','اسباب کشی',43,'{"gender":"masculine","plural":"Umzüge"}','[{"text":"Wohnung","translation":"خانه"},{"text":"Arbeit","translation":"کار"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Ein bisschen. Ein Umzug verändert viel.','یک کم. اسباب کشی خیلی چیزها رو تغییر می ده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_044=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='verändern' AND part_of_speech='verb' AND translation='تغییر دادن' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'verändern','verändern','verb','تغییر دادن',43,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Ein bisschen. Ein Umzug verändert viel.','یک کم. اسباب کشی خیلی چیزها رو تغییر می ده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_045=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='viel' AND part_of_speech='pronoun' AND translation='مقدار زیاد / خیلی' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'viel','viel','pronoun','مقدار زیاد / خیلی',43,NULL,'[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"das","translation":"این"},{"text":"etwas","translation":"چیزی"},{"text":"beide","translation":"هر دو"}]','Ein bisschen. Ein Umzug verändert viel.','یک کم. اسباب کشی خیلی چیزها رو تغییر می ده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_046=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;

  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: machen | verb'; END IF;

  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='einmal' AND part_of_speech='adverb' AND translation='یک بار' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'einmal','einmal','adverb','یک بار',43,NULL,'[{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"besser","translation":"بهتر"},{"text":"dort","translation":"آنجا"},{"text":"morgen","translation":"فردا"}]','Ich kann beide Wohnungen noch einmal ansehen.','می تونم هر دو خونه رو یک بار دیگه ببینم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_049=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='ansehen' AND part_of_speech='verb' AND translation='دیدن / بازدید کردن' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ansehen','ansehen','verb','دیدن / بازدید کردن',43,'{"prefix":"an","type":"separable_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Ich kann beide Wohnungen noch einmal ansehen.','می تونم هر دو خونه رو یک بار دیگه ببینم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_050=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='helfen' AND part_of_speech='verb' AND translation='کمک کردن' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: helfen | verb'; END IF;

  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;

  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='vergleichen' AND part_of_speech='verb' AND translation='مقایسه کردن' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vergleichen','vergleichen','verb','مقایسه کردن',43,'{"type":"irregular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Ja, dann kann ich sie besser vergleichen.','آره، اون وقت می تونم بهتر مقایسه شون کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_053=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='wann' AND part_of_speech='adverb' AND translation='کی / چه زمانی' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wann | adverb'; END IF;

  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: möchten | verb'; END IF;

  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='sich entscheiden' AND part_of_speech='verb' AND translation='تصمیم گرفتن' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sich entscheiden | verb'; END IF;

  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='Nacht' AND part_of_speech='noun' AND translation='شب' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Nacht | noun'; END IF;

  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='darüber' AND part_of_speech='adverb' AND translation='درباره آن' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'darüber','darüber','adverb','درباره آن',43,NULL,'[{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"besser","translation":"بهتر"},{"text":"dort","translation":"آنجا"},{"text":"morgen","translation":"فردا"}]','Ich möchte noch eine Nacht darüber schlafen.','می خوام یک شب دیگه درباره اش فکر کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_058=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='schlafen' AND part_of_speech='verb' AND translation='خوابیدن' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schlafen | verb'; END IF;

  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='klingen' AND part_of_speech='verb' AND translation='به نظر رسیدن' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'klingen','klingen','verb','به نظر رسیدن',43,'{"type":"irregular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Das klingt vernünftig.','این منطقی به نظر می رسه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_060=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='vernünftig' AND part_of_speech='adjective' AND translation='منطقی' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vernünftig','vernünftig','adjective','منطقی',43,'{"type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Das klingt vernünftig.','این منطقی به نظر می رسه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_061=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='morgen' AND part_of_speech='adverb' AND translation='فردا' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: morgen | adverb'; END IF;

  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='Liste' AND part_of_speech='noun' AND translation='فهرست' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Liste','Liste','noun','فهرست',43,'{"gender":"feminine","plural":"Listen"}','[{"text":"Wohnung","translation":"خانه"},{"text":"Arbeit","translation":"کار"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Morgen mache ich eine Liste.','فردا یک فهرست درست می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_063=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='hoffentlich' AND part_of_speech='adverb' AND translation='امیدوارم / با امید' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'hoffentlich','hoffentlich','adverb','امیدوارم / با امید',43,NULL,'[{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"besser","translation":"بهتر"},{"text":"dort","translation":"آنجا"},{"text":"morgen","translation":"فردا"}]','Ja, dann bin ich hoffentlich sicherer.','آره، اون وقت امیدوارم مطمئن تر باشم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_064=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='Ich bin mir noch nicht sicher.' AND part_of_speech='phrase' AND translation='هنوز مطمئن نیستم.' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich bin mir noch nicht sicher.','Ich bin mir noch nicht sicher.','phrase','هنوز مطمئن نیستم.',42,'{"type":"sentence_pattern"}','[{"text":"Ich bin mir ganz sicher.","translation":"کاملا مطمئنم."},{"text":"Ich habe mich entschieden.","translation":"تصمیمم رو گرفتم."},{"text":"Ich suche noch eine Wohnung.","translation":"هنوز دنبال خونه می گردم."},{"text":"Ich möchte heute umziehen.","translation":"می خوام امروز اسباب کشی کنم."},{"text":"Die Wohnung ist sicher.","translation":"این خونه امنه."}]','Ich bin mir noch nicht sicher.','هنوز مطمئن نیستم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_065=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='Das weiß ich noch nicht genau.' AND part_of_speech='phrase' AND translation='هنوز دقیقا نمی دونم.' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Das weiß ich noch nicht genau.','Das weiß ich noch nicht genau.','phrase','هنوز دقیقا نمی دونم.',43,'{"type":"sentence_pattern"}','[{"text":"Das weiß ich schon genau.","translation":"این رو کاملا می دونم."},{"text":"Die erste Wohnung ist größer.","translation":"خونه اول بزرگ تره."},{"text":"Die zweite Wohnung ist ruhiger.","translation":"خونه دوم آروم تره."},{"text":"Beide Wohnungen sind gleich.","translation":"هر دو خونه یکسان هستند."},{"text":"Ich finde die erste besser.","translation":"به نظرم خونه اول بهتره."}]','Das weiß ich noch nicht genau.','هنوز دقیقا نمی دونم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_066=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='Ich kann beide Wohnungen noch einmal ansehen.' AND part_of_speech='phrase' AND translation='می تونم هر دو خونه رو یک بار دیگه ببینم.' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich kann beide Wohnungen noch einmal ansehen.','Ich kann beide Wohnungen noch einmal ansehen.','phrase','می تونم هر دو خونه رو یک بار دیگه ببینم.',43,'{"type":"sentence_pattern"}','[{"text":"Ich kann nur eine Wohnung ansehen.","translation":"فقط می تونم یک خونه رو ببینم."},{"text":"Ich habe beide Wohnungen gefunden.","translation":"هر دو خونه رو پیدا کردم."},{"text":"Ich möchte morgen umziehen.","translation":"می خوام فردا اسباب کشی کنم."},{"text":"Ich kann die Wohnungen vergleichen.","translation":"می تونم خونه ها رو مقایسه کنم."},{"text":"Ich sehe die erste Wohnung heute.","translation":"امروز خونه اول رو می بینم."}]','Ich kann beide Wohnungen noch einmal ansehen.','می تونم هر دو خونه رو یک بار دیگه ببینم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_067=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='Ich möchte noch eine Nacht darüber schlafen.' AND part_of_speech='phrase' AND translation='می خوام یک شب دیگه درباره اش فکر کنم.' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich möchte noch eine Nacht darüber schlafen.','Ich möchte noch eine Nacht darüber schlafen.','phrase','می خوام یک شب دیگه درباره اش فکر کنم.',43,'{"type":"sentence_pattern"}','[{"text":"Ich entscheide mich heute.","translation":"امروز تصمیم می گیرم."},{"text":"Ich brauche noch eine Woche.","translation":"هنوز یک هفته وقت لازم دارم."},{"text":"Ich möchte die Wohnung wieder ansehen.","translation":"می خوام خونه رو دوباره ببینم."},{"text":"Morgen mache ich eine Liste.","translation":"فردا یک فهرست درست می کنم."},{"text":"Ich bin mir jetzt sicher.","translation":"حالا مطمئنم."}]','Ich möchte noch eine Nacht darüber schlafen.','می خوام یک شب دیگه درباره اش فکر کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_068=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Noch nicht sicher','هنوز مطمئن نیستم','Sara fragt nach der Wohnungssuche. Mia hat zwei passende Möglichkeiten gefunden, ist aber noch unsicher.','سارا درباره جست و جوی خانه می پرسد. میا دو گزینه مناسب پیدا کرده، اما هنوز مردد است.','story','mia-sara-b1-decisions',13,42,150,1,'validated','{"relationship":"friends","context":"comparing-apartments-and-uncertainty","cefr":"B1","storyArc":"options-comparison-concern-reflection"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Hast du schon eine passende Wohnung gefunden?','تا حالا یک خونه مناسب پیدا کردی؟',42,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"schon","partOfSpeech":"adverb","surface":"schon","translation":"قبلا / تا حالا"},{"form":"accusative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"form":"accusative_feminine","lemma":"passend","partOfSpeech":"adjective","surface":"passende","translation":"مناسب"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"form":"past_participle","lemma":"finden","partOfSpeech":"verb","suffix":"?","surface":"gefunden","translation":"پیدا کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ja, aber ich bin mir noch nicht sicher.','آره، اما هنوز مطمئن نیستم.',42,NULL,NULL,'ja aber ich bin mir noch nicht sicher',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"aber","partOfSpeech":"conjunction","surface":"aber","translation":"اما"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"sein","partOfSpeech":"verb","surface":"bin","translation":"بودن"},{"form":"dative_1sg","lemma":"ich","meaning":"برای خودم","partOfSpeech":"pronoun","surface":"mir","translation":"من"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"nicht","partOfSpeech":"particle","surface":"nicht","translation":"نه / نیست"},{"lemma":"sicher","partOfSpeech":"adjective","suffix":".","surface":"sicher","translation":"مطمئن"}]','sich sicher sein','برای بیان اطمینان یا تردید می گوییم: Ich bin mir sicher یا Ich bin mir nicht sicher.','{"pattern":"subject + sein + dative reflexive pronoun + (nicht) sicher"}','{"cefr":"B1"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Warum bist du noch unsicher?','چرا هنوز مرددی؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_2sg","lemma":"sein","partOfSpeech":"verb","surface":"bist","translation":"بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"unsicher","partOfSpeech":"adjective","suffix":"?","surface":"unsicher","translation":"نامطمئن / مردد"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Ich habe zwei passende Wohnungen gefunden.','دو خونه مناسب پیدا کردم.',42,NULL,NULL,'ich habe zwei passende wohnungen gefunden',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","surface":"habe","translation":"داشتن"},{"lemma":"zwei","partOfSpeech":"number","surface":"zwei","translation":"دو"},{"form":"accusative_plural","lemma":"passend","partOfSpeech":"adjective","surface":"passende","translation":"مناسب"},{"form":"plural","lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnungen","translation":"خانه / آپارتمان"},{"form":"past_participle","lemma":"finden","partOfSpeech":"verb","suffix":".","surface":"gefunden","translation":"پیدا کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,5,'character','Sind beide Wohnungen gut?','هر دو خونه خوب هستند؟',42,NULL,NULL,NULL,NULL,'[{"form":"present_plural","lemma":"sein","partOfSpeech":"verb","surface":"Sind","translation":"بودن"},{"lemma":"beide","partOfSpeech":"pronoun","surface":"beide","translation":"هر دو"},{"form":"plural","lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnungen","translation":"خانه / آپارتمان"},{"lemma":"gut","partOfSpeech":"adjective","suffix":"?","surface":"gut","translation":"خوب"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,6,'learner','Ja, sie haben unterschiedliche Vorteile.','آره، هر کدوم مزیت های متفاوتی دارند.',42,NULL,NULL,'ja sie haben unterschiedliche vorteile',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"sie","partOfSpeech":"pronoun","surface":"sie","translation":"او / آن ها"},{"form":"present_plural","lemma":"haben","partOfSpeech":"verb","surface":"haben","translation":"داشتن"},{"form":"accusative_plural","lemma":"unterschiedlich","partOfSpeech":"adjective","surface":"unterschiedliche","translation":"متفاوت"},{"form":"plural","lemma":"Vorteil","partOfSpeech":"noun","suffix":".","surface":"Vorteile","translation":"مزیت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_6=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Zwei Wohnungen vergleichen','مقایسه دو خانه','Mia vergleicht Größe, Ruhe und Lage der beiden Wohnungen, ohne schon eine Priorität festzulegen.','میا اندازه، آرامش و موقعیت دو خانه را مقایسه می کند، بدون اینکه هنوز اولویتش را مشخص کند.','story','mia-sara-b1-decisions',14,43,150,2,'validated','{"relationship":"friends","context":"comparing-apartments-and-uncertainty","cefr":"B1","storyArc":"options-comparison-concern-reflection"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,1,'character','Welche Wohnung findest du besser?','به نظرت کدوم خونه بهتره؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"welche","partOfSpeech":"pronoun","surface":"Welche","translation":"کدام / چه"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"form":"present_2sg","lemma":"finden","partOfSpeech":"verb","surface":"findest","translation":"پیدا کردن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"besser","partOfSpeech":"adverb","suffix":"?","surface":"besser","translation":"بهتر"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Die erste Wohnung ist größer.','خونه اول بزرگ تره.',43,NULL,NULL,'die erste wohnung ist größer',NULL,'[{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"Die","translation":"حرف تعریف"},{"form":"nominative_feminine","lemma":"erste","partOfSpeech":"adjective","surface":"erste","translation":"اولین"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"form":"comparative","lemma":"groß","partOfSpeech":"adjective","suffix":".","surface":"größer","translation":"بزرگ"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,3,'character','Und die zweite Wohnung?','و خونه دوم؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"und","partOfSpeech":"conjunction","surface":"Und","translation":"و"},{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"nominative_feminine","lemma":"zweite","partOfSpeech":"adjective","surface":"zweite","translation":"دومین"},{"lemma":"Wohnung","partOfSpeech":"noun","suffix":"?","surface":"Wohnung","translation":"خانه / آپارتمان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Sie ist ruhiger und näher an der Arbeit.','آروم تره و به محل کار نزدیک تره.',43,NULL,NULL,'sie ist ruhiger und näher an der arbeit',NULL,'[{"lemma":"sie","partOfSpeech":"pronoun","surface":"Sie","translation":"او / آن ها"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"form":"comparative","lemma":"ruhig","partOfSpeech":"adjective","surface":"ruhiger","translation":"آرام"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"form":"comparative","lemma":"nah","partOfSpeech":"adjective","surface":"näher","translation":"نزدیک"},{"lemma":"an","partOfSpeech":"preposition","surface":"an","translation":"در / در روز"},{"form":"dative_feminine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Arbeit","partOfSpeech":"noun","suffix":".","surface":"Arbeit","translation":"کار"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,5,'character','Was ist dir wichtiger?','کدوم مورد برات مهم تره؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"form":"dative_2sg","lemma":"du","meaning":"برای تو","partOfSpeech":"pronoun","surface":"dir","translation":"تو"},{"form":"comparative","lemma":"wichtig","partOfSpeech":"adjective","suffix":"?","surface":"wichtiger","translation":"مهم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,6,'learner','Das weiß ich noch nicht genau.','هنوز دقیقا نمی دونم.',43,NULL,NULL,'das weiß ich noch nicht genau',NULL,'[{"lemma":"das","partOfSpeech":"pronoun","surface":"Das","translation":"این / آن"},{"form":"present_1sg","lemma":"wissen","partOfSpeech":"verb","surface":"weiß","translation":"دانستن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"nicht","partOfSpeech":"particle","surface":"nicht","translation":"نه / نیست"},{"lemma":"genau","partOfSpeech":"adverb","suffix":".","surface":"genau","translation":"دقیقا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Angst vor der falschen Wahl','ترس از انتخاب اشتباه','Mia benennt ihre Sorge und plant, beide Wohnungen noch einmal bewusst zu vergleichen.','میا نگرانی اش را بیان می کند و تصمیم می گیرد هر دو خانه را یک بار دیگر با دقت مقایسه کند.','story','mia-sara-b1-decisions',15,43,150,3,'validated','{"relationship":"friends","context":"comparing-apartments-and-uncertainty","cefr":"B1","storyArc":"options-comparison-concern-reflection"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,1,'character','Hast du Angst vor einer falschen Entscheidung?','از یک تصمیم اشتباه می ترسی؟',43,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"Angst","partOfSpeech":"noun","surface":"Angst","translation":"ترس"},{"lemma":"vor","partOfSpeech":"preposition","surface":"vor","translation":"از / جلوی"},{"form":"dative_feminine","lemma":"ein","partOfSpeech":"article","surface":"einer","translation":"یک / حرف تعریف نامعین"},{"form":"dative_feminine","lemma":"falsch","partOfSpeech":"adjective","surface":"falschen","translation":"اشتباه / نادرست"},{"lemma":"Entscheidung","partOfSpeech":"noun","suffix":"?","surface":"Entscheidung","translation":"تصمیم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ein bisschen. Ein Umzug verändert viel.','یک کم. اسباب کشی خیلی چیزها رو تغییر می ده.',43,NULL,NULL,'ein bisschen ein umzug verändert viel',NULL,'[{"lemma":"ein","partOfSpeech":"article","surface":"Ein","translation":"یک / حرف تعریف نامعین"},{"lemma":"bisschen","partOfSpeech":"adverb","suffix":".","surface":"bisschen","translation":"کمی"},{"lemma":"ein","partOfSpeech":"article","surface":"Ein","translation":"یک / حرف تعریف نامعین"},{"lemma":"Umzug","partOfSpeech":"noun","surface":"Umzug","translation":"اسباب کشی"},{"form":"present_3sg","lemma":"verändern","partOfSpeech":"verb","surface":"verändert","translation":"تغییر دادن"},{"lemma":"viel","partOfSpeech":"pronoun","suffix":".","surface":"viel","translation":"مقدار زیاد / خیلی"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,3,'character','Was kannst du machen?','چه کاری می تونی انجام بدی؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_2sg","lemma":"können","partOfSpeech":"verb","surface":"kannst","translation":"توانستن / بتوان"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"machen","partOfSpeech":"verb","suffix":"?","surface":"machen","translation":"انجام دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Ich kann beide Wohnungen noch einmal ansehen.','می تونم هر دو خونه رو یک بار دیگه ببینم.',43,NULL,NULL,'ich kann beide wohnungen noch einmal ansehen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"können","partOfSpeech":"verb","surface":"kann","translation":"توانستن / بتوان"},{"lemma":"beide","partOfSpeech":"pronoun","surface":"beide","translation":"هر دو"},{"form":"plural","lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnungen","translation":"خانه / آپارتمان"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"einmal","partOfSpeech":"adverb","surface":"einmal","translation":"یک بار"},{"form":"infinitive","lemma":"ansehen","partOfSpeech":"verb","suffix":".","surface":"ansehen","translation":"دیدن / بازدید کردن"}]','فعل جداشدنی با können','بعد از können، مصدر ansehen به صورت کامل در پایان جمله می آید.','{"pattern":"subject + können + ... + separable infinitive"}','{"cefr":"B1"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,5,'character','Hilft dir das?','این کمکت می کنه؟',43,NULL,NULL,NULL,NULL,'[{"form":"present_3sg","lemma":"helfen","partOfSpeech":"verb","surface":"Hilft","translation":"کمک کردن"},{"form":"dative_2sg","lemma":"du","meaning":"به تو","partOfSpeech":"pronoun","surface":"dir","translation":"تو"},{"lemma":"das","partOfSpeech":"pronoun","suffix":"?","surface":"das","translation":"این / آن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,6,'learner','Ja, dann kann ich sie besser vergleichen.','آره، اون وقت می تونم بهتر مقایسه شون کنم.',43,NULL,NULL,'ja dann kann ich sie besser vergleichen',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"dann","partOfSpeech":"adverb","surface":"dann","translation":"بعد / سپس"},{"form":"present_1sg","lemma":"können","partOfSpeech":"verb","surface":"kann","translation":"توانستن / بتوان"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"sie","meaning":"آن ها","partOfSpeech":"pronoun","surface":"sie","translation":"او / آن ها"},{"lemma":"besser","partOfSpeech":"adverb","surface":"besser","translation":"بهتر"},{"lemma":"vergleichen","partOfSpeech":"verb","suffix":".","surface":"vergleichen","translation":"مقایسه کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Eine Nacht darüber schlafen','یک شب درباره اش فکر کردن','Mia nimmt sich bis morgen Zeit, hält die Vorteile fest und erwartet danach mehr Sicherheit.','میا تا فردا به خودش فرصت می دهد، مزیت ها را یادداشت می کند و انتظار دارد بعد از آن مطمئن تر باشد.','story','mia-sara-b1-decisions',16,43,150,4,'validated','{"relationship":"friends","context":"comparing-apartments-and-uncertainty","cefr":"B1","storyArc":"options-comparison-concern-reflection"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,1,'character','Wann möchtest du dich entscheiden?','کی می خوای تصمیم بگیری؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"wann","partOfSpeech":"adverb","surface":"Wann","translation":"کی / چه زمانی"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"reflexive_accusative_2sg","lemma":"du","meaning":"خودت","partOfSpeech":"pronoun","surface":"dich","translation":"تو"},{"form":"infinitive","lemma":"sich entscheiden","partOfSpeech":"verb","suffix":"?","surface":"entscheiden","translation":"تصمیم گرفتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Ich möchte noch eine Nacht darüber schlafen.','می خوام یک شب دیگه درباره اش فکر کنم.',43,NULL,NULL,'ich möchte noch eine nacht darüber schlafen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"form":"accusative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"lemma":"Nacht","partOfSpeech":"noun","surface":"Nacht","translation":"شب"},{"lemma":"darüber","partOfSpeech":"adverb","surface":"darüber","translation":"درباره آن"},{"lemma":"schlafen","partOfSpeech":"verb","suffix":".","surface":"schlafen","translation":"خوابیدن"}]','über etwas schlafen','عبارت darüber schlafen یعنی پیش از تصمیم گرفتن تا روز بعد فکر کردن.','{"pattern":"über etwas / darüber schlafen"}','{"cefr":"B1"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,3,'character','Das klingt vernünftig.','این منطقی به نظر می رسه.',43,NULL,NULL,NULL,NULL,'[{"lemma":"das","partOfSpeech":"pronoun","surface":"Das","translation":"این / آن"},{"form":"present_3sg","lemma":"klingen","partOfSpeech":"verb","surface":"klingt","translation":"به نظر رسیدن"},{"lemma":"vernünftig","partOfSpeech":"adjective","suffix":".","surface":"vernünftig","translation":"منطقی"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Morgen mache ich eine Liste.','فردا یک فهرست درست می کنم.',43,NULL,NULL,'morgen mache ich eine liste',NULL,'[{"lemma":"morgen","partOfSpeech":"adverb","surface":"Morgen","translation":"فردا"},{"form":"present_1sg","lemma":"machen","partOfSpeech":"verb","surface":"mache","translation":"انجام دادن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"lemma":"Liste","partOfSpeech":"noun","suffix":".","surface":"Liste","translation":"فهرست"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,5,'character','Hilft dir die Liste?','این فهرست کمکت می کنه؟',43,NULL,NULL,NULL,NULL,'[{"form":"present_3sg","lemma":"helfen","partOfSpeech":"verb","surface":"Hilft","translation":"کمک کردن"},{"form":"dative_2sg","lemma":"du","meaning":"به تو","partOfSpeech":"pronoun","surface":"dir","translation":"تو"},{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Liste","partOfSpeech":"noun","suffix":"?","surface":"Liste","translation":"فهرست"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Ja, dann bin ich hoffentlich sicherer.','آره، اون وقت امیدوارم مطمئن تر باشم.',43,NULL,NULL,'ja dann bin ich hoffentlich sicherer',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"dann","partOfSpeech":"adverb","surface":"dann","translation":"بعد / سپس"},{"form":"present_1sg","lemma":"sein","partOfSpeech":"verb","surface":"bin","translation":"بودن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"hoffentlich","partOfSpeech":"adverb","surface":"hoffentlich","translation":"امیدوارم / با امید"},{"form":"comparative","lemma":"sicher","partOfSpeech":"adjective","suffix":".","surface":"sicherer","translation":"مطمئن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_24=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_021,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_022,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_065,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_023,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_025,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_027,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_028,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_029,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_066,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_002,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_039,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_040,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_042,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_043,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_045,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_046,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_047,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_018,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_049,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_050,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_052,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_053,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_067,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_055,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_057,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_058,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_060,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_061,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_062,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_063,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_052,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_068,'new',1,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_065,'عبارت کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_014,'واژه کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به پرسش سارا گوش کن',NULL,42,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ میا را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به پرسش بعدی گوش کن',NULL,42,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'پاسخ را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_014,'معنی واژه کلیدی را انتخاب کن',NULL,42,'{"mode":"word_translation","question":"sicher در این درس چه معنی دارد؟","choices":["مطمئن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,42,'{"source":"lesson_story","question":"چرا میا هنوز مطمئن نیست؟","choices":["چون دو خانه مناسب پیدا کرده است","چون هیچ خانه ای پیدا نکرده است","چون دیگر نمی خواهد اسباب کشی کند"],"correctIndex":0}','{"cefr":"B1","series":84}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_066,'عبارت کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_024,'واژه کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به پرسش سارا گوش کن',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ میا را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به پرسش بعدی گوش کن',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'پاسخ را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_024,'معنی واژه کلیدی را انتخاب کن',NULL,43,'{"mode":"word_translation","question":"besser در این درس چه معنی دارد؟","choices":["بهتر","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,43,'{"source":"lesson_story","question":"خانه دوم چه مزیتی دارد؟","choices":["آرام تر و به محل کار نزدیک تر است","بزرگ تر و گران تر است","اتاق کار ندارد"],"correctIndex":0}','{"cefr":"B1","series":84}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_067,'عبارت کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_053,'واژه کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به پرسش سارا گوش کن',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ میا را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به پرسش بعدی گوش کن',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'پاسخ را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_053,'معنی واژه کلیدی را انتخاب کن',NULL,43,'{"mode":"word_translation","question":"vergleichen در این درس چه معنی دارد؟","choices":["مقایسه کردن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,43,'{"source":"lesson_story","question":"میا برای مقایسه بهتر چه کار می کند؟","choices":["هر دو خانه را دوباره می بیند","فقط خانه اول را می خرد","از سارا می خواهد تصمیم بگیرد"],"correctIndex":0}','{"cefr":"B1","series":84}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_068,'عبارت کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_058,'واژه کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به پرسش سارا گوش کن',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ میا را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به پرسش بعدی گوش کن',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'پاسخ را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_058,'معنی واژه کلیدی را انتخاب کن',NULL,43,'{"mode":"word_translation","question":"darüber در این درس چه معنی دارد؟","choices":["درباره آن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,43,'{"source":"lesson_story","question":"میا چه زمانی دوباره تصمیمش را بررسی می کند؟","choices":["بعد از یک شب فکر کردن","همین لحظه","هفته آینده"],"correctIndex":0}','{"cefr":"B1","series":84}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 084 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mia-sara-b1-decisions' AND storyline_order BETWEEN 13 AND 16;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 084 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 084 turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 084 activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 084 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) AS n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) duplicate_pairs;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple detected.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_084_v9();
DROP PROCEDURE IF EXISTS import_nova_series_084_v9;
-- END SERIES 084

-- BEGIN SERIES 085
-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 085
-- B1 > Entscheidungen & Gründe > Ich habe mich entschieden
-- Requires canonical Nova v9.0 and QA-passed staged Series 081-084.
-- Uses the unchanged Nova v9.0 schema; contains no schema DDL.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_085_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_085_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_001 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_002 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_003 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_004 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_005 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_006 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_007 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_008 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_009 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_010 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_011 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_012 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_013 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_014 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_015 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_016 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_017 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_018 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_019 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_020 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_021 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_022 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_023 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_024 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_025 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_026 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_027 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_028 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_029 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_030 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_031 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_032 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_033 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_034 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_035 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_036 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_037 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_038 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_039 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_040 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_041 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_042 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_043 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_044 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_045 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_046 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_047 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_048 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_049 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_050 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_051 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_052 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_053 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_054 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_055 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_056 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_057 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_058 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_059 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_060 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_061 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_062 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_063 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_064 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_065 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_066 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_067 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_068 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_069 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_070 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_071 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_072 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_073 BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE v_t_23 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_24 BIGINT UNSIGNED DEFAULT NULL;

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='B1' AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Level from Series 081 not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 from Series 081 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND sort_order IN (1,2,3,4) AND status IN ('validated','complete');
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081-084 Chapters must be validated before Series 085.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_module AND c.sort_order IN (1,2,3,4) AND l.storyline_key='mia-sara-b1-decisions' AND l.storyline_order BETWEEN 1 AND 16;
  IF v_count<>16 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081-084 storyline orders 1-16 are required.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 05 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Ich habe mich entschieden' AND title_translation='تصمیمم رو گرفتم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 085 canonical Chapter title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 05 must be empty before Series 085 import.'; END IF;
  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;
  IF v_c_mia=v_c_sara THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Mia and Sara must be distinct Characters.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;

  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;

  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='beide' AND part_of_speech='pronoun' AND translation='هر دو' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: beide | pronoun'; END IF;

  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='Wohnung' AND part_of_speech='noun' AND translation='خانه / آپارتمان' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Wohnung | noun'; END IF;

  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='vergleichen' AND part_of_speech='verb' AND translation='مقایسه کردن' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: vergleichen | verb'; END IF;

  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;

  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;

  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='sich entscheiden' AND part_of_speech='verb' AND translation='تصمیم گرفتن' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sich entscheiden | verb'; END IF;

  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='welche' AND part_of_speech='pronoun' AND translation='کدام / چه' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: welche | pronoun'; END IF;

  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='wählen' AND part_of_speech='verb' AND translation='انتخاب کردن' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wählen','wählen','verb','انتخاب کردن',43,'{"participle":"gewählt","type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Welche Wohnung hast du gewählt?','کدوم خونه رو انتخاب کردی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;

  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='zweite' AND part_of_speech='adjective' AND translation='دومین' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zweite | adjective'; END IF;

  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='passen' AND part_of_speech='verb' AND translation='اندازه بودن / مناسب بودن' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: passen | verb'; END IF;

  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='besser' AND part_of_speech='adverb' AND translation='بهتر' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: besser | adverb'; END IF;

  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='zu' AND part_of_speech='preposition' AND translation='به / به سمت' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zu | preposition'; END IF;

  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='mein' AND part_of_speech='determiner' AND translation='مال من / من' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mein | determiner'; END IF;

  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='Alltag' AND part_of_speech='noun' AND translation='زندگی روزمره' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Alltag | noun'; END IF;

  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;

  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;

  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='sicher' AND part_of_speech='adjective' AND translation='مطمئن' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sicher | adjective'; END IF;

  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='warum' AND part_of_speech='adverb' AND translation='چرا' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: warum | adverb'; END IF;

  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='weil' AND part_of_speech='conjunction' AND translation='چون / زیرا' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: weil | conjunction'; END IF;

  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='sie' AND part_of_speech='pronoun' AND translation='او / آن ها' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sie | pronoun'; END IF;

  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='ruhig' AND part_of_speech='adjective' AND translation='آرام' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ruhig | adjective'; END IF;

  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;

  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='nah' AND part_of_speech='adjective' AND translation='نزدیک' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nah | adjective'; END IF;

  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: an | preposition'; END IF;

  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='Arbeit' AND part_of_speech='noun' AND translation='کار' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Arbeit | noun'; END IF;

  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='klein' AND part_of_speech='adjective' AND translation='کوچک' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: klein | adjective'; END IF;

  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='Raum' AND part_of_speech='noun' AND translation='فضا / اتاق' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Raum','Raum','noun','فضا / اتاق',43,'{"gender":"masculine","plural":"Räume"}','[{"text":"Wohnung","translation":"خانه"},{"text":"Arbeit","translation":"کار"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Und der kleinere Raum?','و فضای کوچک تر چی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_030=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='damit' AND part_of_speech='adverb' AND translation='با آن / با این موضوع' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'damit','damit','adverb','با آن / با این موضوع',43,NULL,'[{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"besser","translation":"بهتر"},{"text":"dort","translation":"آنجا"},{"text":"morgen","translation":"فردا"}]','Damit kann ich leben.','می تونم باهاش کنار بیام.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_031=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;

  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='leben' AND part_of_speech='verb' AND translation='زندگی کردن' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'leben','leben','verb','زندگی کردن',43,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Damit kann ich leben.','می تونم باهاش کنار بیام.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_033=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;

  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='mit' AND part_of_speech='preposition' AND translation='با' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mit | preposition'; END IF;

  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='Balkon' AND part_of_speech='noun' AND translation='بالکن' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Balkon | noun'; END IF;

  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='er' AND part_of_speech='pronoun' AND translation='او (مذکر)' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: er | pronoun'; END IF;

  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='aber' AND part_of_speech='conjunction' AND translation='اما' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: aber | conjunction'; END IF;

  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='reichen' AND part_of_speech='verb' AND translation='کافی بودن' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'reichen','reichen','verb','کافی بودن',43,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Er ist klein, aber er reicht mir.','کوچیکه، اما برای من کافیه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_039=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: machen | verb'; END IF;

  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='anrufen' AND part_of_speech='verb' AND translation='زنگ زدن / تماس گرفتن' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: anrufen | verb'; END IF;

  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='Vermieterin' AND part_of_speech='noun' AND translation='صاحبخانه زن' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Vermieterin','Vermieterin','noun','صاحبخانه زن',43,'{"gender":"feminine","plural":"Vermieterinnen"}','[{"text":"Wohnung","translation":"خانه"},{"text":"Arbeit","translation":"کار"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Ich rufe die Vermieterin an.','به صاحبخانه زنگ می زنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_042=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: möchten | verb'; END IF;

  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='sagen' AND part_of_speech='verb' AND translation='گفتن' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sagen | verb'; END IF;

  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='nehmen' AND part_of_speech='verb' AND translation='گرفتن / مصرف کردن' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nehmen | verb'; END IF;

  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: müssen | verb'; END IF;

  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;

  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='etwas' AND part_of_speech='pronoun' AND translation='چیزی / یک چیزی' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: etwas | pronoun'; END IF;

  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='prüfen' AND part_of_speech='verb' AND translation='بررسی کردن' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'prüfen','prüfen','verb','بررسی کردن',43,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Musst du noch etwas prüfen?','هنوز باید چیزی رو بررسی کنی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_049=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='lesen' AND part_of_speech='verb' AND translation='خواندن' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: lesen | verb'; END IF;

  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='Mietvertrag' AND part_of_speech='noun' AND translation='قرارداد اجاره' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Mietvertrag','Mietvertrag','noun','قرارداد اجاره',43,'{"gender":"masculine","plural":"Mietverträge"}','[{"text":"Wohnung","translation":"خانه"},{"text":"Arbeit","translation":"کار"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Ja, ich lese den Mietvertrag genau.','آره، قرارداد اجاره رو دقیق می خونم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_051=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='genau' AND part_of_speech='adverb' AND translation='دقیقا' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: genau | adverb'; END IF;

  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='sich freuen' AND part_of_speech='verb' AND translation='خوشحال بودن / خوشحال شدن' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sich freuen','sich freuen','verb','خوشحال بودن / خوشحال شدن',43,'{"preposition":"auf","type":"reflexive_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Freust du dich auf den Umzug?','برای اسباب کشی خوشحالی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_053=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='auf' AND part_of_speech='preposition' AND translation='روی / برای' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'auf','auf','preposition','روی / برای',43,NULL,'[{"text":"in","translation":"در"},{"text":"mit","translation":"با"},{"text":"zu","translation":"به"},{"text":"an","translation":"در"},{"text":"vor","translation":"از"}]','Freust du dich auf den Umzug?','برای اسباب کشی خوشحالی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_054=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='Umzug' AND part_of_speech='noun' AND translation='اسباب کشی' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Umzug | noun'; END IF;

  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='beginnen' AND part_of_speech='verb' AND translation='شروع شدن / آغاز کردن' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'beginnen','beginnen','verb','شروع شدن / آغاز کردن',43,'{"type":"irregular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Ja, jetzt beginnt etwas Neues.','آره، حالا یک چیز تازه شروع می شه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_056=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='neu' AND part_of_speech='adjective' AND translation='جدید / تازه' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: neu | adjective'; END IF;

  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='verändern' AND part_of_speech='verb' AND translation='تغییر دادن' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: verändern | verb'; END IF;

  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='sich' AND part_of_speech='pronoun' AND translation='خود / خودش' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sich | pronoun'; END IF;

  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='zuerst' AND part_of_speech='adverb' AND translation='اول / ابتدا' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zuerst | adverb'; END IF;

  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='einrichten' AND part_of_speech='verb' AND translation='چیدن / آماده کردن' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'einrichten','einrichten','verb','چیدن / آماده کردن',43,'{"prefix":"ein","type":"separable_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Ich richte mein Arbeitszimmer ein.','اتاق کارم رو می چینم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_061=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='Arbeitszimmer' AND part_of_speech='noun' AND translation='اتاق کار' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Arbeitszimmer | noun'; END IF;

  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;

  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;

  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gut | adjective'; END IF;

  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='Entscheidung' AND part_of_speech='noun' AND translation='تصمیم' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Entscheidung | noun'; END IF;

  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: danke | interjection'; END IF;

  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='sich fühlen' AND part_of_speech='verb' AND translation='احساس کردن' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sich fühlen','sich fühlen','verb','احساس کردن',43,'{"type":"reflexive_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Danke. Jetzt fühle ich mich erleichtert.','ممنون. حالا احساس آسودگی می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_068=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='erleichtert' AND part_of_speech='adjective' AND translation='آسوده / سبک شده' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'erleichtert','erleichtert','adjective','آسوده / سبک شده',43,'{"type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Danke. Jetzt fühle ich mich erleichtert.','ممنون. حالا احساس آسودگی می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_069=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='Ich habe mich entschieden.' AND part_of_speech='phrase' AND translation='تصمیمم رو گرفتم.' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich habe mich entschieden.','Ich habe mich entschieden.','phrase','تصمیمم رو گرفتم.',43,'{"type":"sentence_pattern"}','[{"text":"Ich kann mich noch nicht entscheiden.","translation":"هنوز نمی تونم تصمیم بگیرم."},{"text":"Ich brauche noch mehr Zeit.","translation":"هنوز زمان بیشتری لازم دارم."},{"text":"Ich vergleiche beide Wohnungen.","translation":"هر دو خونه رو مقایسه می کنم."},{"text":"Ich bin mir nicht sicher.","translation":"مطمئن نیستم."},{"text":"Morgen sehe ich die Wohnung an.","translation":"فردا خونه رو می بینم."}]','Ich habe mich entschieden.','تصمیمم رو گرفتم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_070=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='Weil sie ruhiger und näher an der Arbeit ist.' AND part_of_speech='phrase' AND translation='چون آروم تره و به محل کار نزدیک تره.' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Weil sie ruhiger und näher an der Arbeit ist.','Weil sie ruhiger und näher an der Arbeit ist.','phrase','چون آروم تره و به محل کار نزدیک تره.',43,'{"type":"sentence_pattern"}','[{"text":"Weil die erste Wohnung größer ist.","translation":"چون خونه اول بزرگ تره."},{"text":"Weil der Balkon größer ist.","translation":"چون بالکن بزرگ تره."},{"text":"Weil sie näher an der Straße ist.","translation":"چون به خیابون نزدیک تره."},{"text":"Die Wohnung ist ruhig.","translation":"خونه آرومه."},{"text":"Die Arbeit ist näher.","translation":"محل کار نزدیک تره."}]','Weil sie ruhiger und näher an der Arbeit ist.','چون آروم تره و به محل کار نزدیک تره.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_071=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='Ich möchte die Wohnung nehmen.' AND part_of_speech='phrase' AND translation='می خوام این خونه رو بگیرم.' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich möchte die Wohnung nehmen.','Ich möchte die Wohnung nehmen.','phrase','می خوام این خونه رو بگیرم.',43,'{"type":"sentence_pattern"}','[{"text":"Ich möchte die Wohnung noch ansehen.","translation":"می خوام دوباره خونه رو ببینم."},{"text":"Ich möchte den Mietvertrag lesen.","translation":"می خوام قرارداد اجاره رو بخونم."},{"text":"Ich rufe die Vermieterin an.","translation":"به صاحبخانه زنگ می زنم."},{"text":"Ich möchte noch warten.","translation":"هنوز می خوام صبر کنم."},{"text":"Ich nehme die erste Wohnung.","translation":"خونه اول رو می گیرم."}]','Ich möchte die Wohnung nehmen.','می خوام این خونه رو بگیرم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_072=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='Jetzt beginnt etwas Neues.' AND part_of_speech='phrase' AND translation='حالا یک چیز تازه شروع می شه.' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Jetzt beginnt etwas Neues.','Jetzt beginnt etwas Neues.','phrase','حالا یک چیز تازه شروع می شه.',43,'{"type":"sentence_pattern"}','[{"text":"Jetzt suche ich etwas Neues.","translation":"حالا دنبال یک چیز تازه می گردم."},{"text":"Morgen beginnt der Umzug.","translation":"فردا اسباب کشی شروع می شه."},{"text":"Ich richte mein Zimmer ein.","translation":"اتاقم رو می چینم."},{"text":"Jetzt bin ich mir sicher.","translation":"حالا مطمئنم."},{"text":"Die Entscheidung war gut.","translation":"تصمیم خوبی بود."}]','Jetzt beginnt etwas Neues.','حالا یک چیز تازه شروع می شه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_073=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Die Entscheidung','تصمیم نهایی','Mia hat beide Wohnungen verglichen und teilt Sara ihre endgültige Entscheidung mit.','میا هر دو خانه را مقایسه کرده و تصمیم نهایی اش را به سارا می گوید.','story','mia-sara-b1-decisions',17,43,150,1,'validated','{"relationship":"friends","context":"final-apartment-decision","cefr":"B1","storyArc":"decision-reasons-contract-new-start"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Hast du beide Wohnungen verglichen?','هر دو خونه رو مقایسه کردی؟',43,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"beide","partOfSpeech":"pronoun","surface":"beide","translation":"هر دو"},{"form":"plural","lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnungen","translation":"خانه / آپارتمان"},{"form":"past_participle","lemma":"vergleichen","partOfSpeech":"verb","suffix":"?","surface":"verglichen","translation":"مقایسه کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ja, ich habe mich entschieden.','آره، تصمیمم رو گرفتم.',43,NULL,NULL,'ja ich habe mich entschieden',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","surface":"habe","translation":"داشتن"},{"form":"reflexive_accusative_1sg","lemma":"ich","meaning":"خودم","partOfSpeech":"pronoun","surface":"mich","translation":"من"},{"form":"past_participle","lemma":"sich entscheiden","partOfSpeech":"verb","suffix":".","surface":"entschieden","translation":"تصمیم گرفتن"}]','Perfekt با sich entscheiden','در زمان Perfekt می گوییم: Ich habe mich entschieden.','{"pattern":"subject + haben + reflexive pronoun + entschieden"}','{"cefr":"B1"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Welche Wohnung hast du gewählt?','کدوم خونه رو انتخاب کردی؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"welche","partOfSpeech":"pronoun","surface":"Welche","translation":"کدام / چه"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"past_participle","lemma":"wählen","partOfSpeech":"verb","suffix":"?","surface":"gewählt","translation":"انتخاب کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Die zweite Wohnung passt besser zu meinem Alltag.','خونه دوم بیشتر با زندگی روزمره ام جور درمیاد.',43,NULL,NULL,'die zweite wohnung passt besser zu meinem alltag',NULL,'[{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"Die","translation":"حرف تعریف"},{"form":"nominative_feminine","lemma":"zweite","partOfSpeech":"adjective","surface":"zweite","translation":"دومین"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"form":"present_3sg","lemma":"passen","partOfSpeech":"verb","surface":"passt","translation":"اندازه بودن / مناسب بودن"},{"lemma":"besser","partOfSpeech":"adverb","surface":"besser","translation":"بهتر"},{"lemma":"zu","partOfSpeech":"preposition","surface":"zu","translation":"به / به سمت"},{"form":"dative_masculine","lemma":"mein","partOfSpeech":"determiner","surface":"meinem","translation":"مال من / من"},{"lemma":"Alltag","partOfSpeech":"noun","suffix":".","surface":"Alltag","translation":"زندگی روزمره"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,5,'character','Bist du dir jetzt sicher?','حالا مطمئنی؟',43,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"sein","partOfSpeech":"verb","surface":"Bist","translation":"بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"dative_2sg","lemma":"du","meaning":"برای خودت","partOfSpeech":"pronoun","surface":"dir","translation":"تو"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"lemma":"sicher","partOfSpeech":"adjective","suffix":"?","surface":"sicher","translation":"مطمئن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,6,'learner','Ja, ich bin mir jetzt sicher.','آره، حالا مطمئنم.',43,NULL,NULL,'ja ich bin mir jetzt sicher',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"sein","partOfSpeech":"verb","surface":"bin","translation":"بودن"},{"form":"dative_1sg","lemma":"ich","meaning":"برای خودم","partOfSpeech":"pronoun","surface":"mir","translation":"من"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"lemma":"sicher","partOfSpeech":"adjective","suffix":".","surface":"sicher","translation":"مطمئن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_6=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Warum diese Wohnung?','چرا این خانه؟','Mia begründet ihre Wahl und akzeptiert bewusst den kleineren Raum als Kompromiss.','میا دلیل انتخابش را می گوید و فضای کوچک تر را آگاهانه به عنوان یک مصالحه می پذیرد.','story','mia-sara-b1-decisions',18,43,150,2,'validated','{"relationship":"friends","context":"final-apartment-decision","cefr":"B1","storyArc":"decision-reasons-contract-new-start"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,1,'character','Warum hast du die zweite Wohnung gewählt?','چرا خونه دوم رو انتخاب کردی؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"accusative_feminine","lemma":"zweite","partOfSpeech":"adjective","surface":"zweite","translation":"دومین"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"form":"past_participle","lemma":"wählen","partOfSpeech":"verb","suffix":"?","surface":"gewählt","translation":"انتخاب کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Weil sie ruhiger und näher an der Arbeit ist.','چون آروم تره و به محل کار نزدیک تره.',43,NULL,NULL,'weil sie ruhiger und näher an der arbeit ist',NULL,'[{"lemma":"weil","partOfSpeech":"conjunction","surface":"Weil","translation":"چون / زیرا"},{"lemma":"sie","partOfSpeech":"pronoun","surface":"sie","translation":"او / آن ها"},{"form":"comparative","lemma":"ruhig","partOfSpeech":"adjective","surface":"ruhiger","translation":"آرام"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"form":"comparative","lemma":"nah","partOfSpeech":"adjective","surface":"näher","translation":"نزدیک"},{"lemma":"an","partOfSpeech":"preposition","surface":"an","translation":"در / در روز"},{"form":"dative_feminine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Arbeit","partOfSpeech":"noun","surface":"Arbeit","translation":"کار"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","suffix":".","surface":"ist","translation":"بودن"}]','دلیل در گذشته','حتی وقتی تصمیم در گذشته گرفته شده، دلیل فعلی با weil و فعل در پایان بیان می شود.','{"pattern":"weil + subject + predicates + finite verb"}','{"cefr":"B1"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,3,'character','Und der kleinere Raum?','و فضای کوچک تر چی؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"und","partOfSpeech":"conjunction","surface":"Und","translation":"و"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"form":"nominative_masculine_comparative","lemma":"klein","partOfSpeech":"adjective","surface":"kleinere","translation":"کوچک"},{"lemma":"Raum","partOfSpeech":"noun","suffix":"?","surface":"Raum","translation":"فضا / اتاق"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Damit kann ich leben.','می تونم باهاش کنار بیام.',43,NULL,NULL,'damit kann ich leben',NULL,'[{"lemma":"damit","partOfSpeech":"adverb","surface":"Damit","translation":"با آن / با این موضوع"},{"form":"present_1sg","lemma":"können","partOfSpeech":"verb","surface":"kann","translation":"توانستن / بتوان"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"leben","partOfSpeech":"verb","suffix":".","surface":"leben","translation":"زندگی کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,5,'character','Was ist mit dem Balkon?','بالکن چی؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"mit","partOfSpeech":"preposition","surface":"mit","translation":"با"},{"form":"dative_masculine","lemma":"der","partOfSpeech":"article","surface":"dem","translation":"حرف تعریف"},{"lemma":"Balkon","partOfSpeech":"noun","suffix":"?","surface":"Balkon","translation":"بالکن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,6,'learner','Er ist klein, aber er reicht mir.','کوچیکه، اما برای من کافیه.',43,NULL,NULL,'er ist klein aber er reicht mir',NULL,'[{"lemma":"er","partOfSpeech":"pronoun","surface":"Er","translation":"او (مذکر)"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"klein","partOfSpeech":"adjective","suffix":",","surface":"klein","translation":"کوچک"},{"lemma":"aber","partOfSpeech":"conjunction","surface":"aber","translation":"اما"},{"lemma":"er","partOfSpeech":"pronoun","surface":"er","translation":"او (مذکر)"},{"form":"present_3sg","lemma":"reichen","partOfSpeech":"verb","surface":"reicht","translation":"کافی بودن"},{"form":"dative_1sg","lemma":"ich","meaning":"برای من","partOfSpeech":"pronoun","suffix":".","surface":"mir","translation":"من"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Der nächste Schritt','قدم بعدی','Mia kontaktiert die Vermieterin, sagt verbindlich zu und prüft anschließend den Mietvertrag.','میا با صاحبخانه تماس می گیرد، موافقتش را اعلام می کند و بعد قرارداد اجاره را بررسی می کند.','story','mia-sara-b1-decisions',19,43,150,3,'validated','{"relationship":"friends","context":"final-apartment-decision","cefr":"B1","storyArc":"decision-reasons-contract-new-start"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,1,'character','Was machst du jetzt?','حالا چه کار می کنی؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_2sg","lemma":"machen","partOfSpeech":"verb","surface":"machst","translation":"انجام دادن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"jetzt","partOfSpeech":"adverb","suffix":"?","surface":"jetzt","translation":"حالا / اکنون"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ich rufe die Vermieterin an.','به صاحبخانه زنگ می زنم.',43,NULL,NULL,'ich rufe die vermieterin an',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg_stem","lemma":"anrufen","partOfSpeech":"verb","surface":"rufe","translation":"زنگ زدن / تماس گرفتن"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Vermieterin","partOfSpeech":"noun","surface":"Vermieterin","translation":"صاحبخانه زن"},{"form":"separated_prefix","lemma":"anrufen","partOfSpeech":"verb","suffix":".","surface":"an","translation":"زنگ زدن / تماس گرفتن"}]','فعل جداشدنی anrufen','در جمله اصلی، پیشوند an در پایان می آید: Ich rufe ... an.','{"pattern":"subject + rufen + object + an"}','{"cefr":"B1"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,3,'character','Was möchtest du sagen?','چی می خوای بگی؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"sagen","partOfSpeech":"verb","suffix":"?","surface":"sagen","translation":"گفتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Ich möchte die Wohnung nehmen.','می خوام این خونه رو بگیرم.',43,NULL,NULL,'ich möchte die wohnung nehmen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"lemma":"nehmen","partOfSpeech":"verb","suffix":".","surface":"nehmen","translation":"گرفتن / مصرف کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,5,'character','Musst du noch etwas prüfen?','هنوز باید چیزی رو بررسی کنی؟',43,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"müssen","partOfSpeech":"verb","surface":"Musst","translation":"مجبور بودن / باید"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"etwas","partOfSpeech":"pronoun","surface":"etwas","translation":"چیزی / یک چیزی"},{"lemma":"prüfen","partOfSpeech":"verb","suffix":"?","surface":"prüfen","translation":"بررسی کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,6,'learner','Ja, ich lese den Mietvertrag genau.','آره، قرارداد اجاره رو دقیق می خونم.',43,NULL,NULL,'ja ich lese den mietvertrag genau',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"lesen","partOfSpeech":"verb","surface":"lese","translation":"خواندن"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Mietvertrag","partOfSpeech":"noun","surface":"Mietvertrag","translation":"قرارداد اجاره"},{"lemma":"genau","partOfSpeech":"adverb","suffix":".","surface":"genau","translation":"دقیقا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Etwas Neues beginnt','شروع یک چیز تازه','Mia blickt erleichtert auf den Umzug und plant als Erstes ihr neues Arbeitszimmer.','میا با خیال آسوده به اسباب کشی فکر می کند و اول از همه برای اتاق کار جدیدش برنامه دارد.','story','mia-sara-b1-decisions',20,43,150,4,'validated','{"relationship":"friends","context":"final-apartment-decision","cefr":"B1","storyArc":"decision-reasons-contract-new-start"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,1,'character','Freust du dich auf den Umzug?','برای اسباب کشی خوشحالی؟',43,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"sich freuen","partOfSpeech":"verb","surface":"Freust","translation":"خوشحال بودن / خوشحال شدن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"reflexive_accusative_2sg","lemma":"du","meaning":"خودت","partOfSpeech":"pronoun","surface":"dich","translation":"تو"},{"lemma":"auf","partOfSpeech":"preposition","surface":"auf","translation":"روی / برای"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Umzug","partOfSpeech":"noun","suffix":"?","surface":"Umzug","translation":"اسباب کشی"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Ja, jetzt beginnt etwas Neues.','آره، حالا یک چیز تازه شروع می شه.',43,NULL,NULL,'ja jetzt beginnt etwas neues',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"form":"present_3sg","lemma":"beginnen","partOfSpeech":"verb","surface":"beginnt","translation":"شروع شدن / آغاز کردن"},{"lemma":"etwas","partOfSpeech":"pronoun","surface":"etwas","translation":"چیزی / یک چیزی"},{"form":"nominalized_neuter","lemma":"neu","partOfSpeech":"adjective","suffix":".","surface":"Neues","translation":"جدید / تازه"}]','صفت اسمی شده','در etwas Neues، صفت neu مثل اسم استفاده می شود و با حرف بزرگ نوشته می شود.','{"pattern":"etwas + nominalized adjective"}','{"cefr":"B1"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,3,'character','Was verändert sich zuerst?','اول چی تغییر می کنه؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_3sg","lemma":"verändern","partOfSpeech":"verb","surface":"verändert","translation":"تغییر دادن"},{"form":"reflexive_accusative_3sg","lemma":"sich","partOfSpeech":"pronoun","surface":"sich","translation":"خود / خودش"},{"lemma":"zuerst","partOfSpeech":"adverb","suffix":"?","surface":"zuerst","translation":"اول / ابتدا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Ich richte mein Arbeitszimmer ein.','اتاق کارم رو می چینم.',43,NULL,NULL,'ich richte mein arbeitszimmer ein',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg_stem","lemma":"einrichten","partOfSpeech":"verb","surface":"richte","translation":"چیدن / آماده کردن"},{"form":"accusative_neuter","lemma":"mein","partOfSpeech":"determiner","surface":"mein","translation":"مال من / من"},{"lemma":"Arbeitszimmer","partOfSpeech":"noun","surface":"Arbeitszimmer","translation":"اتاق کار"},{"form":"separated_prefix","lemma":"einrichten","partOfSpeech":"verb","suffix":".","surface":"ein","translation":"چیدن / آماده کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,5,'character','Das war eine gute Entscheidung.','تصمیم خوبی بود.',43,NULL,NULL,NULL,NULL,'[{"lemma":"das","partOfSpeech":"pronoun","surface":"Das","translation":"این / آن"},{"form":"preterite_3sg","lemma":"sein","partOfSpeech":"verb","surface":"war","translation":"بودن"},{"form":"nominative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"form":"nominative_feminine","lemma":"gut","partOfSpeech":"adjective","surface":"gute","translation":"خوب"},{"lemma":"Entscheidung","partOfSpeech":"noun","suffix":".","surface":"Entscheidung","translation":"تصمیم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Danke. Jetzt fühle ich mich erleichtert.','ممنون. حالا احساس آسودگی می کنم.',43,NULL,NULL,'danke jetzt fühle ich mich erleichtert',NULL,'[{"lemma":"danke","partOfSpeech":"interjection","suffix":".","surface":"Danke","translation":"ممنون"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"Jetzt","translation":"حالا / اکنون"},{"form":"present_1sg","lemma":"sich fühlen","partOfSpeech":"verb","surface":"fühle","translation":"احساس کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"reflexive_accusative_1sg","lemma":"ich","meaning":"خودم","partOfSpeech":"pronoun","surface":"mich","translation":"من"},{"lemma":"erleichtert","partOfSpeech":"adjective","suffix":".","surface":"erleichtert","translation":"آسوده / سبک شده"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_24=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_070,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_023,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_025,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_018,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_029,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_030,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_033,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_037,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_039,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_071,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_034,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_040,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_002,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_041,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_011,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_042,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_043,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_046,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_047,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_049,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_051,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_052,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_072,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_053,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_054,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_019,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_056,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_057,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_060,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_061,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_062,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_063,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_018,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_064,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_067,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_068,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_069,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_073,'new',1,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_070,'عبارت کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_008,'واژه کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به پرسش سارا گوش کن',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ میا را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به پرسش بعدی گوش کن',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'پاسخ را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_008,'معنی واژه کلیدی را انتخاب کن',NULL,43,'{"mode":"word_translation","question":"entschieden در این درس چه معنی دارد؟","choices":["تصمیم گرفتن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,43,'{"source":"lesson_story","question":"میا کدام خانه را انتخاب کرده است؟","choices":["خانه دوم","خانه اول","هیچ کدام"],"correctIndex":0}','{"cefr":"B1","series":85}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_071,'عبارت کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_010,'واژه کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به پرسش سارا گوش کن',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ میا را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به پرسش بعدی گوش کن',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'پاسخ را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_010,'معنی واژه کلیدی را انتخاب کن',NULL,43,'{"mode":"word_translation","question":"gewählt در این درس چه معنی دارد؟","choices":["انتخاب کردن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,43,'{"source":"lesson_story","question":"میا درباره فضای کوچک تر چه نظری دارد؟","choices":["می تواند با آن کنار بیاید","به همین دلیل منصرف شده","می خواهد آن را بزرگ کند"],"correctIndex":0}','{"cefr":"B1","series":85}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_072,'عبارت کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_051,'واژه کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به پرسش سارا گوش کن',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ میا را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به پرسش بعدی گوش کن',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'پاسخ را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_051,'معنی واژه کلیدی را انتخاب کن',NULL,43,'{"mode":"word_translation","question":"Mietvertrag در این درس چه معنی دارد؟","choices":["قرارداد اجاره","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,43,'{"source":"lesson_story","question":"میا بعد از تماس با صاحبخانه چه چیزی را بررسی می کند؟","choices":["قرارداد اجاره","زمان حرکت قطار","فهرست خرید"],"correctIndex":0}','{"cefr":"B1","series":85}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_073,'عبارت کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_056,'واژه کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به پرسش سارا گوش کن',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ میا را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به پرسش بعدی گوش کن',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'پاسخ را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_056,'معنی واژه کلیدی را انتخاب کن',NULL,43,'{"mode":"word_translation","question":"beginnt در این درس چه معنی دارد؟","choices":["شروع شدن / آغاز کردن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,43,'{"source":"lesson_story","question":"میا ابتدا کدام بخش خانه جدید را آماده می کند؟","choices":["اتاق کار","بالکن","آشپزخانه"],"correctIndex":0}','{"cefr":"B1","series":85}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 085 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mia-sara-b1-decisions' AND storyline_order BETWEEN 17 AND 20;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 085 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 085 turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 085 activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 085 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) AS n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) duplicate_pairs;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple detected.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  UPDATE modules SET status='complete' WHERE id=v_module;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_085_v9();
DROP PROCEDURE IF EXISTS import_nova_series_085_v9;
-- END SERIES 085

-- BEGIN SERIES 086
-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 086
-- B1 > Arbeit & Zusammenarbeit > Wir müssen das heute fertig machen
-- Requires canonical Nova v9.0 and QA-passed staged Series 081-085.
-- Uses the unchanged Nova v9.0 schema; contains no schema DDL.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_086_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_086_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_prior_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_martin BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_001 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_002 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_003 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_004 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_005 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_006 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_007 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_008 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_009 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_010 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_011 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_012 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_013 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_014 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_015 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_016 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_017 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_018 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_019 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_020 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_021 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_022 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_023 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_024 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_025 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_026 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_027 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_028 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_029 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_030 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_031 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_032 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_033 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_034 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_035 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_036 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_037 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_038 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_039 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_040 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_041 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_042 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_043 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_044 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_045 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_046 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_047 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_048 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_049 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_050 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_051 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_052 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_053 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_054 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_055 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_056 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_057 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_058 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_059 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_060 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_061 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_062 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_063 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_064 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_065 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_066 BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE v_t_23 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_24 BIGINT UNSIGNED DEFAULT NULL;

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='B1' AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Level from Series 081 not found.'; END IF;
  SELECT id INTO v_prior_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_prior_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 from Series 081 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_prior_module AND sort_order BETWEEN 1 AND 5 AND status IN ('validated','complete');
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081-085 Chapters must be validated before Series 086.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_prior_module AND c.sort_order BETWEEN 1 AND 5 AND l.storyline_key='mia-sara-b1-decisions' AND l.storyline_order BETWEEN 1 AND 20;
  IF v_count<>20 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081-085 storyline orders 1-20 are required.'; END IF;
  UPDATE modules SET status='complete' WHERE id=v_prior_module;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_level,'Arbeit & Zusammenarbeit','کار و همکاری','Gemeinsam eine Arbeitsaufgabe planen, Probleme erklären und schrittweise eine Lösung finden.','یک کار را با هم برنامه ریزی کن، مشکلات را توضیح بده و قدم به قدم راه حل پیدا کن.','💼',44,46,2,'active','{"focus":"work-and-collaboration","grammarApproach":"context-first"}');
    SET v_module=LAST_INSERT_ID();
  END IF;

  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Wir müssen das heute fertig machen','باید امروز تمومش کنیم','Eine gemeinsame Aufgabe planen und notwendige Schritte bis zu einem Termin erledigen.','برای انجام یک کار مشترک تا موعد مشخص برنامه ریزی کن و قدم های لازم را پیش ببر.',NULL,44,44,1,'draft' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=1);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Kannst du mir erklären, wie das geht?','می تونی توضیح بدی چطور انجام می شه؟','Um eine verständliche Erklärung für einen Arbeitsablauf bitten.','برای یک روند کاری توضیح روشن بخواه.',NULL,44,45,2,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=2);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Ich glaube, dass wir mehr Zeit brauchen','فکر می کنم وقت بیشتری لازم داریم','Eine Einschätzung mit dass äußern und den Zeitbedarf begründen.','با dass نظرت را بیان کن و نیاز به زمان بیشتر را توضیح بده.',NULL,45,45,3,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=3);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Wenn du willst, helfe ich dir','اگه بخوای کمکت می کنم','Hilfe anbieten und eine Bedingung mit wenn formulieren.','پیشنهاد کمک بده و یک شرط را با wenn بیان کن.',NULL,45,46,4,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=4);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Wir haben das Problem gelöst','مشکل رو حل کردیم','Eine gelöste Aufgabe zusammenfassen und die Zusammenarbeit abschließen.','حل یک کار را جمع بندی کن و همکاری را به پایان برسان.',NULL,46,46,5,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=5);

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 01 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Wir müssen das heute fertig machen' AND title_translation='باید امروز تمومش کنیم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 086 canonical Chapter title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 01 must be empty before Series 086 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;
  SELECT id INTO v_c_martin FROM characters WHERE course_id=v_course AND name='Martin' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_martin IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Martin not found.'; END IF;
  IF v_c_anna=v_c_martin THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Anna and Martin must be distinct Characters.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='aber' AND part_of_speech='conjunction' AND translation='اما' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: aber | conjunction'; END IF;

  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='Arbeit' AND part_of_speech='noun' AND translation='کار' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Arbeit | noun'; END IF;

  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='auch' AND part_of_speech='adverb' AND translation='هم / همچنین' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auch | adverb'; END IF;

  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='aufteilen' AND part_of_speech='verb' AND translation='تقسیم کردن' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'aufteilen','aufteilen','verb','تقسیم کردن',44,'{"prefix":"auf","type":"separable_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Dann teilen wir die Arbeit auf.','پس کار رو تقسیم می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_004=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='beginnen' AND part_of_speech='verb' AND translation='شروع شدن / آغاز کردن' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: beginnen | verb'; END IF;

  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='Besprechung' AND part_of_speech='noun' AND translation='جلسه' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Besprechung','Besprechung','noun','جلسه',44,'{"gender":"feminine","plural":"Besprechungen"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Wann beginnt die Besprechung?','جلسه کی شروع می شه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_006=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='Bild' AND part_of_speech='noun' AND translation='تصویر' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Bild','Bild','noun','تصویر',44,'{"gender":"neuter","plural":"Bilder"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Kannst du auch die Bilder prüfen?','می تونی تصویرها رو هم بررسی کنی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_007=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='bis' AND part_of_speech='preposition' AND translation='تا' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: bis | preposition'; END IF;

  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;

  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='Dann fehlt nur noch die letzte Kontrolle.' AND part_of_speech='phrase' AND translation='پس فقط بررسی نهایی مونده.' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Dann fehlt nur noch die letzte Kontrolle.','Dann fehlt nur noch die letzte Kontrolle.','phrase','پس فقط بررسی نهایی مونده.',45,'{"type":"sentence_pattern"}','[{"text":"Dann fehlt nur noch der Text.","translation":"پس فقط متن مونده."},{"text":"Die Kontrolle ist schon fertig.","translation":"بررسی نهایی از قبل تموم شده."},{"text":"Wir prüfen nur die Bilder.","translation":"فقط تصویرها رو بررسی می کنیم."},{"text":"Die Zahlen fehlen noch.","translation":"عددها هنوز آماده نیستند."},{"text":"Dann beginnen wir die Besprechung.","translation":"پس جلسه رو شروع می کنیم."}]','Dann fehlt nur noch die letzte Kontrolle.','پس فقط بررسی نهایی مونده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='Dann teilen wir die Arbeit auf.' AND part_of_speech='phrase' AND translation='پس کار رو تقسیم می کنیم.' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Dann teilen wir die Arbeit auf.','Dann teilen wir die Arbeit auf.','phrase','پس کار رو تقسیم می کنیم.',44,'{"type":"sentence_pattern"}','[{"text":"Dann prüfen wir alles zusammen.","translation":"پس همه چیز رو با هم بررسی می کنیم."},{"text":"Ich korrigiere nur den Text.","translation":"فقط متن رو اصلاح می کنم."},{"text":"Du prüfst die Bilder.","translation":"تو تصویرها رو بررسی می کنی."},{"text":"Wir beginnen um vier Uhr.","translation":"ساعت چهار شروع می کنیم."},{"text":"Die Arbeit ist schon fertig.","translation":"کار از قبل آماده است."}]','Dann teilen wir die Arbeit auf.','پس کار رو تقسیم می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;

  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='Datei' AND part_of_speech='noun' AND translation='فایل' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Datei','Datei','noun','فایل',45,'{"gender":"feminine","plural":"Dateien"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Die neue Datei lässt sich nicht öffnen.','فایل جدید باز نمی شه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;

  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='dort' AND part_of_speech='adverb' AND translation='آنجا' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dort | adverb'; END IF;

  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='drei' AND part_of_speech='number' AND translation='سه' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: drei | number'; END IF;

  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;

  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='fehlen' AND part_of_speech='verb' AND translation='کم بودن / وجود نداشتن' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'fehlen','fehlen','verb','کم بودن / وجود نداشتن',44,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Dann fehlt nur noch die letzte Kontrolle.','پس فقط بررسی نهایی مونده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='fehlend' AND part_of_speech='adjective' AND translation='ناقص / جاافتاده' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'fehlend','fehlend','adjective','ناقص / جاافتاده',45,'{"type":"participle_adjective"}','[{"text":"fertig","translation":"آماده"},{"text":"wichtig","translation":"مهم"},{"text":"neu","translation":"جدید"},{"text":"ruhig","translation":"آرام"},{"text":"klein","translation":"کوچک"}]','Dann kopiere ich die fehlenden Seiten.','پس صفحه های جاافتاده رو کپی می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_019=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='fertig' AND part_of_speech='adjective' AND translation='تمام / آماده' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fertig | adjective'; END IF;

  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;

  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='heute' AND part_of_speech='adverb' AND translation='امروز' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: heute | adverb'; END IF;

  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;

  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;

  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='Ja, wenn nichts Neues passiert.' AND part_of_speech='phrase' AND translation='آره، اگه اتفاق تازه ای نیفته.' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ja, wenn nichts Neues passiert.','Ja, wenn nichts Neues passiert.','phrase','آره، اگه اتفاق تازه ای نیفته.',45,'{"type":"sentence_pattern"}','[{"text":"Ja, wenn die Datei sich öffnen lässt.","translation":"آره، اگه فایل باز بشه."},{"text":"Nein, die Seiten fehlen noch.","translation":"نه، صفحه ها هنوز نیستند."},{"text":"Ja, ich kopiere die ganze Datei.","translation":"آره، کل فایل رو کپی می کنم."},{"text":"Wenn etwas passiert, rufe ich an.","translation":"اگه چیزی اتفاق بیفته، زنگ می زنم."},{"text":"Die vorherige Version ist fertig.","translation":"نسخه قبلی آماده است."}]','Ja, wenn nichts Neues passiert.','آره، اگه اتفاق تازه ای نیفته.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_025=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;

  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='Kontrolle' AND part_of_speech='noun' AND translation='بررسی نهایی' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Kontrolle','Kontrolle','noun','بررسی نهایی',45,'{"gender":"feminine","plural":"Kontrollen"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Dann fehlt nur noch die letzte Kontrolle.','پس فقط بررسی نهایی مونده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_027=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='kopieren' AND part_of_speech='verb' AND translation='کپی کردن' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'kopieren','kopieren','verb','کپی کردن',45,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Dann kopiere ich die fehlenden Seiten.','پس صفحه های جاافتاده رو کپی می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_028=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='korrigieren' AND part_of_speech='verb' AND translation='اصلاح کردن' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'korrigieren','korrigieren','verb','اصلاح کردن',44,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Der Text ist auch korrigiert.','متن هم اصلاح شده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_029=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='lassen' AND part_of_speech='verb' AND translation='گذاشتن / امکان دادن' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'lassen','lassen','verb','گذاشتن / امکان دادن',45,'{"type":"irregular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Die neue Datei lässt sich nicht öffnen.','فایل جدید باز نمی شه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_030=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='letzte' AND part_of_speech='adjective' AND translation='آخرین' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'letzte','letzte','adjective','آخرین',44,'{"type":"adjective"}','[{"text":"fertig","translation":"آماده"},{"text":"wichtig","translation":"مهم"},{"text":"neu","translation":"جدید"},{"text":"ruhig","translation":"آرام"},{"text":"klein","translation":"کوچک"}]','Dann fehlt nur noch die letzte Kontrolle.','پس فقط بررسی نهایی مونده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_031=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: machen | verb'; END IF;

  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: müssen | verb'; END IF;

  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='neu' AND part_of_speech='adjective' AND translation='جدید / تازه' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: neu | adjective'; END IF;

  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nicht | particle'; END IF;

  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='nichts' AND part_of_speech='pronoun' AND translation='هیچ چیز' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nichts','nichts','pronoun','هیچ چیز',45,'{}','[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"das","translation":"این"},{"text":"etwas","translation":"چیزی"},{"text":"beide","translation":"هر دو"}]','Ja, wenn nichts Neues passiert.','آره، اگه اتفاق تازه ای نیفته.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_036=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;

  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='nur' AND part_of_speech='particle' AND translation='فقط' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nur','nur','particle','فقط',45,'{}','[{"text":"nicht","translation":"نه"},{"text":"auch","translation":"هم"},{"text":"noch","translation":"هنوز"},{"text":"zu","translation":"بیش از حد"},{"text":"ja","translation":"بله"}]','Dann fehlt nur noch die letzte Kontrolle.','پس فقط بررسی نهایی مونده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_038=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='öffnen' AND part_of_speech='verb' AND translation='باز کردن' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'öffnen','öffnen','verb','باز کردن',45,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Die neue Datei lässt sich nicht öffnen.','فایل جدید باز نمی شه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_039=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='passieren' AND part_of_speech='verb' AND translation='اتفاق افتادن' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'passieren','passieren','verb','اتفاق افتادن',45,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Ja, wenn nichts Neues passiert.','آره، اگه اتفاق تازه ای نیفته.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_040=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='Präsentation' AND part_of_speech='noun' AND translation='ارائه' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Präsentation','Präsentation','noun','ارائه',44,'{"gender":"feminine","plural":"Präsentationen"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Ist die Präsentation fertig?','ارائه آماده است؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='prüfen' AND part_of_speech='verb' AND translation='بررسی کردن' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: prüfen | verb'; END IF;

  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='rechtzeitig' AND part_of_speech='adverb' AND translation='به موقع' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'rechtzeitig','rechtzeitig','adverb','به موقع',45,'{}','[{"text":"heute","translation":"امروز"},{"text":"morgen","translation":"فردا"},{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"zusammen","translation":"با هم"}]','Ja, dann werden wir rechtzeitig fertig.','آره، اون وقت به موقع تمومش می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_043=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='schaffen' AND part_of_speech='verb' AND translation='از عهده برآمدن' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schaffen','schaffen','verb','از عهده برآمدن',44,'{"type":"irregular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Schaffst du das bis drei Uhr?','تا ساعت سه از پسش برمیای؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_044=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;

  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='Seite' AND part_of_speech='noun' AND translation='صفحه' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Seite','Seite','noun','صفحه',45,'{"gender":"feminine","plural":"Seiten"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Ja, aber dort fehlen zwei Seiten.','آره، اما دو صفحه اونجا نیست.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_046=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='sich' AND part_of_speech='pronoun' AND translation='خود / خودش' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sich | pronoun'; END IF;

  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='sie' AND part_of_speech='pronoun' AND translation='او / آن ها' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sie | pronoun'; END IF;

  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='sofort' AND part_of_speech='adverb' AND translation='فورا / همین الان' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sofort','sofort','adverb','فورا / همین الان',44,'{}','[{"text":"heute","translation":"امروز"},{"text":"morgen","translation":"فردا"},{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"zusammen","translation":"با هم"}]','Ja, das mache ich sofort.','آره، همین الان انجامش می دم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_049=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='Text' AND part_of_speech='noun' AND translation='متن' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Text','Text','noun','متن',44,'{"gender":"masculine","plural":"Texte"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Der Text ist auch korrigiert.','متن هم اصلاح شده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_050=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='Uhr' AND part_of_speech='noun' AND translation='ساعت' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Uhr | noun'; END IF;

  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='um' AND part_of_speech='preposition' AND translation='در ساعت / حوالی' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: um | preposition'; END IF;

  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='Version' AND part_of_speech='noun' AND translation='نسخه' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Version','Version','noun','نسخه',45,'{"gender":"feminine","plural":"Versionen"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Hast du die vorherige Version?','نسخه قبلی رو داری؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_053=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='vier' AND part_of_speech='number' AND translation='چهار' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vier','vier','number','چهار',44,'{}','[{"text":"eins","translation":"یک"},{"text":"zwei","translation":"دو"},{"text":"drei","translation":"سه"},{"text":"fünf","translation":"پنج"},{"text":"sechs","translation":"شش"}]','Um vier Uhr.','ساعت چهار.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_054=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='vorherig' AND part_of_speech='adjective' AND translation='قبلی' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vorherig','vorherig','adjective','قبلی',45,'{"type":"adjective"}','[{"text":"fertig","translation":"آماده"},{"text":"wichtig","translation":"مهم"},{"text":"neu","translation":"جدید"},{"text":"ruhig","translation":"آرام"},{"text":"klein","translation":"کوچک"}]','Hast du die vorherige Version?','نسخه قبلی رو داری؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_055=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='wann' AND part_of_speech='adverb' AND translation='کی / چه زمانی' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wann | adverb'; END IF;

  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;

  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='weit' AND part_of_speech='adverb' AND translation='تا چه حد / چقدر جلو' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'weit','weit','adverb','تا چه حد / چقدر جلو',45,'{}','[{"text":"heute","translation":"امروز"},{"text":"morgen","translation":"فردا"},{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"zusammen","translation":"با هم"}]','Wie weit bist du?','چقدر پیش رفتی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_058=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='wenn' AND part_of_speech='conjunction' AND translation='اگر / وقتی' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wenn','wenn','conjunction','اگر / وقتی',45,'{}','[{"text":"und","translation":"و"},{"text":"aber","translation":"اما"},{"text":"oder","translation":"یا"},{"text":"weil","translation":"چون"},{"text":"dann","translation":"بعد"}]','Ja, wenn nichts Neues passiert.','آره، اگه اتفاق تازه ای نیفته.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_059=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='werden' AND part_of_speech='verb' AND translation='شدن / خواهد' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'werden','werden','verb','شدن / خواهد',45,'{"type":"irregular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Ja, dann werden wir rechtzeitig fertig.','آره، اون وقت به موقع تمومش می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_060=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wie | adverb'; END IF;

  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;

  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='Wir müssen das heute fertig machen.' AND part_of_speech='phrase' AND translation='باید امروز تمومش کنیم.' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wir müssen das heute fertig machen.','Wir müssen das heute fertig machen.','phrase','باید امروز تمومش کنیم.',44,'{"type":"sentence_pattern"}','[{"text":"Wir können das morgen fertig machen.","translation":"می تونیم فردا تمومش کنیم."},{"text":"Die Präsentation ist schon fertig.","translation":"ارائه از قبل آماده است."},{"text":"Wir haben heute keine Zeit.","translation":"امروز وقت نداریم."},{"text":"Die Besprechung beginnt morgen.","translation":"جلسه فردا شروع می شه."},{"text":"Ich prüfe nur die Zahlen.","translation":"فقط عددها رو بررسی می کنم."}]','Wir müssen das heute fertig machen.','باید امروز تمومش کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_063=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='Zahl' AND part_of_speech='noun' AND translation='عدد / رقم' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Zahl','Zahl','noun','عدد / رقم',44,'{"gender":"feminine","plural":"Zahlen"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Die Zahlen sind fertig.','عددها آماده هستند.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_064=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='zusammen' AND part_of_speech='adverb' AND translation='با هم' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zusammen | adverb'; END IF;

  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='zwei' AND part_of_speech='number' AND translation='دو' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zwei | number'; END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_martin,'Heute noch fertig','تمام کردن کار در همین امروز','Anna und Martin prüfen den Stand einer Präsentation und erkennen, dass die letzten Zahlen vor der Besprechung fehlen.','آنا و مارتین وضعیت یک ارائه را بررسی می کنند و می بینند که عددهای نهایی پیش از جلسه آماده نیستند.','story','anna-martin-b1-project',1,44,150,1,'validated','{"relationship":"coworkers","context":"finish-presentation-together","cefr":"B1","storyArc":"plan-divide-fix-check"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,1,'character','Ist die Präsentation fertig?','ارائه آماده است؟',44,NULL,NULL,NULL,NULL,'[{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"Ist","translation":"بودن"},{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Präsentation","partOfSpeech":"noun","surface":"Präsentation","translation":"ارائه"},{"lemma":"fertig","partOfSpeech":"adjective","suffix":"?","surface":"fertig","translation":"تمام / آماده"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,2,'learner','Noch nicht. Wir müssen das heute fertig machen.','هنوز نه. باید امروز تمومش کنیم.',44,NULL,NULL,'noch nicht wir müssen das heute fertig machen',NULL,'[{"lemma":"noch","partOfSpeech":"adverb","surface":"Noch","translation":"هنوز"},{"lemma":"nicht","partOfSpeech":"particle","suffix":".","surface":"nicht","translation":"نه / نیست"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"Wir","translation":"ما"},{"form":"present_plural","lemma":"müssen","partOfSpeech":"verb","surface":"müssen","translation":"مجبور بودن / باید"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"lemma":"heute","partOfSpeech":"adverb","surface":"heute","translation":"امروز"},{"lemma":"fertig","partOfSpeech":"adjective","surface":"fertig","translation":"تمام / آماده"},{"lemma":"machen","partOfSpeech":"verb","suffix":".","surface":"machen","translation":"انجام دادن"}]','müssen برای ضرورت','برای کاری که باید حتما انجام شود از müssen و مصدر در پایان استفاده می کنیم.','{"pattern":"subject + müssen + object + infinitive"}','{"cefr":"B1"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,3,'character','Was fehlt noch?','دیگه چی آماده نیست؟',44,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_3sg","lemma":"fehlen","partOfSpeech":"verb","surface":"fehlt","translation":"کم بودن / وجود نداشتن"},{"lemma":"noch","partOfSpeech":"adverb","suffix":"?","surface":"noch","translation":"هنوز"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,4,'learner','Die letzten Zahlen fehlen.','عددهای نهایی آماده نیستند.',44,NULL,NULL,'die letzten zahlen fehlen',NULL,'[{"form":"nominative_plural","lemma":"der","partOfSpeech":"article","surface":"Die","translation":"حرف تعریف"},{"form":"nominative_plural","lemma":"letzte","partOfSpeech":"adjective","surface":"letzten","translation":"آخرین"},{"form":"plural","lemma":"Zahl","partOfSpeech":"noun","surface":"Zahlen","translation":"عدد / رقم"},{"form":"present_plural","lemma":"fehlen","partOfSpeech":"verb","suffix":".","surface":"fehlen","translation":"کم بودن / وجود نداشتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,5,'character','Wann beginnt die Besprechung?','جلسه کی شروع می شه؟',44,NULL,NULL,NULL,NULL,'[{"lemma":"wann","partOfSpeech":"adverb","surface":"Wann","translation":"کی / چه زمانی"},{"form":"present_3sg","lemma":"beginnen","partOfSpeech":"verb","surface":"beginnt","translation":"شروع شدن / آغاز کردن"},{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Besprechung","partOfSpeech":"noun","suffix":"?","surface":"Besprechung","translation":"جلسه"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,6,'learner','Um vier Uhr.','ساعت چهار.',44,NULL,NULL,'um vier uhr',NULL,'[{"lemma":"um","partOfSpeech":"preposition","surface":"Um","translation":"در ساعت / حوالی"},{"lemma":"vier","partOfSpeech":"number","surface":"vier","translation":"چهار"},{"lemma":"Uhr","partOfSpeech":"noun","suffix":".","surface":"Uhr","translation":"ساعت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_martin,'Die Arbeit aufteilen','تقسیم کردن کار','Anna und Martin teilen die offenen Aufgaben auf und legen fest, wer Text, Zahlen und Bilder prüft.','آنا و مارتین کارهای باقی مانده را تقسیم می کنند و مشخص می کنند چه کسی متن، عددها و تصویرها را بررسی کند.','story','anna-martin-b1-project',2,44,150,2,'validated','{"relationship":"coworkers","context":"finish-presentation-together","cefr":"B1","storyArc":"plan-divide-fix-check"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,1,'character','Wie schaffen wir das heute?','چطور امروز از پسش بربیایم؟',44,NULL,NULL,NULL,NULL,'[{"lemma":"wie","partOfSpeech":"adverb","surface":"Wie","translation":"چطور / چگونه"},{"form":"present_plural","lemma":"schaffen","partOfSpeech":"verb","surface":"schaffen","translation":"از عهده برآمدن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"lemma":"heute","partOfSpeech":"adverb","suffix":"?","surface":"heute","translation":"امروز"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,2,'learner','Dann teilen wir die Arbeit auf.','پس کار رو تقسیم می کنیم.',44,NULL,NULL,'dann teilen wir die arbeit auf',NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"present_plural_stem","lemma":"aufteilen","partOfSpeech":"verb","surface":"teilen","translation":"تقسیم کردن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Arbeit","partOfSpeech":"noun","surface":"Arbeit","translation":"کار"},{"form":"separated_prefix","lemma":"aufteilen","partOfSpeech":"verb","suffix":".","surface":"auf","translation":"تقسیم کردن"}]','فعل جداشدنی aufteilen','در جمله اصلی، پیشوند auf به پایان می رود: Wir teilen die Arbeit auf.','{"pattern":"subject + teilen + object + auf"}','{"cefr":"B1"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,3,'character','Ich korrigiere den Text.','من متن رو اصلاح می کنم.',44,NULL,NULL,NULL,NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"korrigieren","partOfSpeech":"verb","surface":"korrigiere","translation":"اصلاح کردن"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Text","partOfSpeech":"noun","suffix":".","surface":"Text","translation":"متن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,4,'learner','Ich prüfe die Zahlen.','من عددها رو بررسی می کنم.',44,NULL,NULL,'ich prüfe die zahlen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"prüfen","partOfSpeech":"verb","surface":"prüfe","translation":"بررسی کردن"},{"form":"accusative_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"plural","lemma":"Zahl","partOfSpeech":"noun","suffix":".","surface":"Zahlen","translation":"عدد / رقم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,5,'character','Kannst du auch die Bilder prüfen?','می تونی تصویرها رو هم بررسی کنی؟',44,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"können","partOfSpeech":"verb","surface":"Kannst","translation":"توانستن / بتوان"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"auch","partOfSpeech":"adverb","surface":"auch","translation":"هم / همچنین"},{"form":"accusative_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"plural","lemma":"Bild","partOfSpeech":"noun","surface":"Bilder","translation":"تصویر"},{"lemma":"prüfen","partOfSpeech":"verb","suffix":"?","surface":"prüfen","translation":"بررسی کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,6,'learner','Ja, das mache ich sofort.','آره، همین الان انجامش می دم.',44,NULL,NULL,'ja das mache ich sofort',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"form":"present_1sg","lemma":"machen","partOfSpeech":"verb","surface":"mache","translation":"انجام دادن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"sofort","partOfSpeech":"adverb","suffix":".","surface":"sofort","translation":"فورا / همین الان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_martin,'Ein Problem mit der Datei','مشکل فایل','Eine Datei lässt sich nicht öffnen. Anna und Martin nutzen eine frühere Version und ergänzen die fehlenden Seiten.','یک فایل باز نمی شود. آنا و مارتین از نسخه قبلی استفاده می کنند و صفحه های جاافتاده را اضافه می کنند.','story','anna-martin-b1-project',3,45,150,3,'validated','{"relationship":"coworkers","context":"finish-presentation-together","cefr":"B1","storyArc":"plan-divide-fix-check"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,1,'character','Die neue Datei lässt sich nicht öffnen.','فایل جدید باز نمی شه.',45,NULL,NULL,NULL,NULL,'[{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"Die","translation":"حرف تعریف"},{"form":"nominative_feminine","lemma":"neu","partOfSpeech":"adjective","surface":"neue","translation":"جدید / تازه"},{"lemma":"Datei","partOfSpeech":"noun","surface":"Datei","translation":"فایل"},{"form":"present_3sg","lemma":"lassen","partOfSpeech":"verb","surface":"lässt","translation":"گذاشتن / امکان دادن"},{"form":"reflexive_accusative_3sg","lemma":"sich","partOfSpeech":"pronoun","surface":"sich","translation":"خود / خودش"},{"lemma":"nicht","partOfSpeech":"particle","surface":"nicht","translation":"نه / نیست"},{"lemma":"öffnen","partOfSpeech":"verb","suffix":".","surface":"öffnen","translation":"باز کردن"}]','sich lassen + Infinitiv','با sich lassen می گوییم انجام کاری ممکن یا ناممکن است: Die Datei lässt sich öffnen.','{"pattern":"subject + lassen + sich + infinitive"}','{"cefr":"B1"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,2,'learner','Hast du die vorherige Version?','نسخه قبلی رو داری؟',45,NULL,NULL,'hast du die vorherige version',NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"accusative_feminine","lemma":"vorherig","partOfSpeech":"adjective","surface":"vorherige","translation":"قبلی"},{"lemma":"Version","partOfSpeech":"noun","suffix":"?","surface":"Version","translation":"نسخه"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,3,'character','Ja, aber dort fehlen zwei Seiten.','آره، اما دو صفحه اونجا نیست.',45,NULL,NULL,NULL,NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"aber","partOfSpeech":"conjunction","surface":"aber","translation":"اما"},{"lemma":"dort","partOfSpeech":"adverb","surface":"dort","translation":"آنجا"},{"form":"present_plural","lemma":"fehlen","partOfSpeech":"verb","surface":"fehlen","translation":"کم بودن / وجود نداشتن"},{"lemma":"zwei","partOfSpeech":"number","surface":"zwei","translation":"دو"},{"form":"plural","lemma":"Seite","partOfSpeech":"noun","suffix":".","surface":"Seiten","translation":"صفحه"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,4,'learner','Dann kopiere ich die fehlenden Seiten.','پس صفحه های جاافتاده رو کپی می کنم.',45,NULL,NULL,'dann kopiere ich die fehlenden seiten',NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"present_1sg","lemma":"kopieren","partOfSpeech":"verb","surface":"kopiere","translation":"کپی کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"accusative_plural","lemma":"fehlend","partOfSpeech":"adjective","surface":"fehlenden","translation":"ناقص / جاافتاده"},{"form":"plural","lemma":"Seite","partOfSpeech":"noun","suffix":".","surface":"Seiten","translation":"صفحه"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,5,'character','Schaffst du das bis drei Uhr?','تا ساعت سه از پسش برمیای؟',45,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"schaffen","partOfSpeech":"verb","surface":"Schaffst","translation":"از عهده برآمدن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"lemma":"bis","partOfSpeech":"preposition","surface":"bis","translation":"تا"},{"lemma":"drei","partOfSpeech":"number","surface":"drei","translation":"سه"},{"lemma":"Uhr","partOfSpeech":"noun","suffix":"?","surface":"Uhr","translation":"ساعت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,6,'learner','Ja, wenn nichts Neues passiert.','آره، اگه اتفاق تازه ای نیفته.',45,NULL,NULL,'ja wenn nichts neues passiert',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"wenn","partOfSpeech":"conjunction","surface":"wenn","translation":"اگر / وقتی"},{"lemma":"nichts","partOfSpeech":"pronoun","surface":"nichts","translation":"هیچ چیز"},{"form":"nominalized_neuter","lemma":"neu","partOfSpeech":"adjective","surface":"Neues","translation":"جدید / تازه"},{"form":"present_3sg","lemma":"passieren","partOfSpeech":"verb","suffix":".","surface":"passiert","translation":"اتفاق افتادن"}]','جمله شرطی با wenn','بعد از wenn فعل صرف شده در پایان جمله وابسته قرار می گیرد.','{"pattern":"wenn + subject + ... + finite verb"}','{"cefr":"B1"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_martin,'Die letzte Kontrolle','بررسی نهایی','Kurz vor der Besprechung kontrollieren Anna und Martin gemeinsam die fertige Präsentation.','کمی پیش از جلسه، آنا و مارتین ارائه آماده را با هم بررسی می کنند.','story','anna-martin-b1-project',4,45,150,4,'validated','{"relationship":"coworkers","context":"finish-presentation-together","cefr":"B1","storyArc":"plan-divide-fix-check"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,1,'character','Wie weit bist du?','چقدر پیش رفتی؟',45,NULL,NULL,NULL,NULL,'[{"lemma":"wie","partOfSpeech":"adverb","surface":"Wie","translation":"چطور / چگونه"},{"lemma":"weit","partOfSpeech":"adverb","surface":"weit","translation":"تا چه حد / چقدر جلو"},{"form":"present_2sg","lemma":"sein","partOfSpeech":"verb","surface":"bist","translation":"بودن"},{"lemma":"du","partOfSpeech":"pronoun","suffix":"?","surface":"du","translation":"تو"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,2,'learner','Die Zahlen sind fertig.','عددها آماده هستند.',45,NULL,NULL,'die zahlen sind fertig',NULL,'[{"form":"nominative_plural","lemma":"der","partOfSpeech":"article","surface":"Die","translation":"حرف تعریف"},{"form":"plural","lemma":"Zahl","partOfSpeech":"noun","surface":"Zahlen","translation":"عدد / رقم"},{"form":"present_plural","lemma":"sein","partOfSpeech":"verb","surface":"sind","translation":"بودن"},{"lemma":"fertig","partOfSpeech":"adjective","suffix":".","surface":"fertig","translation":"تمام / آماده"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,3,'character','Der Text ist auch korrigiert.','متن هم اصلاح شده.',45,NULL,NULL,NULL,NULL,'[{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"Der","translation":"حرف تعریف"},{"lemma":"Text","partOfSpeech":"noun","surface":"Text","translation":"متن"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"auch","partOfSpeech":"adverb","surface":"auch","translation":"هم / همچنین"},{"form":"past_participle","lemma":"korrigieren","partOfSpeech":"verb","suffix":".","surface":"korrigiert","translation":"اصلاح کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,4,'learner','Dann fehlt nur noch die letzte Kontrolle.','پس فقط بررسی نهایی مونده.',45,NULL,NULL,'dann fehlt nur noch die letzte kontrolle',NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"present_3sg","lemma":"fehlen","partOfSpeech":"verb","surface":"fehlt","translation":"کم بودن / وجود نداشتن"},{"lemma":"nur","partOfSpeech":"particle","surface":"nur","translation":"فقط"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"nominative_feminine","lemma":"letzte","partOfSpeech":"adjective","surface":"letzte","translation":"آخرین"},{"lemma":"Kontrolle","partOfSpeech":"noun","suffix":".","surface":"Kontrolle","translation":"بررسی نهایی"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,5,'character','Machen wir sie zusammen?','با هم انجامش بدیم؟',45,NULL,NULL,NULL,NULL,'[{"form":"present_plural","lemma":"machen","partOfSpeech":"verb","surface":"Machen","translation":"انجام دادن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"sie","meaning":"آن","partOfSpeech":"pronoun","surface":"sie","translation":"او / آن ها"},{"lemma":"zusammen","partOfSpeech":"adverb","suffix":"?","surface":"zusammen","translation":"با هم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,6,'learner','Ja, dann werden wir rechtzeitig fertig.','آره، اون وقت به موقع تمومش می کنیم.',45,NULL,NULL,'ja dann werden wir rechtzeitig fertig',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"dann","partOfSpeech":"adverb","surface":"dann","translation":"بعد / سپس"},{"form":"present_plural","lemma":"werden","partOfSpeech":"verb","surface":"werden","translation":"شدن / خواهد"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"rechtzeitig","partOfSpeech":"adverb","surface":"rechtzeitig","translation":"به موقع"},{"lemma":"fertig","partOfSpeech":"adjective","suffix":".","surface":"fertig","translation":"تمام / آماده"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_037,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_062,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_057,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_052,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_054,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_063,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_061,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_044,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_062,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_014,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_023,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_029,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_050,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_042,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_049,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_034,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_030,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_047,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_039,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_017,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_055,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_053,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_024,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_046,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_028,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_023,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_019,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_059,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_036,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_040,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_025,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_061,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_058,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_045,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_014,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_020,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_050,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_029,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_038,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_027,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_062,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_060,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_043,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'new',1,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_063,'عبارت کلیدی درس',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_020,'واژه کلیدی درس',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به پرسش آنا گوش کن',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ مارتین را با صدای بلند بگو',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به پرسش بعدی گوش کن',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'پاسخ را با صدای بلند بگو',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_020,'معنی واژه کلیدی را انتخاب کن',NULL,44,'{"mode":"word_translation","question":"fertig در این درس چه معنی دارد؟","choices":["تمام / آماده","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,44,'{"source":"lesson_story","question":"پیش از جلسه چه چیزی آماده نیست؟","choices":["عددهای نهایی","تصویرها","متن"],"correctIndex":0}','{"cefr":"B1","series":86}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_011,'عبارت کلیدی درس',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_004,'واژه کلیدی درس',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به پرسش آنا گوش کن',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ مارتین را با صدای بلند بگو',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به پرسش بعدی گوش کن',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'پاسخ را با صدای بلند بگو',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_004,'معنی واژه کلیدی را انتخاب کن',NULL,44,'{"mode":"word_translation","question":"auf در این درس چه معنی دارد؟","choices":["تقسیم کردن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,44,'{"source":"lesson_story","question":"چه کسی عددها را بررسی می کند؟","choices":["مارتین","آنا","هر دو"],"correctIndex":0}','{"cefr":"B1","series":86}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_025,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_013,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به پرسش آنا گوش کن',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ مارتین را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به پرسش بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_013,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"Datei در این درس چه معنی دارد؟","choices":["فایل","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"مارتین برای صفحه های ناقص چه کار می کند؟","choices":["آن ها را کپی می کند","فایل را پاک می کند","تا فردا صبر می کند"],"correctIndex":0}','{"cefr":"B1","series":86}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_010,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_027,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به پرسش آنا گوش کن',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ مارتین را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به پرسش بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_027,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"Kontrolle در این درس چه معنی دارد؟","choices":["بررسی نهایی","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"در پایان فقط چه کاری باقی مانده است؟","choices":["بررسی نهایی","اصلاح متن","آماده کردن عددها"],"correctIndex":0}','{"cefr":"B1","series":86}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 086 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='anna-martin-b1-project' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 086 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 086 turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 086 activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 086 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) AS n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) duplicate_pairs;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple detected.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_086_v9();
DROP PROCEDURE IF EXISTS import_nova_series_086_v9;
-- END SERIES 086

-- BEGIN SERIES 087
-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 087
-- B1 > Arbeit & Zusammenarbeit > Kannst du mir erklären, wie das geht?
-- Requires canonical Nova v9.0 and QA-passed staged Series 081-086.
-- Uses the unchanged Nova v9.0 schema; contains no schema DDL.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_087_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_087_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_prior_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_martin BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_001 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_002 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_003 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_004 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_005 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_006 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_007 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_008 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_009 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_010 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_011 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_012 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_013 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_014 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_015 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_016 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_017 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_018 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_019 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_020 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_021 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_022 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_023 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_024 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_025 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_026 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_027 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_028 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_029 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_030 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_031 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_032 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_033 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_034 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_035 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_036 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_037 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_038 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_039 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_040 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_041 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_042 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_043 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_044 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_045 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_046 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_047 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_048 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_049 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_050 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_051 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_052 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_053 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_054 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_055 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_056 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_057 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_058 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_059 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_060 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_061 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_062 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_063 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_064 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_065 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_066 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_067 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_068 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_069 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_070 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_071 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_072 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_073 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_074 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_075 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_076 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_077 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_078 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_079 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_080 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_081 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_082 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_083 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_084 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_085 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_086 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_087 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_088 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_089 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_090 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_091 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_092 BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE v_t_23 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_24 BIGINT UNSIGNED DEFAULT NULL;

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='B1' AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Level from Series 081 not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 from Series 086 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='Arbeit & Zusammenarbeit' AND title_translation='کار و همکاری';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 canonical identity mismatch.'; END IF;
  SELECT id INTO v_prior_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_prior_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 086 Chapter not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prior_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 086 Chapter must be validated before Series 087.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prior_chapter AND storyline_key='anna-martin-b1-project' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 086 storyline orders 1-4 are required.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 02 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Kannst du mir erklären, wie das geht?' AND title_translation='می تونی توضیح بدی چطور انجام می شه؟';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 087 canonical Chapter title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 02 must be empty before Series 087 import.'; END IF;
  SELECT id INTO v_c_martin FROM characters WHERE course_id=v_course AND name='Martin' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_martin IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Martin not found.'; END IF;
  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;
  IF v_c_martin=v_c_anna THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Martin and Anna must be distinct Characters.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='aber' AND part_of_speech='conjunction' AND translation='اما' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: aber | conjunction'; END IF;

  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='Ablauf' AND part_of_speech='noun' AND translation='روند کار' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ablauf','Ablauf','noun','روند کار',45,'{"gender":"masculine","plural":"Abläufe"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Menü","translation":"منو"}]','Alles klar. Jetzt kann ich den Ablauf selbst erklären.','باشه. حالا خودم می تونم روند کار رو توضیح بدم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_002=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='ah' AND part_of_speech='interjection' AND translation='آهان' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ah','ah','interjection','آهان',44,'{"type":"interjection"}','[{"text":"ja","translation":"آره"},{"text":"nein","translation":"نه"},{"text":"gut","translation":"خوب"},{"text":"genau","translation":"دقیقا"},{"text":"okay","translation":"باشه"}]','Ah, jetzt habe ich es gefunden.','آهان، حالا پیداش کردم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='allein' AND part_of_speech='adverb' AND translation='تنهایی' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'allein','allein','adverb','تنهایی',45,'{"type":"adverb"}','[{"text":"jetzt","translation":"حالا"},{"text":"später","translation":"بعدا"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"},{"text":"hier","translation":"اینجا"}]','Möchtest du den letzten Schritt allein machen?','می خوای مرحله آخر رو تنهایی انجام بدی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_004=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='alles' AND part_of_speech='pronoun' AND translation='همه چیز' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'alles','alles','pronoun','همه چیز',45,'{"type":"pronoun"}','[{"text":"etwas","translation":"چیزی"},{"text":"nichts","translation":"هیچ چیز"},{"text":"das","translation":"این"},{"text":"es","translation":"آن"},{"text":"was","translation":"چه"}]','Alles klar. Jetzt kann ich den Ablauf selbst erklären.','باشه. حالا خودم می تونم روند کار رو توضیح بدم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_005=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='als' AND part_of_speech='conjunction' AND translation='از / نسبت به' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'als','als','conjunction','از / نسبت به',45,'{"type":"conjunction"}','[{"text":"und","translation":"و"},{"text":"aber","translation":"اما"},{"text":"weil","translation":"چون"},{"text":"wenn","translation":"اگر"},{"text":"dass","translation":"که"}]','Das ist einfacher, als ich gedacht habe.','از چیزی که فکر می کردم راحت تره.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_006=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: an | preposition'; END IF;

  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='auf' AND part_of_speech='preposition' AND translation='روی / برای' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auf | preposition'; END IF;

  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='auswählen' AND part_of_speech='verb' AND translation='انتخاب کردن' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'auswählen','auswählen','verb','انتخاب کردن',44,'{"type":"separable_verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Natürlich. Zuerst wählst du die richtige Datei aus.','حتما. اول فایل درست رو انتخاب می کنی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='bearbeiten' AND part_of_speech='verb' AND translation='ویرایش کردن' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'bearbeiten','bearbeiten','verb','ویرایش کردن',44,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Klick zuerst auf Bearbeiten.','اول روی ویرایش کلیک کن.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='Bild' AND part_of_speech='noun' AND translation='تصویر' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Bild | noun'; END IF;

  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='Cursor' AND part_of_speech='noun' AND translation='نشانگر' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Cursor','Cursor','noun','نشانگر',45,'{"gender":"masculine","plural":"Cursor"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Menü","translation":"منو"}]','Nein, setz den Cursor an die richtige Stelle.','نه، نشانگر رو جای درست بذار.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_012=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='da' AND part_of_speech='adverb' AND translation='آنجا' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'da','da','adverb','آنجا',44,'{"type":"adverb"}','[{"text":"jetzt","translation":"حالا"},{"text":"später","translation":"بعدا"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"},{"text":"hier","translation":"اینجا"}]','Da sind mehrere Zeichen.','اونجا چند تا علامت هست.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='danach' AND part_of_speech='adverb' AND translation='بعد از آن / بعدش' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: danach | adverb'; END IF;

  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;

  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;

  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='Datei' AND part_of_speech='noun' AND translation='فایل' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Datei | noun'; END IF;

  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='denken' AND part_of_speech='verb' AND translation='فکر کردن' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'denken','denken','verb','فکر کردن',45,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Das ist einfacher, als ich gedacht habe.','از چیزی که فکر می کردم راحت تره.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;

  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;

  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;

  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='einfach' AND part_of_speech='adjective' AND translation='آسان / ساده' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'einfach','einfach','adjective','آسان / ساده',45,'{"type":"adjective"}','[{"text":"richtig","translation":"درست"},{"text":"falsch","translation":"نادرست"},{"text":"schwierig","translation":"سخت"},{"text":"neu","translation":"جدید"},{"text":"klein","translation":"کوچک"}]','Das ist einfacher, als ich gedacht habe.','از چیزی که فکر می کردم راحت تره.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_022=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='einfügen' AND part_of_speech='verb' AND translation='وارد کردن / افزودن' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'einfügen','einfügen','verb','وارد کردن / افزودن',45,'{"type":"separable_verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Jetzt fügen wir das Bild ein.','حالا تصویر رو وارد می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_023=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='einmal' AND part_of_speech='adverb' AND translation='یک بار' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: einmal | adverb'; END IF;

  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='erklären' AND part_of_speech='verb' AND translation='توضیح دادن' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'erklären','erklären','verb','توضیح دادن',44,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Kannst du mir erklären, wie das geht?','می تونی توضیح بدی چطور انجام می شه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_025=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='erstellen' AND part_of_speech='verb' AND translation='ایجاد کردن' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'erstellen','erstellen','verb','ایجاد کردن',45,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Muss ich vorher eine neue Seite erstellen?','باید قبلش یک صفحه جدید بسازم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_026=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: es | pronoun'; END IF;

  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='finden' AND part_of_speech='verb' AND translation='پیدا کردن' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: finden | verb'; END IF;

  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='gehen' AND part_of_speech='verb' AND translation='رفتن' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gehen | verb'; END IF;

  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='genau' AND part_of_speech='adverb' AND translation='دقیقا' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: genau | adverb'; END IF;

  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='gleich' AND part_of_speech='adverb' AND translation='همین الان' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'gleich','gleich','adverb','همین الان',44,'{"type":"adverb"}','[{"text":"jetzt","translation":"حالا"},{"text":"später","translation":"بعدا"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"},{"text":"hier","translation":"اینجا"}]','Gut, dann probiere ich es gleich.','خوبه، پس همین الان امتحانش می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_031=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gut | adjective'; END IF;

  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;

  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='hier' AND part_of_speech='adverb' AND translation='اینجا' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: hier | adverb'; END IF;

  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;

  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='Ich weiß jetzt, wie ich das Bild einfügen kann.' AND part_of_speech='phrase' AND translation='حالا می دونم چطور می تونم تصویر رو وارد کنم.' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich weiß jetzt, wie ich das Bild einfügen kann.','Ich weiß jetzt, wie ich das Bild einfügen kann.','phrase','حالا می دونم چطور می تونم تصویر رو وارد کنم.',45,'{"type":"sentence_pattern"}','[{"text":"Ich weiß jetzt, wo die Datei ist.","translation":"حالا می دونم فایل کجاست."},{"text":"Zeigst du mir, wie ich die Seite öffne?","translation":"نشونم می دی چطور صفحه رو باز کنم؟"},{"text":"Ich kann das Bild später speichern.","translation":"می تونم تصویر رو بعدا ذخیره کنم."},{"text":"Wir fügen zuerst eine neue Seite ein.","translation":"اول یک صفحه جدید وارد می کنیم."},{"text":"Das Bild ist schon in der Datei.","translation":"تصویر از قبل داخل فایل هست."}]','Ich weiß jetzt, wie ich das Bild einfügen kann.','حالا می دونم چطور می تونم تصویر رو وارد کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_036=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;

  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;

  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='Kannst du mir erklären, wie das geht?' AND part_of_speech='phrase' AND translation='می تونی توضیح بدی چطور انجام می شه؟' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Kannst du mir erklären, wie das geht?','Kannst du mir erklären, wie das geht?','phrase','می تونی توضیح بدی چطور انجام می شه؟',44,'{"type":"sentence_pattern"}','[{"text":"Kannst du mir zeigen, wo die Datei ist?","translation":"می تونی نشونم بدی فایل کجاست؟"},{"text":"Ich weiß schon, wie das geht.","translation":"از قبل می دونم چطور انجام می شه."},{"text":"Du musst die Vorlage zuerst öffnen.","translation":"باید اول قالب رو باز کنی."},{"text":"Ich probiere den nächsten Schritt allein.","translation":"مرحله بعد رو تنهایی امتحان می کنم."},{"text":"Erklärst du mir das später?","translation":"بعدا برام توضیحش می دی؟"}]','Kannst du mir erklären, wie das geht?','می تونی توضیح بدی چطور انجام می شه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_039=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='Kannst du noch einmal sagen, was ich danach machen soll?' AND part_of_speech='phrase' AND translation='می تونی یک بار دیگه بگی بعدش باید چی کار کنم؟' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Kannst du noch einmal sagen, was ich danach machen soll?','Kannst du noch einmal sagen, was ich danach machen soll?','phrase','می تونی یک بار دیگه بگی بعدش باید چی کار کنم؟',45,'{"type":"sentence_pattern"}','[{"text":"Kannst du noch einmal zeigen, wo ich klicken soll?","translation":"می تونی یک بار دیگه نشون بدی کجا باید کلیک کنم؟"},{"text":"Ich weiß, was ich zuerst machen muss.","translation":"می دونم اول باید چی کار کنم."},{"text":"Sagst du mir den letzten Schritt?","translation":"مرحله آخر رو بهم می گی؟"},{"text":"Danach kann ich den Ablauf allein erklären.","translation":"بعدش می تونم روند کار رو تنهایی توضیح بدم."},{"text":"Soll ich die Vorschau jetzt öffnen?","translation":"باید حالا پیش نمایش رو باز کنم؟"}]','Kannst du noch einmal sagen, was ich danach machen soll?','می تونی یک بار دیگه بگی بعدش باید چی کار کنم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_040=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='klar' AND part_of_speech='adjective' AND translation='روشن / مشخص' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'klar','klar','adjective','روشن / مشخص',45,'{"type":"adjective"}','[{"text":"richtig","translation":"درست"},{"text":"falsch","translation":"نادرست"},{"text":"einfach","translation":"ساده"},{"text":"schwierig","translation":"سخت"},{"text":"neu","translation":"جدید"}]','Alles klar. Jetzt kann ich den Ablauf selbst erklären.','باشه. حالا خودم می تونم روند کار رو توضیح بدم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='klein' AND part_of_speech='adjective' AND translation='کوچک' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: klein | adjective'; END IF;

  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='klicken' AND part_of_speech='verb' AND translation='کلیک کردن' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'klicken','klicken','verb','کلیک کردن',44,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"zeigen","translation":"نشان دادن"},{"text":"erklären","translation":"توضیح دادن"}]','Klick zuerst auf Bearbeiten.','اول روی ویرایش کلیک کن.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_043=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;

  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='letzte' AND part_of_speech='adjective' AND translation='آخرین' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: letzte | adjective'; END IF;

  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: machen | verb'; END IF;

  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='mehrere' AND part_of_speech='determiner' AND translation='چند / چندین' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'mehrere','mehrere','determiner','چند / چندین',44,'{"type":"determiner"}','[{"text":"einige","translation":"چند"},{"text":"viele","translation":"بسیاری"},{"text":"wenige","translation":"کم"},{"text":"alle","translation":"همه"},{"text":"jede","translation":"هر"}]','Da sind mehrere Zeichen.','اونجا چند تا علامت هست.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_047=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='Menü' AND part_of_speech='noun' AND translation='منو' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Menü','Menü','noun','منو',44,'{"gender":"neuter","plural":"Menüs"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Vorlage","translation":"قالب"}]','Jetzt siehst du das Menü oben rechts.','حالا منو رو بالا سمت راست می بینی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_048=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: möchten | verb'; END IF;

  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: müssen | verb'; END IF;

  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='nächste' AND part_of_speech='adjective' AND translation='بعدی' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nächste','nächste','adjective','بعدی',44,'{"type":"adjective"}','[{"text":"richtig","translation":"درست"},{"text":"falsch","translation":"نادرست"},{"text":"einfach","translation":"ساده"},{"text":"schwierig","translation":"سخت"},{"text":"neu","translation":"جدید"}]','Ja, aber ich verstehe den nächsten Schritt nicht.','آره، ولی مرحله بعد رو نمی فهمم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_051=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='natürlich' AND part_of_speech='adverb' AND translation='حتما / البته' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'natürlich','natürlich','adverb','حتما / البته',44,'{"type":"adverb"}','[{"text":"jetzt","translation":"حالا"},{"text":"später","translation":"بعدا"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"},{"text":"hier","translation":"اینجا"}]','Natürlich. Zuerst wählst du die richtige Datei aus.','حتما. اول فایل درست رو انتخاب می کنی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_052=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='neben' AND part_of_speech='preposition' AND translation='کنار' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'neben','neben','preposition','کنار',44,'{"type":"preposition"}','[{"text":"auf","translation":"روی"},{"text":"in","translation":"در"},{"text":"vor","translation":"جلوی"},{"text":"hinter","translation":"پشت"},{"text":"an","translation":"کنار"}]','Hier, neben dem kleinen Stift.','اینجا، کنار مداد کوچیک.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_053=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nein | interjection'; END IF;

  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='neu' AND part_of_speech='adjective' AND translation='جدید / تازه' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: neu | adjective'; END IF;

  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nicht | particle'; END IF;

  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;

  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='ob' AND part_of_speech='conjunction' AND translation='آیا / اینکه' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ob','ob','conjunction','آیا / اینکه',45,'{"type":"conjunction"}','[{"text":"und","translation":"و"},{"text":"aber","translation":"اما"},{"text":"weil","translation":"چون"},{"text":"wenn","translation":"اگر"},{"text":"dass","translation":"که"}]','Prüfe, ob Text und Bild richtig sind.','بررسی کن که متن و تصویر درست باشند.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_058=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='oben' AND part_of_speech='adverb' AND translation='بالا / طبقه بالا' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: oben | adverb'; END IF;

  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='öffnen' AND part_of_speech='verb' AND translation='باز کردن' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: öffnen | verb'; END IF;

  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='probieren' AND part_of_speech='verb' AND translation='امتحان کردن' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'probieren','probieren','verb','امتحان کردن',44,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Gut, dann probiere ich es gleich.','خوبه، پس همین الان امتحانش می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_061=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='prüfen' AND part_of_speech='verb' AND translation='بررسی کردن' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: prüfen | verb'; END IF;

  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='rechts' AND part_of_speech='adverb' AND translation='سمت راست' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'rechts','rechts','adverb','سمت راست',44,'{"type":"adverb"}','[{"text":"jetzt","translation":"حالا"},{"text":"später","translation":"بعدا"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"},{"text":"hier","translation":"اینجا"}]','Jetzt siehst du das Menü oben rechts.','حالا منو رو بالا سمت راست می بینی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_063=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='richtig' AND part_of_speech='adjective' AND translation='درست' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'richtig','richtig','adjective','درست',44,'{"type":"adjective"}','[{"text":"falsch","translation":"نادرست"},{"text":"einfach","translation":"ساده"},{"text":"schwierig","translation":"سخت"},{"text":"neu","translation":"جدید"},{"text":"klein","translation":"کوچک"}]','Natürlich. Zuerst wählst du die richtige Datei aus.','حتما. اول فایل درست رو انتخاب می کنی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_064=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='sagen' AND part_of_speech='verb' AND translation='گفتن' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sagen | verb'; END IF;

  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='schon' AND part_of_speech='adverb' AND translation='قبلا / تا حالا' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schon | adverb'; END IF;

  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='Schritt' AND part_of_speech='noun' AND translation='مرحله / گام' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Schritt','Schritt','noun','مرحله / گام',44,'{"gender":"masculine","plural":"Schritte"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Menü","translation":"منو"}]','Ja, aber ich verstehe den nächsten Schritt nicht.','آره، ولی مرحله بعد رو نمی فهمم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_067=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='sehen' AND part_of_speech='verb' AND translation='دیدن' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sehen','sehen','verb','دیدن',44,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Jetzt siehst du das Menü oben rechts.','حالا منو رو بالا سمت راست می بینی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_068=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;

  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='Seite' AND part_of_speech='noun' AND translation='صفحه' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Seite | noun'; END IF;

  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='selbst' AND part_of_speech='adverb' AND translation='خود / شخصا' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'selbst','selbst','adverb','خود / شخصا',45,'{"type":"adverb"}','[{"text":"jetzt","translation":"حالا"},{"text":"später","translation":"بعدا"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"},{"text":"hier","translation":"اینجا"}]','Alles klar. Jetzt kann ich den Ablauf selbst erklären.','باشه. حالا خودم می تونم روند کار رو توضیح بدم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_071=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='setzen' AND part_of_speech='verb' AND translation='گذاشتن / قرار دادن' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'setzen','setzen','verb','گذاشتن / قرار دادن',45,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Nein, setz den Cursor an die richtige Stelle.','نه، نشانگر رو جای درست بذار.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_072=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='sollen' AND part_of_speech='verb' AND translation='باید / قرار است' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sollen | verb'; END IF;

  SELECT id INTO v_w_074 FROM words WHERE course_id=v_course AND lemma='speichern' AND part_of_speech='verb' AND translation='ذخیره کردن' ORDER BY id LIMIT 1;
  IF v_w_074 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'speichern','speichern','verb','ذخیره کردن',45,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"},{"text":"erklären","translation":"توضیح دادن"}]','Genau, und danach speicherst du die Datei.','دقیقا، بعدش فایل رو ذخیره می کنی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_074=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_075 FROM words WHERE course_id=v_course AND lemma='Stelle' AND part_of_speech='noun' AND translation='محل / جای' ORDER BY id LIMIT 1;
  IF v_w_075 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Stelle','Stelle','noun','محل / جای',45,'{"gender":"feminine","plural":"Stellen"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Menü","translation":"منو"}]','Nein, setz den Cursor an die richtige Stelle.','نه، نشانگر رو جای درست بذار.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_075=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_076 FROM words WHERE course_id=v_course AND lemma='Stift' AND part_of_speech='noun' AND translation='مداد / قلم' ORDER BY id LIMIT 1;
  IF v_w_076 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Stift','Stift','noun','مداد / قلم',44,'{"gender":"masculine","plural":"Stifte"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Menü","translation":"منو"}]','Hier, neben dem kleinen Stift.','اینجا، کنار مداد کوچیک.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_076=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_077 FROM words WHERE course_id=v_course AND lemma='Text' AND part_of_speech='noun' AND translation='متن' ORDER BY id LIMIT 1;
  IF v_w_077 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Text | noun'; END IF;

  SELECT id INTO v_w_078 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_078 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;

  SELECT id INTO v_w_079 FROM words WHERE course_id=v_course AND lemma='verstehen' AND part_of_speech='verb' AND translation='فهمیدن / متوجه شدن' ORDER BY id LIMIT 1;
  IF v_w_079 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: verstehen | verb'; END IF;

  SELECT id INTO v_w_080 FROM words WHERE course_id=v_course AND lemma='versuchen' AND part_of_speech='verb' AND translation='تلاش کردن / امتحان کردن' ORDER BY id LIMIT 1;
  IF v_w_080 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'versuchen','versuchen','verb','تلاش کردن / امتحان کردن',45,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Ja, ich versuche es.','آره، امتحان می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_080=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_081 FROM words WHERE course_id=v_course AND lemma='vorher' AND part_of_speech='adverb' AND translation='قبلش / پیش از آن' ORDER BY id LIMIT 1;
  IF v_w_081 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vorher','vorher','adverb','قبلش / پیش از آن',45,'{"type":"adverb"}','[{"text":"jetzt","translation":"حالا"},{"text":"später","translation":"بعدا"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"},{"text":"hier","translation":"اینجا"}]','Muss ich vorher eine neue Seite erstellen?','باید قبلش یک صفحه جدید بسازم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_081=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_082 FROM words WHERE course_id=v_course AND lemma='Vorlage' AND part_of_speech='noun' AND translation='قالب' ORDER BY id LIMIT 1;
  IF v_w_082 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Vorlage','Vorlage','noun','قالب',44,'{"gender":"feminine","plural":"Vorlagen"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Menü","translation":"منو"}]','Hast du die neue Vorlage schon geöffnet?','قالب جدید رو باز کردی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_082=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_083 FROM words WHERE course_id=v_course AND lemma='Vorschau' AND part_of_speech='noun' AND translation='پیش نمایش' ORDER BY id LIMIT 1;
  IF v_w_083 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Vorschau','Vorschau','noun','پیش نمایش',45,'{"gender":"feminine","plural":"Vorschauen"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Menü","translation":"منو"}]','Öffne jetzt die Vorschau.','حالا پیش نمایش رو باز کن.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_083=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_084 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_084 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;

  SELECT id INTO v_w_085 FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_085 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wie | adverb'; END IF;

  SELECT id INTO v_w_086 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_086 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;

  SELECT id INTO v_w_087 FROM words WHERE course_id=v_course AND lemma='wissen' AND part_of_speech='verb' AND translation='دانستن' ORDER BY id LIMIT 1;
  IF v_w_087 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wissen | verb'; END IF;

  SELECT id INTO v_w_088 FROM words WHERE course_id=v_course AND lemma='wo' AND part_of_speech='adverb' AND translation='کجا' ORDER BY id LIMIT 1;
  IF v_w_088 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wo | adverb'; END IF;

  SELECT id INTO v_w_089 FROM words WHERE course_id=v_course AND lemma='Zeichen' AND part_of_speech='noun' AND translation='علامت' ORDER BY id LIMIT 1;
  IF v_w_089 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Zeichen','Zeichen','noun','علامت',44,'{"gender":"neuter","plural":"Zeichen"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Menü","translation":"منو"}]','Da sind mehrere Zeichen.','اونجا چند تا علامت هست.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_089=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_090 FROM words WHERE course_id=v_course AND lemma='zeigen' AND part_of_speech='verb' AND translation='نشان دادن' ORDER BY id LIMIT 1;
  IF v_w_090 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'zeigen','zeigen','verb','نشان دادن',44,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"erklären","translation":"توضیح دادن"}]','Zeigst du mir, wo ich klicken muss?','بهم نشون می دی کجا باید کلیک کنم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_090=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_091 FROM words WHERE course_id=v_course AND lemma='Zeigst du mir, wo ich klicken muss?' AND part_of_speech='phrase' AND translation='بهم نشون می دی کجا باید کلیک کنم؟' ORDER BY id LIMIT 1;
  IF v_w_091 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Zeigst du mir, wo ich klicken muss?','Zeigst du mir, wo ich klicken muss?','phrase','بهم نشون می دی کجا باید کلیک کنم؟',44,'{"type":"sentence_pattern"}','[{"text":"Sagst du mir, was ich öffnen soll?","translation":"بهم می گی چی رو باید باز کنم؟"},{"text":"Ich klicke oben auf das Menü.","translation":"بالا روی منو کلیک می کنم."},{"text":"Zeigst du mir die richtige Datei?","translation":"فایل درست رو نشونم می دی؟"},{"text":"Wo ist der kleine Stift?","translation":"مداد کوچیک کجاست؟"},{"text":"Ich habe das Zeichen schon gefunden.","translation":"علامت رو از قبل پیدا کردم."}]','Zeigst du mir, wo ich klicken muss?','بهم نشون می دی کجا باید کلیک کنم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_091=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_092 FROM words WHERE course_id=v_course AND lemma='zuerst' AND part_of_speech='adverb' AND translation='اول / ابتدا' ORDER BY id LIMIT 1;
  IF v_w_092 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zuerst | adverb'; END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Eine neue Vorlage','یک قالب جدید','Martin zeigt Anna nach dem fertigen Präsentationsentwurf, wie sie mit einer neuen Vorlage weiterarbeitet.','مارتین بعد از آماده شدن پیش نویس ارائه به آنا نشان می دهد چطور کار را با یک قالب جدید ادامه بدهد.','story','anna-martin-b1-project',5,44,150,1,'validated','{"relationship":"coworkers","context":"explain-presentation-workflow","cefr":"B1","storyArc":"ask-observe-apply-explain"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,1,'character','Hast du die neue Vorlage schon geöffnet?','قالب جدید رو باز کردی؟',44,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"accusative_feminine","lemma":"neu","partOfSpeech":"adjective","surface":"neue","translation":"جدید / تازه"},{"lemma":"Vorlage","partOfSpeech":"noun","surface":"Vorlage","translation":"قالب"},{"lemma":"schon","partOfSpeech":"adverb","surface":"schon","translation":"قبلا / تا حالا"},{"form":"past_participle","lemma":"öffnen","partOfSpeech":"verb","suffix":"?","surface":"geöffnet","translation":"باز کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Ja, aber ich verstehe den nächsten Schritt nicht.','آره، ولی مرحله بعد رو نمی فهمم.',44,NULL,NULL,'ja aber ich verstehe den nächsten schritt nicht',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"aber","partOfSpeech":"conjunction","surface":"aber","translation":"اما"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"verstehen","partOfSpeech":"verb","surface":"verstehe","translation":"فهمیدن / متوجه شدن"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"form":"accusative_masculine","lemma":"nächste","partOfSpeech":"adjective","surface":"nächsten","translation":"بعدی"},{"lemma":"Schritt","partOfSpeech":"noun","surface":"Schritt","translation":"مرحله / گام"},{"lemma":"nicht","partOfSpeech":"particle","suffix":".","surface":"nicht","translation":"نه / نیست"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,3,'character','Was möchtest du wissen?','چی می خوای بدونی؟',44,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"wissen","partOfSpeech":"verb","suffix":"?","surface":"wissen","translation":"دانستن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Kannst du mir erklären, wie das geht?','می تونی توضیح بدی چطور انجام می شه؟',44,NULL,NULL,'kannst du mir erklären wie das geht',NULL,'[{"form":"present_2sg","lemma":"können","partOfSpeech":"verb","surface":"Kannst","translation":"توانستن / بتوان"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"dative_1sg","lemma":"ich","meaning":"به من","partOfSpeech":"pronoun","surface":"mir","translation":"من"},{"lemma":"erklären","partOfSpeech":"verb","surface":"erklären","translation":"توضیح دادن"},{"lemma":"wie","partOfSpeech":"adverb","surface":"wie","translation":"چطور / چگونه"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"form":"present_3sg","lemma":"gehen","meaning":"انجام شدن","partOfSpeech":"verb","suffix":"?","surface":"geht","translation":"رفتن"}]','پرسش غیرمستقیم با wie','بعد از یک فعل پرسشی، بخش دوم با wie می آید و فعل صرف شده در پایان قرار می گیرد.','{"pattern":"Kannst du ... erklären, wie + subject + verb?"}','{"cefr":"B1"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,5,'character','Natürlich. Zuerst wählst du die richtige Datei aus.','حتما. اول فایل درست رو انتخاب می کنی.',44,NULL,NULL,NULL,NULL,'[{"lemma":"natürlich","partOfSpeech":"adverb","suffix":".","surface":"Natürlich","translation":"حتما / البته"},{"lemma":"zuerst","partOfSpeech":"adverb","surface":"Zuerst","translation":"اول / ابتدا"},{"form":"present_2sg","lemma":"auswählen","partOfSpeech":"verb","surface":"wählst","translation":"انتخاب کردن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"accusative_feminine","lemma":"richtig","partOfSpeech":"adjective","surface":"richtige","translation":"درست"},{"lemma":"Datei","partOfSpeech":"noun","surface":"Datei","translation":"فایل"},{"form":"separable_prefix","lemma":"auswählen","partOfSpeech":"verb","suffix":".","surface":"aus","translation":"انتخاب کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,6,'learner','Gut, dann probiere ich es gleich.','خوبه، پس همین الان امتحانش می کنم.',44,NULL,NULL,'gut dann probiere ich es gleich',NULL,'[{"lemma":"gut","partOfSpeech":"adjective","suffix":",","surface":"Gut","translation":"خوب"},{"lemma":"dann","partOfSpeech":"adverb","surface":"dann","translation":"بعد / سپس"},{"form":"present_1sg","lemma":"probieren","partOfSpeech":"verb","surface":"probiere","translation":"امتحان کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"es","partOfSpeech":"pronoun","surface":"es","translation":"آن / این"},{"lemma":"gleich","partOfSpeech":"adverb","suffix":".","surface":"gleich","translation":"همین الان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Wo muss ich klicken?','کجا باید کلیک کنم؟','Martin führt Anna durch das Bearbeitungsmenü und zeigt ihr die richtige Schaltfläche.','مارتین آنا را در منوی ویرایش راهنمایی می کند و دکمه درست را به او نشان می دهد.','story','anna-martin-b1-project',6,44,150,2,'validated','{"relationship":"coworkers","context":"explain-presentation-workflow","cefr":"B1","storyArc":"ask-observe-apply-explain"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,1,'character','Jetzt siehst du das Menü oben rechts.','حالا منو رو بالا سمت راست می بینی.',44,NULL,NULL,NULL,NULL,'[{"lemma":"jetzt","partOfSpeech":"adverb","surface":"Jetzt","translation":"حالا / اکنون"},{"form":"present_2sg","lemma":"sehen","partOfSpeech":"verb","surface":"siehst","translation":"دیدن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"Menü","partOfSpeech":"noun","surface":"Menü","translation":"منو"},{"lemma":"oben","partOfSpeech":"adverb","surface":"oben","translation":"بالا / طبقه بالا"},{"lemma":"rechts","partOfSpeech":"adverb","suffix":".","surface":"rechts","translation":"سمت راست"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Da sind mehrere Zeichen.','اونجا چند تا علامت هست.',44,NULL,NULL,'da sind mehrere zeichen',NULL,'[{"lemma":"da","partOfSpeech":"adverb","surface":"Da","translation":"آنجا"},{"form":"present_plural","lemma":"sein","partOfSpeech":"verb","surface":"sind","translation":"بودن"},{"lemma":"mehrere","partOfSpeech":"determiner","surface":"mehrere","translation":"چند / چندین"},{"form":"plural","lemma":"Zeichen","partOfSpeech":"noun","suffix":".","surface":"Zeichen","translation":"علامت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,3,'character','Klick zuerst auf Bearbeiten.','اول روی ویرایش کلیک کن.',44,NULL,NULL,NULL,NULL,'[{"form":"imperative_2sg","lemma":"klicken","partOfSpeech":"verb","surface":"Klick","translation":"کلیک کردن"},{"lemma":"zuerst","partOfSpeech":"adverb","surface":"zuerst","translation":"اول / ابتدا"},{"lemma":"auf","partOfSpeech":"preposition","surface":"auf","translation":"روی / برای"},{"form":"infinitive_used_as_label","lemma":"bearbeiten","partOfSpeech":"verb","suffix":".","surface":"Bearbeiten","translation":"ویرایش کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Zeigst du mir, wo ich klicken muss?','بهم نشون می دی کجا باید کلیک کنم؟',44,NULL,NULL,'zeigst du mir wo ich klicken muss',NULL,'[{"form":"present_2sg","lemma":"zeigen","partOfSpeech":"verb","surface":"Zeigst","translation":"نشان دادن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"dative_1sg","lemma":"ich","meaning":"به من","partOfSpeech":"pronoun","surface":"mir","translation":"من"},{"lemma":"wo","partOfSpeech":"adverb","surface":"wo","translation":"کجا"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"klicken","partOfSpeech":"verb","surface":"klicken","translation":"کلیک کردن"},{"form":"present_1sg","lemma":"müssen","partOfSpeech":"verb","suffix":"?","surface":"muss","translation":"مجبور بودن / باید"}]','پرسش غیرمستقیم با wo','در پرسش غیرمستقیم با wo، فعل صرف شده به پایان بخش پرسشی می رود.','{"pattern":"Zeigst du mir, wo + subject + infinitive + modal?"}','{"cefr":"B1"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,5,'character','Hier, neben dem kleinen Stift.','اینجا، کنار مداد کوچیک.',44,NULL,NULL,NULL,NULL,'[{"lemma":"hier","partOfSpeech":"adverb","suffix":",","surface":"Hier","translation":"اینجا"},{"lemma":"neben","partOfSpeech":"preposition","surface":"neben","translation":"کنار"},{"form":"dative_masculine","lemma":"der","partOfSpeech":"article","surface":"dem","translation":"حرف تعریف"},{"form":"dative_masculine","lemma":"klein","partOfSpeech":"adjective","surface":"kleinen","translation":"کوچک"},{"lemma":"Stift","partOfSpeech":"noun","suffix":".","surface":"Stift","translation":"مداد / قلم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,6,'learner','Ah, jetzt habe ich es gefunden.','آهان، حالا پیداش کردم.',44,NULL,NULL,'ah jetzt habe ich es gefunden',NULL,'[{"lemma":"ah","partOfSpeech":"interjection","suffix":",","surface":"Ah","translation":"آهان"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","surface":"habe","translation":"داشتن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"es","partOfSpeech":"pronoun","surface":"es","translation":"آن / این"},{"form":"past_participle","lemma":"finden","partOfSpeech":"verb","suffix":".","surface":"gefunden","translation":"پیدا کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Ein Bild einfügen','وارد کردن تصویر','Anna wendet Martins Erklärung an und fügt selbstständig ein Bild in die Präsentation ein.','آنا توضیح مارتین را اجرا می کند و خودش یک تصویر را وارد ارائه می کند.','story','anna-martin-b1-project',7,45,150,3,'validated','{"relationship":"coworkers","context":"explain-presentation-workflow","cefr":"B1","storyArc":"ask-observe-apply-explain"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,1,'character','Jetzt fügen wir das Bild ein.','حالا تصویر رو وارد می کنیم.',45,NULL,NULL,NULL,NULL,'[{"lemma":"jetzt","partOfSpeech":"adverb","surface":"Jetzt","translation":"حالا / اکنون"},{"form":"present_plural","lemma":"einfügen","partOfSpeech":"verb","surface":"fügen","translation":"وارد کردن / افزودن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"accusative_neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"Bild","partOfSpeech":"noun","surface":"Bild","translation":"تصویر"},{"form":"separable_prefix","lemma":"einfügen","partOfSpeech":"verb","suffix":".","surface":"ein","translation":"وارد کردن / افزودن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Muss ich vorher eine neue Seite erstellen?','باید قبلش یک صفحه جدید بسازم؟',45,NULL,NULL,'muss ich vorher eine neue seite erstellen',NULL,'[{"form":"present_1sg","lemma":"müssen","partOfSpeech":"verb","surface":"Muss","translation":"مجبور بودن / باید"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"vorher","partOfSpeech":"adverb","surface":"vorher","translation":"قبلش / پیش از آن"},{"form":"accusative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"form":"accusative_feminine","lemma":"neu","partOfSpeech":"adjective","surface":"neue","translation":"جدید / تازه"},{"lemma":"Seite","partOfSpeech":"noun","surface":"Seite","translation":"صفحه"},{"lemma":"erstellen","partOfSpeech":"verb","suffix":"?","surface":"erstellen","translation":"ایجاد کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,3,'character','Nein, setz den Cursor an die richtige Stelle.','نه، نشانگر رو جای درست بذار.',45,NULL,NULL,NULL,NULL,'[{"lemma":"nein","partOfSpeech":"interjection","suffix":",","surface":"Nein","translation":"نه"},{"form":"imperative_2sg","lemma":"setzen","partOfSpeech":"verb","surface":"setz","translation":"گذاشتن / قرار دادن"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Cursor","partOfSpeech":"noun","surface":"Cursor","translation":"نشانگر"},{"lemma":"an","meaning":"کنار / در محل","partOfSpeech":"preposition","surface":"an","translation":"در / در روز"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"accusative_feminine","lemma":"richtig","partOfSpeech":"adjective","surface":"richtige","translation":"درست"},{"lemma":"Stelle","partOfSpeech":"noun","suffix":".","surface":"Stelle","translation":"محل / جای"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Ich weiß jetzt, wie ich das Bild einfügen kann.','حالا می دونم چطور می تونم تصویر رو وارد کنم.',45,NULL,NULL,'ich weiß jetzt wie ich das bild einfügen kann',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"wissen","partOfSpeech":"verb","surface":"weiß","translation":"دانستن"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"lemma":"wie","partOfSpeech":"adverb","surface":"wie","translation":"چطور / چگونه"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"Bild","partOfSpeech":"noun","surface":"Bild","translation":"تصویر"},{"lemma":"einfügen","partOfSpeech":"verb","surface":"einfügen","translation":"وارد کردن / افزودن"},{"form":"present_1sg","lemma":"können","partOfSpeech":"verb","suffix":".","surface":"kann","translation":"توانستن / بتوان"}]','پرسش غیرمستقیم با فعل وجهی','در بخش غیرمستقیم با wie، مصدر پیش از فعل وجهی صرف شده در پایان می آید.','{"pattern":"wie + subject + object + infinitive + modal"}','{"cefr":"B1"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,5,'character','Genau, und danach speicherst du die Datei.','دقیقا، بعدش فایل رو ذخیره می کنی.',45,NULL,NULL,NULL,NULL,'[{"lemma":"genau","partOfSpeech":"adverb","suffix":",","surface":"Genau","translation":"دقیقا"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"danach","partOfSpeech":"adverb","surface":"danach","translation":"بعد از آن / بعدش"},{"form":"present_2sg","lemma":"speichern","partOfSpeech":"verb","surface":"speicherst","translation":"ذخیره کردن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Datei","partOfSpeech":"noun","suffix":".","surface":"Datei","translation":"فایل"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,6,'learner','Das ist einfacher, als ich gedacht habe.','از چیزی که فکر می کردم راحت تره.',45,NULL,NULL,'das ist einfacher als ich gedacht habe',NULL,'[{"lemma":"das","partOfSpeech":"pronoun","surface":"Das","translation":"این / آن"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"form":"comparative","lemma":"einfach","partOfSpeech":"adjective","suffix":",","surface":"einfacher","translation":"آسان / ساده"},{"lemma":"als","partOfSpeech":"conjunction","surface":"als","translation":"از / نسبت به"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"past_participle","lemma":"denken","partOfSpeech":"verb","surface":"gedacht","translation":"فکر کردن"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","suffix":".","surface":"habe","translation":"داشتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Den Ablauf selbst erklären','توضیح دادن روند کار','Anna wiederholt den letzten Schritt, prüft das Ergebnis und kann den Ablauf danach selbst erklären.','آنا مرحله آخر را تکرار می کند، نتیجه را بررسی می کند و بعد خودش می تواند روند کار را توضیح بدهد.','story','anna-martin-b1-project',8,45,150,4,'validated','{"relationship":"coworkers","context":"explain-presentation-workflow","cefr":"B1","storyArc":"ask-observe-apply-explain"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,1,'character','Möchtest du den letzten Schritt allein machen?','می خوای مرحله آخر رو تنهایی انجام بدی؟',45,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"Möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"form":"accusative_masculine","lemma":"letzte","partOfSpeech":"adjective","surface":"letzten","translation":"آخرین"},{"lemma":"Schritt","partOfSpeech":"noun","surface":"Schritt","translation":"مرحله / گام"},{"lemma":"allein","partOfSpeech":"adverb","surface":"allein","translation":"تنهایی"},{"lemma":"machen","partOfSpeech":"verb","suffix":"?","surface":"machen","translation":"انجام دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Ja, ich versuche es.','آره، امتحان می کنم.',45,NULL,NULL,'ja ich versuche es',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"versuchen","partOfSpeech":"verb","surface":"versuche","translation":"تلاش کردن / امتحان کردن"},{"lemma":"es","partOfSpeech":"pronoun","suffix":".","surface":"es","translation":"آن / این"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,3,'character','Öffne jetzt die Vorschau.','حالا پیش نمایش رو باز کن.',45,NULL,NULL,NULL,NULL,'[{"form":"imperative_2sg","lemma":"öffnen","partOfSpeech":"verb","surface":"Öffne","translation":"باز کردن"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Vorschau","partOfSpeech":"noun","suffix":".","surface":"Vorschau","translation":"پیش نمایش"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Kannst du noch einmal sagen, was ich danach machen soll?','می تونی یک بار دیگه بگی بعدش باید چی کار کنم؟',45,NULL,NULL,'kannst du noch einmal sagen was ich danach machen soll',NULL,'[{"form":"present_2sg","lemma":"können","partOfSpeech":"verb","surface":"Kannst","translation":"توانستن / بتوان"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"noch","meaning":"یک بار دیگر","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"einmal","partOfSpeech":"adverb","surface":"einmal","translation":"یک بار"},{"lemma":"sagen","partOfSpeech":"verb","surface":"sagen","translation":"گفتن"},{"lemma":"was","partOfSpeech":"pronoun","surface":"was","translation":"چی / چه"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"danach","partOfSpeech":"adverb","surface":"danach","translation":"بعد از آن / بعدش"},{"lemma":"machen","partOfSpeech":"verb","surface":"machen","translation":"انجام دادن"},{"form":"present_1sg","lemma":"sollen","partOfSpeech":"verb","suffix":"?","surface":"soll","translation":"باید / قرار است"}]','پرسش غیرمستقیم با was','در بخش پرسشی با was، فعل صرف شده در پایان قرار می گیرد.','{"pattern":"Kannst du sagen, was + subject + infinitive + modal?"}','{"cefr":"B1"}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,5,'character','Prüfe, ob Text und Bild richtig sind.','بررسی کن که متن و تصویر درست باشند.',45,NULL,NULL,NULL,NULL,'[{"form":"imperative_2sg","lemma":"prüfen","partOfSpeech":"verb","suffix":",","surface":"Prüfe","translation":"بررسی کردن"},{"lemma":"ob","partOfSpeech":"conjunction","surface":"ob","translation":"آیا / اینکه"},{"lemma":"Text","partOfSpeech":"noun","surface":"Text","translation":"متن"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"Bild","partOfSpeech":"noun","surface":"Bild","translation":"تصویر"},{"lemma":"richtig","partOfSpeech":"adjective","surface":"richtig","translation":"درست"},{"form":"present_plural","lemma":"sein","partOfSpeech":"verb","suffix":".","surface":"sind","translation":"بودن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Alles klar. Jetzt kann ich den Ablauf selbst erklären.','باشه. حالا خودم می تونم روند کار رو توضیح بدم.',45,NULL,NULL,'alles klar jetzt kann ich den ablauf selbst erklären',NULL,'[{"lemma":"alles","partOfSpeech":"pronoun","surface":"Alles","translation":"همه چیز"},{"lemma":"klar","partOfSpeech":"adjective","suffix":".","surface":"klar","translation":"روشن / مشخص"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"Jetzt","translation":"حالا / اکنون"},{"form":"present_1sg","lemma":"können","partOfSpeech":"verb","surface":"kann","translation":"توانستن / بتوان"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Ablauf","partOfSpeech":"noun","surface":"Ablauf","translation":"روند کار"},{"lemma":"selbst","partOfSpeech":"adverb","surface":"selbst","translation":"خود / شخصا"},{"lemma":"erklären","partOfSpeech":"verb","suffix":".","surface":"erklären","translation":"توضیح دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_082,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_060,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_035,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_079,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_051,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_067,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_084,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_049,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_087,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_025,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_085,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_052,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_092,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_061,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_039,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_068,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_020,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_019,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_048,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_063,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_069,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_047,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_089,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_043,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_092,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_090,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_035,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_088,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_053,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_042,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_076,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_091,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_038,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_023,'new',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_086,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_019,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_011,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_035,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_081,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_070,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_026,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_072,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_075,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_087,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_085,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_078,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_074,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_069,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_022,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_036,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_049,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_020,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_019,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_067,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_046,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_035,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_080,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_060,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_038,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_083,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_044,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_057,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_084,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_073,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_062,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_058,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_077,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_078,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_069,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_071,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_025,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_040,'new',1,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_039,'عبارت کلیدی درس',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_025,'واژه کلیدی درس',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به جمله مارتین گوش کن',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به پرسش بعدی گوش کن',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'پاسخ را با صدای بلند بگو',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_025,'معنی واژه کلیدی را انتخاب کن',NULL,44,'{"mode":"word_translation","question":"erklären در این درس چه معنی دارد؟","choices":["توضیح دادن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,44,'{"source":"lesson_story","question":"آنا باید اول کدام فایل را انتخاب کند؟","choices":["فایل درست","فایل قبلی","فایل ناقص"],"correctIndex":0}','{"cefr":"B1","series":87}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_091,'عبارت کلیدی درس',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_043,'واژه کلیدی درس',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به جمله مارتین گوش کن',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به پرسش بعدی گوش کن',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'پاسخ را با صدای بلند بگو',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_043,'معنی واژه کلیدی را انتخاب کن',NULL,44,'{"mode":"word_translation","question":"klicken در این درس چه معنی دارد؟","choices":["کلیک کردن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,44,'{"source":"lesson_story","question":"گزینه ویرایش کجا قرار دارد؟","choices":["کنار مداد کوچک","پایین صفحه","داخل فایل"],"correctIndex":0}','{"cefr":"B1","series":87}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_036,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_023,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به جمله مارتین گوش کن',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به پرسش بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_023,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"einfügen در این درس چه معنی دارد؟","choices":["وارد کردن / افزودن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"آنا بعد از وارد کردن تصویر چه کار می کند؟","choices":["فایل را ذخیره می کند","صفحه را پاک می کند","منو را می بندد"],"correctIndex":0}','{"cefr":"B1","series":87}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_040,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_002,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به جمله مارتین گوش کن',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به پرسش بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_002,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"Ablauf در این درس چه معنی دارد؟","choices":["روند کار","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"آنا در مرحله آخر چه چیزی را بررسی می کند؟","choices":["متن و تصویر","فقط عددها","فقط نام فایل"],"correctIndex":0}','{"cefr":"B1","series":87}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 087 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='anna-martin-b1-project' AND storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 087 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 087 turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 087 activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 087 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) AS n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) duplicate_pairs;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple detected.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_087_v9();
DROP PROCEDURE IF EXISTS import_nova_series_087_v9;
-- END SERIES 087

-- BEGIN SERIES 088
-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 088
-- B1 > Arbeit & Zusammenarbeit > Ich glaube, dass wir mehr Zeit brauchen
-- Requires canonical Nova v9.0 and QA-passed staged Series 081-087.
-- Uses the unchanged Nova v9.0 schema; contains no schema DDL.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_088_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_088_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_prior_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_martin BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_001 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_002 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_003 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_004 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_005 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_006 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_007 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_008 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_009 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_010 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_011 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_012 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_013 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_014 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_015 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_016 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_017 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_018 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_019 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_020 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_021 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_022 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_023 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_024 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_025 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_026 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_027 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_028 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_029 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_030 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_031 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_032 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_033 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_034 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_035 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_036 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_037 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_038 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_039 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_040 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_041 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_042 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_043 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_044 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_045 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_046 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_047 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_048 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_049 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_050 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_051 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_052 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_053 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_054 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_055 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_056 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_057 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_058 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_059 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_060 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_061 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_062 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_063 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_064 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_065 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_066 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_067 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_068 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_069 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_070 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_071 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_072 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_073 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_074 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_075 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_076 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_077 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_078 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_079 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_080 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_081 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_082 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_083 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_084 BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE v_t_23 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_24 BIGINT UNSIGNED DEFAULT NULL;

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='B1' AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Level from Series 081 not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 from Series 086 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='Arbeit & Zusammenarbeit' AND title_translation='کار و همکاری';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 canonical identity mismatch.'; END IF;
  SELECT id INTO v_prior_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_prior_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 087 Chapter not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prior_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 087 Chapter must be validated before Series 088.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_module AND c.sort_order BETWEEN 1 AND 2 AND l.storyline_key='anna-martin-b1-project' AND l.storyline_order BETWEEN 1 AND 8;
  IF v_count<>8 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 086-087 storyline orders 1-8 are required.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 03 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Ich glaube, dass wir mehr Zeit brauchen' AND title_translation='فکر می کنم وقت بیشتری لازم داریم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 088 canonical Chapter title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 03 must be empty before Series 088 import.'; END IF;
  SELECT id INTO v_c_martin FROM characters WHERE course_id=v_course AND name='Martin' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_martin IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Martin not found.'; END IF;
  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;
  IF v_c_martin=v_c_anna THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Martin and Anna must be distinct Characters.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='aber' AND part_of_speech='conjunction' AND translation='اما' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: aber | conjunction'; END IF;

  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='alles' AND part_of_speech='pronoun' AND translation='همه چیز' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: alles | pronoun'; END IF;

  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: an | preposition'; END IF;

  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='antworten' AND part_of_speech='verb' AND translation='جواب دادن' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: antworten | verb'; END IF;

  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='arbeiten' AND part_of_speech='verb' AND translation='کار کردن' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: arbeiten | verb'; END IF;

  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='auch' AND part_of_speech='adverb' AND translation='هم / همچنین' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auch | adverb'; END IF;

  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='bis' AND part_of_speech='preposition' AND translation='تا' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: bis | preposition'; END IF;

  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='brauchen' AND part_of_speech='verb' AND translation='نیاز داشتن / لازم داشتن' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: brauchen | verb'; END IF;

  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;

  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;

  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='dass' AND part_of_speech='conjunction' AND translation='که' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'dass','dass','conjunction','که',45,'{"type":"conjunction"}','[{"text":"ob","translation":"آیا"},{"text":"wenn","translation":"اگر"},{"text":"weil","translation":"چون"},{"text":"aber","translation":"اما"},{"text":"und","translation":"و"}]','Ich glaube, dass wir mehr Zeit brauchen.','فکر می کنم وقت بیشتری لازم داریم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;

  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;

  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;

  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='Ende' AND part_of_speech='noun' AND translation='پایان' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ende','Ende','noun','پایان',45,'{"gender":"neuter","plural":"Enden"}','[{"text":"Zeit","translation":"زمان"},{"text":"Termin","translation":"موعد"},{"text":"Stunde","translation":"ساعت"},{"text":"Team","translation":"تیم"},{"text":"Nachricht","translation":"پیام"}]','Und am Ende prüfen wir alles zusammen.','و در پایان همه چیز رو با هم بررسی می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='erklären' AND part_of_speech='verb' AND translation='توضیح دادن' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: erklären | verb'; END IF;

  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: es | pronoun'; END IF;

  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='fast' AND part_of_speech='adverb' AND translation='تقریبا' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'fast','fast','adverb','تقریبا',45,'{"type":"adverb"}','[{"text":"mindestens","translation":"حداقل"},{"text":"sofort","translation":"همین الان"},{"text":"später","translation":"دیرتر"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"}]','Fast, aber zwei Grafiken fehlen noch.','تقریبا، ولی دو نمودار هنوز آماده نیست.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='fehlen' AND part_of_speech='verb' AND translation='کم بودن / وجود نداشتن' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fehlen | verb'; END IF;

  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='fragen' AND part_of_speech='verb' AND translation='پرسیدن' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'fragen','fragen','verb','پرسیدن',45,'{"type":"verb"}','[{"text":"brauchen","translation":"نیاز داشتن"},{"text":"informieren","translation":"اطلاع دادن"},{"text":"schreiben","translation":"نوشتن"},{"text":"sagen","translation":"گفتن"},{"text":"verschieben","translation":"عقب انداختن"}]','Können wir fragen, ob fünf Uhr auch passt?','می تونیم بپرسیم ساعت پنج هم مناسبه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_020=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='fünf' AND part_of_speech='number' AND translation='پنج' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'fünf','fünf','number','پنج',45,'{"type":"number"}','[{"text":"eins","translation":"یک"},{"text":"zwei","translation":"دو"},{"text":"drei","translation":"سه"},{"text":"vier","translation":"چهار"},{"text":"sechs","translation":"شش"}]','Können wir fragen, ob fünf Uhr auch passt?','می تونیم بپرسیم ساعت پنج هم مناسبه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_021=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='für' AND part_of_speech='preposition' AND translation='برای' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'für','für','preposition','برای',45,'{"type":"preposition"}','[{"text":"bis","translation":"تا"},{"text":"ohne","translation":"بدون"},{"text":"in","translation":"در"},{"text":"auf","translation":"روی"},{"text":"an","translation":"در"}]','Ja, dann haben wir genug Zeit für die Kontrolle.','آره، اون وقت برای بررسی نهایی وقت کافی داریم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_022=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='genug' AND part_of_speech='determiner' AND translation='کافی' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'genug','genug','determiner','کافی',45,'{"type":"determiner"}','[{"text":"mehr","translation":"بیشتر"},{"text":"viel","translation":"زیاد"},{"text":"wenig","translation":"کم"},{"text":"einige","translation":"چند"},{"text":"alle","translation":"همه"}]','Ja, dann haben wir genug Zeit für die Kontrolle.','آره، اون وقت برای بررسی نهایی وقت کافی داریم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_023=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='glauben' AND part_of_speech='verb' AND translation='فکر کردن / باور داشتن' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'glauben','glauben','verb','فکر کردن / باور داشتن',45,'{"type":"verb"}','[{"text":"brauchen","translation":"نیاز داشتن"},{"text":"informieren","translation":"اطلاع دادن"},{"text":"schreiben","translation":"نوشتن"},{"text":"sagen","translation":"گفتن"},{"text":"fragen","translation":"پرسیدن"}]','Ich glaube, dass wir mehr Zeit brauchen.','فکر می کنم وقت بیشتری لازم داریم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_024=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='Grafik' AND part_of_speech='noun' AND translation='نمودار' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Grafik','Grafik','noun','نمودار',45,'{"gender":"feminine","plural":"Grafiken"}','[{"text":"Zeit","translation":"زمان"},{"text":"Termin","translation":"موعد"},{"text":"Stunde","translation":"ساعت"},{"text":"Team","translation":"تیم"},{"text":"Nachricht","translation":"پیام"}]','Fast, aber zwei Grafiken fehlen noch.','تقریبا، ولی دو نمودار هنوز آماده نیست.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_025=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='Grund' AND part_of_speech='noun' AND translation='دلیل' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Grund | noun'; END IF;

  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gut | adjective'; END IF;

  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;

  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;

  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='Ich glaube, dass wir mehr Zeit brauchen.' AND part_of_speech='phrase' AND translation='فکر می کنم وقت بیشتری لازم داریم.' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich glaube, dass wir mehr Zeit brauchen.','Ich glaube, dass wir mehr Zeit brauchen.','phrase','فکر می کنم وقت بیشتری لازم داریم.',45,'{"type":"sentence_pattern"}','[{"text":"Ich denke, dass zwei Grafiken fehlen.","translation":"فکر می کنم دو نمودار آماده نیست."},{"text":"Wir schaffen das sicher bis vier Uhr.","translation":"حتما تا ساعت چهار تمومش می کنیم."},{"text":"Die Präsentation ist schon komplett.","translation":"ارائه از قبل کامله."},{"text":"Eine Stunde ist mehr als genug.","translation":"یک ساعت بیشتر از کافیه."},{"text":"Wir brauchen nur noch die Kontrolle.","translation":"فقط بررسی نهایی مونده."}]','Ich glaube, dass wir mehr Zeit brauchen.','فکر می کنم وقت بیشتری لازم داریم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_030=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: in | preposition'; END IF;

  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='informieren' AND part_of_speech='verb' AND translation='اطلاع دادن' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'informieren','informieren','verb','اطلاع دادن',45,'{"type":"verb"}','[{"text":"brauchen","translation":"نیاز داشتن"},{"text":"schreiben","translation":"نوشتن"},{"text":"sagen","translation":"گفتن"},{"text":"fragen","translation":"پرسیدن"},{"text":"verschieben","translation":"عقب انداختن"}]','Dann informieren wir das Team sofort.','پس همین الان به تیم خبر می دیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_032=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;

  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;

  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='Jetzt wissen wir, dass wir bis fünf Uhr Zeit haben.' AND part_of_speech='phrase' AND translation='حالا می دونیم که تا ساعت پنج وقت داریم.' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Jetzt wissen wir, dass wir bis fünf Uhr Zeit haben.','Jetzt wissen wir, dass wir bis fünf Uhr Zeit haben.','phrase','حالا می دونیم که تا ساعت پنج وقت داریم.',45,'{"type":"sentence_pattern"}','[{"text":"Jetzt glauben wir, dass fünf Uhr passt.","translation":"حالا فکر می کنیم ساعت پنج مناسبه."},{"text":"Wir wissen noch nicht, ob wir genug Zeit haben.","translation":"هنوز نمی دونیم وقت کافی داریم یا نه."},{"text":"Bis vier Uhr müssen wir alles prüfen.","translation":"تا ساعت چهار باید همه چیز رو بررسی کنیم."},{"text":"Die Projektleiterin hat noch nicht geantwortet.","translation":"مدیر پروژه هنوز جواب نداده."},{"text":"Dann arbeiten wir ohne Pause weiter.","translation":"پس بدون وقفه به کار ادامه می دیم."}]','Jetzt wissen wir, dass wir bis fünf Uhr Zeit haben.','حالا می دونیم که تا ساعت پنج وقت داریم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_035=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='komplett' AND part_of_speech='adjective' AND translation='کامل' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'komplett','komplett','adjective','کامل',45,'{"type":"adjective"}','[{"text":"fertig","translation":"آماده"},{"text":"richtig","translation":"درست"},{"text":"falsch","translation":"نادرست"},{"text":"kurz","translation":"کوتاه"},{"text":"lang","translation":"بلند"}]','Ist die Präsentation jetzt komplett?','ارائه حالا کامله؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_036=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;

  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='Können wir fragen, ob fünf Uhr auch passt?' AND part_of_speech='phrase' AND translation='می تونیم بپرسیم ساعت پنج هم مناسبه؟' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Können wir fragen, ob fünf Uhr auch passt?','Können wir fragen, ob fünf Uhr auch passt?','phrase','می تونیم بپرسیم ساعت پنج هم مناسبه؟',45,'{"type":"sentence_pattern"}','[{"text":"Können wir den Termin auf morgen verschieben?","translation":"می تونیم موعد رو به فردا بندازیم؟"},{"text":"Fünf Uhr passt der Projektleiterin sicher.","translation":"ساعت پنج حتما برای مدیر پروژه مناسبه."},{"text":"Eine Stunde würde nicht reichen.","translation":"یک ساعت کافی نمی شه."},{"text":"Wir fragen, wann die Kontrolle beginnt.","translation":"می پرسیم بررسی نهایی کی شروع می شه."},{"text":"Dann schicken wir die Nachricht später.","translation":"پس پیام رو بعدا می فرستیم."}]','Können wir fragen, ob fünf Uhr auch passt?','می تونیم بپرسیم ساعت پنج هم مناسبه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_038=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='Kontrolle' AND part_of_speech='noun' AND translation='بررسی نهایی' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Kontrolle | noun'; END IF;

  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='kurz' AND part_of_speech='adjective' AND translation='کوتاه' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'kurz','kurz','adjective','کوتاه',45,'{"type":"adjective"}','[{"text":"komplett","translation":"کامل"},{"text":"fertig","translation":"آماده"},{"text":"richtig","translation":"درست"},{"text":"falsch","translation":"نادرست"},{"text":"lang","translation":"بلند"}]','Ja, ich erkläre auch kurz den Grund.','آره، دلیلش رو هم کوتاه توضیح می دم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_040=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='mehr' AND part_of_speech='determiner' AND translation='بیشتر' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'mehr','mehr','determiner','بیشتر',45,'{"type":"determiner"}','[{"text":"viel","translation":"زیاد"},{"text":"genug","translation":"کافی"},{"text":"wenig","translation":"کم"},{"text":"einige","translation":"چند"},{"text":"alle","translation":"همه"}]','Ich glaube, dass wir mehr Zeit brauchen.','فکر می کنم وقت بیشتری لازم داریم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='mindestens' AND part_of_speech='adverb' AND translation='حداقل' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'mindestens','mindestens','adverb','حداقل',45,'{"type":"adverb"}','[{"text":"fast","translation":"تقریبا"},{"text":"sofort","translation":"همین الان"},{"text":"später","translation":"دیرتر"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"}]','Mindestens eine Stunde.','حداقل یک ساعت.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_042=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: müssen | verb'; END IF;

  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='Nachricht' AND part_of_speech='noun' AND translation='پیام' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Nachricht | noun'; END IF;

  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;

  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='ob' AND part_of_speech='conjunction' AND translation='آیا / اینکه' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ob | conjunction'; END IF;

  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='ohne' AND part_of_speech='preposition' AND translation='بدون' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ohne','ohne','preposition','بدون',45,'{"type":"preposition"}','[{"text":"bis","translation":"تا"},{"text":"für","translation":"برای"},{"text":"in","translation":"در"},{"text":"auf","translation":"روی"},{"text":"an","translation":"در"}]','Dann arbeiten wir ohne Stress weiter.','پس بدون استرس به کار ادامه می دیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_047=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='Ordnung' AND part_of_speech='noun' AND translation='نظم / وضعیت درست' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ordnung','Ordnung','noun','نظم / وضعیت درست',45,'{"gender":"feminine","plural":"Ordnungen"}','[{"text":"Zeit","translation":"زمان"},{"text":"Termin","translation":"موعد"},{"text":"Stunde","translation":"ساعت"},{"text":"Team","translation":"تیم"},{"text":"Nachricht","translation":"پیام"}]','Fünf Uhr ist in Ordnung.','ساعت پنج مناسبه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_048=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='passen' AND part_of_speech='verb' AND translation='اندازه بودن / مناسب بودن' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: passen | verb'; END IF;

  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='Präsentation' AND part_of_speech='noun' AND translation='ارائه' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Präsentation | noun'; END IF;

  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='Projektleiterin' AND part_of_speech='noun' AND translation='مدیر پروژه زن' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Projektleiterin','Projektleiterin','noun','مدیر پروژه زن',45,'{"gender":"feminine","plural":"Projektleiterinnen"}','[{"text":"Zeit","translation":"زمان"},{"text":"Termin","translation":"موعد"},{"text":"Stunde","translation":"ساعت"},{"text":"Team","translation":"تیم"},{"text":"Nachricht","translation":"پیام"}]','Der Projektleiterin.','به مدیر پروژه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_051=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='prüfen' AND part_of_speech='verb' AND translation='بررسی کردن' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: prüfen | verb'; END IF;

  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='reichen' AND part_of_speech='verb' AND translation='کافی بودن' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: reichen | verb'; END IF;

  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='sagen' AND part_of_speech='verb' AND translation='گفتن' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sagen | verb'; END IF;

  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='schaffen' AND part_of_speech='verb' AND translation='از عهده برآمدن' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schaffen | verb'; END IF;

  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='schicken' AND part_of_speech='verb' AND translation='فرستادن' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schicken | verb'; END IF;

  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='schreiben' AND part_of_speech='verb' AND translation='نوشتن' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schreiben','schreiben','verb','نوشتن',45,'{"type":"verb"}','[{"text":"brauchen","translation":"نیاز داشتن"},{"text":"informieren","translation":"اطلاع دادن"},{"text":"sagen","translation":"گفتن"},{"text":"fragen","translation":"پرسیدن"},{"text":"verschieben","translation":"عقب انداختن"}]','Wem schreiben wir zuerst?','اول به کی پیام می دیم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_057=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;

  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='sie' AND part_of_speech='pronoun' AND translation='او / آن ها' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sie | pronoun'; END IF;

  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='sofort' AND part_of_speech='adverb' AND translation='فورا / همین الان' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sofort | adverb'; END IF;

  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='spät' AND part_of_speech='adverb' AND translation='دیر / با تاخیر' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'spät','spät','adverb','دیر / با تاخیر',45,'{"type":"adverb"}','[{"text":"fast","translation":"تقریبا"},{"text":"mindestens","translation":"حداقل"},{"text":"sofort","translation":"همین الان"},{"text":"später","translation":"دیرتر"},{"text":"zuerst","translation":"اول"}]','Wir müssen ihr sagen, dass es später wird.','باید بهش بگیم که دیرتر آماده می شه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_061=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='Stress' AND part_of_speech='noun' AND translation='استرس' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Stress','Stress','noun','استرس',45,'{"gender":"masculine","plural":null}','[{"text":"Zeit","translation":"زمان"},{"text":"Termin","translation":"موعد"},{"text":"Stunde","translation":"ساعت"},{"text":"Team","translation":"تیم"},{"text":"Nachricht","translation":"پیام"}]','Dann arbeiten wir ohne Stress weiter.','پس بدون استرس به کار ادامه می دیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_062=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='Stunde' AND part_of_speech='noun' AND translation='ساعت / یک ساعت' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Stunde','Stunde','noun','ساعت / یک ساعت',45,'{"gender":"feminine","plural":"Stunden"}','[{"text":"Zeit","translation":"زمان"},{"text":"Termin","translation":"موعد"},{"text":"Team","translation":"تیم"},{"text":"Nachricht","translation":"پیام"},{"text":"Grund","translation":"دلیل"}]','Mindestens eine Stunde.','حداقل یک ساعت.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_063=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='Team' AND part_of_speech='noun' AND translation='تیم' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Team','Team','noun','تیم',45,'{"gender":"neuter","plural":"Teams"}','[{"text":"Zeit","translation":"زمان"},{"text":"Termin","translation":"موعد"},{"text":"Stunde","translation":"ساعت"},{"text":"Nachricht","translation":"پیام"},{"text":"Grund","translation":"دلیل"}]','Dann informieren wir das Team sofort.','پس همین الان به تیم خبر می دیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_064=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='Termin' AND part_of_speech='noun' AND translation='قرار / وقت' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Termin | noun'; END IF;

  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='Uhr' AND part_of_speech='noun' AND translation='ساعت' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Uhr | noun'; END IF;

  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='um' AND part_of_speech='preposition' AND translation='در ساعت / حوالی' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: um | preposition'; END IF;

  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;

  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='verschieben' AND part_of_speech='verb' AND translation='جا به جا کردن / تغییر زمان' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: verschieben | verb'; END IF;

  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='viel' AND part_of_speech='determiner' AND translation='زیاد / مقدار زیاد' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'viel','viel','determiner','زیاد / مقدار زیاد',45,'{"type":"determiner"}','[{"text":"mehr","translation":"بیشتر"},{"text":"genug","translation":"کافی"},{"text":"wenig","translation":"کم"},{"text":"einige","translation":"چند"},{"text":"alle","translation":"همه"}]','Wie viel Zeit fehlt uns?','چقدر وقت کم داریم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_070=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='vielleicht' AND part_of_speech='adverb' AND translation='شاید' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vielleicht','vielleicht','adverb','شاید',45,'{"type":"adverb"}','[{"text":"fast","translation":"تقریبا"},{"text":"mindestens","translation":"حداقل"},{"text":"sofort","translation":"همین الان"},{"text":"später","translation":"دیرتر"},{"text":"zuerst","translation":"اول"}]','Vielleicht können wir den Termin verschieben.','شاید بتونیم موعد رو عقب بندازیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_071=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='vier' AND part_of_speech='number' AND translation='چهار' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: vier | number'; END IF;

  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;

  SELECT id INTO v_w_074 FROM words WHERE course_id=v_course AND lemma='weiter' AND part_of_speech='adverb' AND translation='ادامه / بیشتر' ORDER BY id LIMIT 1;
  IF v_w_074 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'weiter','weiter','adverb','ادامه / بیشتر',45,'{"type":"adverb"}','[{"text":"fast","translation":"تقریبا"},{"text":"mindestens","translation":"حداقل"},{"text":"sofort","translation":"همین الان"},{"text":"später","translation":"دیرتر"},{"text":"zuerst","translation":"اول"}]','Dann arbeiten wir ohne Stress weiter.','پس بدون استرس به کار ادامه می دیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_074=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_075 FROM words WHERE course_id=v_course AND lemma='wer' AND part_of_speech='pronoun' AND translation='چه کسی / کی' ORDER BY id LIMIT 1;
  IF v_w_075 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wer | pronoun'; END IF;

  SELECT id INTO v_w_076 FROM words WHERE course_id=v_course AND lemma='werden' AND part_of_speech='verb' AND translation='شدن / خواهد' ORDER BY id LIMIT 1;
  IF v_w_076 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: werden | verb'; END IF;

  SELECT id INTO v_w_077 FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_077 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wie | adverb'; END IF;

  SELECT id INTO v_w_078 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_078 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;

  SELECT id INTO v_w_079 FROM words WHERE course_id=v_course AND lemma='Wir müssen ihr sagen, dass es später wird.' AND part_of_speech='phrase' AND translation='باید بهش بگیم که دیرتر آماده می شه.' ORDER BY id LIMIT 1;
  IF v_w_079 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wir müssen ihr sagen, dass es später wird.','Wir müssen ihr sagen, dass es später wird.','phrase','باید بهش بگیم که دیرتر آماده می شه.',45,'{"type":"sentence_pattern"}','[{"text":"Wir können ihr später eine Nachricht schreiben.","translation":"می تونیم بعدا براش پیام بنویسیم."},{"text":"Das Team kennt den Grund schon.","translation":"تیم از قبل دلیلش رو می دونه."},{"text":"Du musst zuerst die Projektleiterin fragen.","translation":"باید اول از مدیر پروژه بپرسی."},{"text":"Ich erkläre ihr, warum wir warten.","translation":"براش توضیح می دم چرا صبر می کنیم."},{"text":"Wir sagen dem Team sofort Bescheid.","translation":"همین الان به تیم خبر می دیم."}]','Wir müssen ihr sagen, dass es später wird.','باید بهش بگیم که دیرتر آماده می شه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_079=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_080 FROM words WHERE course_id=v_course AND lemma='wissen' AND part_of_speech='verb' AND translation='دانستن' ORDER BY id LIMIT 1;
  IF v_w_080 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wissen | verb'; END IF;

  SELECT id INTO v_w_081 FROM words WHERE course_id=v_course AND lemma='Zeit' AND part_of_speech='noun' AND translation='وقت / زمان' ORDER BY id LIMIT 1;
  IF v_w_081 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Zeit | noun'; END IF;

  SELECT id INTO v_w_082 FROM words WHERE course_id=v_course AND lemma='zuerst' AND part_of_speech='adverb' AND translation='اول / ابتدا' ORDER BY id LIMIT 1;
  IF v_w_082 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zuerst | adverb'; END IF;

  SELECT id INTO v_w_083 FROM words WHERE course_id=v_course AND lemma='zusammen' AND part_of_speech='adverb' AND translation='با هم' ORDER BY id LIMIT 1;
  IF v_w_083 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zusammen | adverb'; END IF;

  SELECT id INTO v_w_084 FROM words WHERE course_id=v_course AND lemma='zwei' AND part_of_speech='number' AND translation='دو' ORDER BY id LIMIT 1;
  IF v_w_084 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zwei | number'; END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Mehr Zeit einplanen','در نظر گرفتن زمان بیشتر','Anna und Martin prüfen die Präsentation und erkennen, dass zwei Grafiken vor dem bisherigen Termin fehlen.','آنا و مارتین ارائه را بررسی می کنند و متوجه می شوند که پیش از موعد فعلی هنوز دو نمودار آماده نیست.','story','anna-martin-b1-project',9,45,150,1,'validated','{"relationship":"coworkers","context":"request-more-project-time","cefr":"B1","storyArc":"assess-inform-negotiate-confirm"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,1,'character','Ist die Präsentation jetzt komplett?','ارائه حالا کامله؟',45,NULL,NULL,NULL,NULL,'[{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"Ist","translation":"بودن"},{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Präsentation","partOfSpeech":"noun","surface":"Präsentation","translation":"ارائه"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"lemma":"komplett","partOfSpeech":"adjective","suffix":"?","surface":"komplett","translation":"کامل"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Fast, aber zwei Grafiken fehlen noch.','تقریبا، ولی دو نمودار هنوز آماده نیست.',45,NULL,NULL,'fast aber zwei grafiken fehlen noch',NULL,'[{"lemma":"fast","partOfSpeech":"adverb","suffix":",","surface":"Fast","translation":"تقریبا"},{"lemma":"aber","partOfSpeech":"conjunction","surface":"aber","translation":"اما"},{"lemma":"zwei","partOfSpeech":"number","surface":"zwei","translation":"دو"},{"form":"plural","lemma":"Grafik","partOfSpeech":"noun","surface":"Grafiken","translation":"نمودار"},{"form":"present_plural","lemma":"fehlen","partOfSpeech":"verb","surface":"fehlen","translation":"کم بودن / وجود نداشتن"},{"lemma":"noch","partOfSpeech":"adverb","suffix":".","surface":"noch","translation":"هنوز"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,3,'character','Schaffen wir das bis vier Uhr?','تا ساعت چهار تمومش می کنیم؟',45,NULL,NULL,NULL,NULL,'[{"form":"present_plural","lemma":"schaffen","partOfSpeech":"verb","surface":"Schaffen","translation":"از عهده برآمدن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"lemma":"bis","partOfSpeech":"preposition","surface":"bis","translation":"تا"},{"lemma":"vier","partOfSpeech":"number","surface":"vier","translation":"چهار"},{"lemma":"Uhr","partOfSpeech":"noun","suffix":"?","surface":"Uhr","translation":"ساعت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Ich glaube, dass wir mehr Zeit brauchen.','فکر می کنم وقت بیشتری لازم داریم.',45,NULL,NULL,'ich glaube dass wir mehr zeit brauchen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"glauben","partOfSpeech":"verb","surface":"glaube","translation":"فکر کردن / باور داشتن"},{"lemma":"dass","partOfSpeech":"conjunction","surface":"dass","translation":"که"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"mehr","partOfSpeech":"determiner","surface":"mehr","translation":"بیشتر"},{"lemma":"Zeit","partOfSpeech":"noun","surface":"Zeit","translation":"وقت / زمان"},{"form":"present_plural","lemma":"brauchen","partOfSpeech":"verb","suffix":".","surface":"brauchen","translation":"نیاز داشتن / لازم داشتن"}]','جمله وابسته با dass','بعد از dass، فعل صرف شده در پایان جمله وابسته قرار می گیرد.','{"pattern":"Ich glaube, dass + subject + object + verb"}','{"cefr":"B1"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,5,'character','Wie viel Zeit fehlt uns?','چقدر وقت کم داریم؟',45,NULL,NULL,NULL,NULL,'[{"lemma":"wie","meaning":"چقدر","partOfSpeech":"adverb","surface":"Wie","translation":"چطور / چگونه"},{"lemma":"viel","partOfSpeech":"determiner","surface":"viel","translation":"زیاد / مقدار زیاد"},{"lemma":"Zeit","partOfSpeech":"noun","surface":"Zeit","translation":"وقت / زمان"},{"form":"present_3sg","lemma":"fehlen","partOfSpeech":"verb","surface":"fehlt","translation":"کم بودن / وجود نداشتن"},{"form":"dative_1pl","lemma":"wir","meaning":"به ما","partOfSpeech":"pronoun","suffix":"?","surface":"uns","translation":"ما"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,6,'learner','Mindestens eine Stunde.','حداقل یک ساعت.',45,NULL,NULL,'mindestens eine stunde',NULL,'[{"lemma":"mindestens","partOfSpeech":"adverb","surface":"Mindestens","translation":"حداقل"},{"form":"nominative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"lemma":"Stunde","partOfSpeech":"noun","suffix":".","surface":"Stunde","translation":"ساعت / یک ساعت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Das Team informieren','خبر دادن به تیم','Anna und Martin entscheiden, die Verzögerung offen zu melden und den Grund kurz zu erklären.','آنا و مارتین تصمیم می گیرند تاخیر را شفاف اطلاع بدهند و دلیلش را کوتاه توضیح بدهند.','story','anna-martin-b1-project',10,45,150,2,'validated','{"relationship":"coworkers","context":"request-more-project-time","cefr":"B1","storyArc":"assess-inform-negotiate-confirm"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,1,'character','Dann informieren wir das Team sofort.','پس همین الان به تیم خبر می دیم.',45,NULL,NULL,NULL,NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"present_plural","lemma":"informieren","partOfSpeech":"verb","surface":"informieren","translation":"اطلاع دادن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"accusative_neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"Team","partOfSpeech":"noun","surface":"Team","translation":"تیم"},{"lemma":"sofort","partOfSpeech":"adverb","suffix":".","surface":"sofort","translation":"فورا / همین الان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Wem schreiben wir zuerst?','اول به کی پیام می دیم؟',45,NULL,NULL,'wem schreiben wir zuerst',NULL,'[{"form":"dative","lemma":"wer","meaning":"به چه کسی","partOfSpeech":"pronoun","surface":"Wem","translation":"چه کسی / کی"},{"form":"present_plural","lemma":"schreiben","partOfSpeech":"verb","surface":"schreiben","translation":"نوشتن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"zuerst","partOfSpeech":"adverb","suffix":"?","surface":"zuerst","translation":"اول / ابتدا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,3,'character','Der Projektleiterin.','به مدیر پروژه.',45,NULL,NULL,NULL,NULL,'[{"form":"dative_feminine","lemma":"der","partOfSpeech":"article","surface":"Der","translation":"حرف تعریف"},{"lemma":"Projektleiterin","partOfSpeech":"noun","suffix":".","surface":"Projektleiterin","translation":"مدیر پروژه زن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Wir müssen ihr sagen, dass es später wird.','باید بهش بگیم که دیرتر آماده می شه.',45,NULL,NULL,'wir müssen ihr sagen dass es später wird',NULL,'[{"lemma":"wir","partOfSpeech":"pronoun","surface":"Wir","translation":"ما"},{"form":"present_plural","lemma":"müssen","partOfSpeech":"verb","surface":"müssen","translation":"مجبور بودن / باید"},{"form":"dative_feminine","lemma":"sie","meaning":"به او","partOfSpeech":"pronoun","surface":"ihr","translation":"او / آن ها"},{"lemma":"sagen","partOfSpeech":"verb","surface":"sagen","translation":"گفتن"},{"lemma":"dass","partOfSpeech":"conjunction","surface":"dass","translation":"که"},{"lemma":"es","partOfSpeech":"pronoun","surface":"es","translation":"آن / این"},{"form":"comparative","lemma":"spät","partOfSpeech":"adverb","surface":"später","translation":"دیر / با تاخیر"},{"form":"present_3sg","lemma":"werden","partOfSpeech":"verb","suffix":".","surface":"wird","translation":"شدن / خواهد"}]','گزارش وضعیت با dass','برای گفتن محتوای یک پیام از dass استفاده می کنیم و فعل جمله وابسته به پایان می رود.','{"pattern":"Wir sagen ihr, dass + subject + complement + verb"}','{"cefr":"B1"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,5,'character','Schreibst du die Nachricht?','تو پیام رو می نویسی؟',45,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"schreiben","partOfSpeech":"verb","surface":"Schreibst","translation":"نوشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Nachricht","partOfSpeech":"noun","suffix":"?","surface":"Nachricht","translation":"پیام"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,6,'learner','Ja, ich erkläre auch kurz den Grund.','آره، دلیلش رو هم کوتاه توضیح می دم.',45,NULL,NULL,'ja ich erkläre auch kurz den grund',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"erklären","partOfSpeech":"verb","surface":"erkläre","translation":"توضیح دادن"},{"lemma":"auch","partOfSpeech":"adverb","surface":"auch","translation":"هم / همچنین"},{"lemma":"kurz","partOfSpeech":"adjective","surface":"kurz","translation":"کوتاه"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Grund","partOfSpeech":"noun","suffix":".","surface":"Grund","translation":"دلیل"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Den Termin verschieben','عوض کردن موعد','Martin schlägt eine realistische Verlängerung vor, und Anna bittet um einen neuen Abgabetermin.','مارتین زمان بیشتری پیشنهاد می دهد و آنا برای یک موعد تحویل تازه درخواست می کند.','story','anna-martin-b1-project',11,45,150,3,'validated','{"relationship":"coworkers","context":"request-more-project-time","cefr":"B1","storyArc":"assess-inform-negotiate-confirm"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,1,'character','Vielleicht können wir den Termin verschieben.','شاید بتونیم موعد رو عقب بندازیم.',45,NULL,NULL,NULL,NULL,'[{"lemma":"vielleicht","partOfSpeech":"adverb","surface":"Vielleicht","translation":"شاید"},{"form":"present_plural","lemma":"können","partOfSpeech":"verb","surface":"können","translation":"توانستن / بتوان"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Termin","partOfSpeech":"noun","surface":"Termin","translation":"قرار / وقت"},{"lemma":"verschieben","partOfSpeech":"verb","suffix":".","surface":"verschieben","translation":"جا به جا کردن / تغییر زمان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Um wie viel Zeit?','چقدر عقبش بندازیم؟',45,NULL,NULL,'um wie viel zeit',NULL,'[{"lemma":"um","meaning":"به اندازه","partOfSpeech":"preposition","surface":"Um","translation":"در ساعت / حوالی"},{"lemma":"wie","meaning":"چقدر","partOfSpeech":"adverb","surface":"wie","translation":"چطور / چگونه"},{"lemma":"viel","partOfSpeech":"determiner","surface":"viel","translation":"زیاد / مقدار زیاد"},{"lemma":"Zeit","partOfSpeech":"noun","suffix":"?","surface":"Zeit","translation":"وقت / زمان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,3,'character','Eine Stunde würde reichen.','یک ساعت کافی می شه.',45,NULL,NULL,NULL,NULL,'[{"form":"nominative_feminine","lemma":"ein","partOfSpeech":"article","surface":"Eine","translation":"یک / حرف تعریف نامعین"},{"lemma":"Stunde","partOfSpeech":"noun","surface":"Stunde","translation":"ساعت / یک ساعت"},{"form":"konjunktiv_ii_3sg","lemma":"werden","partOfSpeech":"verb","surface":"würde","translation":"شدن / خواهد"},{"lemma":"reichen","partOfSpeech":"verb","suffix":".","surface":"reichen","translation":"کافی بودن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Können wir fragen, ob fünf Uhr auch passt?','می تونیم بپرسیم ساعت پنج هم مناسبه؟',45,NULL,NULL,'können wir fragen ob fünf uhr auch passt',NULL,'[{"form":"present_plural","lemma":"können","partOfSpeech":"verb","surface":"Können","translation":"توانستن / بتوان"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"fragen","partOfSpeech":"verb","suffix":",","surface":"fragen","translation":"پرسیدن"},{"lemma":"ob","partOfSpeech":"conjunction","surface":"ob","translation":"آیا / اینکه"},{"lemma":"fünf","partOfSpeech":"number","surface":"fünf","translation":"پنج"},{"lemma":"Uhr","partOfSpeech":"noun","surface":"Uhr","translation":"ساعت"},{"lemma":"auch","partOfSpeech":"adverb","surface":"auch","translation":"هم / همچنین"},{"form":"present_3sg","lemma":"passen","partOfSpeech":"verb","suffix":"?","surface":"passt","translation":"اندازه بودن / مناسب بودن"}]','پرسش غیرمستقیم با ob','وقتی پاسخ پرسش بله یا نه است، از ob استفاده می کنیم و فعل صرف شده به پایان می رود.','{"pattern":"fragen, ob + subject + complement + verb"}','{"cefr":"B1"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,5,'character','Ja, dann haben wir genug Zeit für die Kontrolle.','آره، اون وقت برای بررسی نهایی وقت کافی داریم.',45,NULL,NULL,NULL,NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"dann","partOfSpeech":"adverb","surface":"dann","translation":"بعد / سپس"},{"form":"present_plural","lemma":"haben","partOfSpeech":"verb","surface":"haben","translation":"داشتن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"genug","partOfSpeech":"determiner","surface":"genug","translation":"کافی"},{"lemma":"Zeit","partOfSpeech":"noun","surface":"Zeit","translation":"وقت / زمان"},{"lemma":"für","partOfSpeech":"preposition","surface":"für","translation":"برای"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Kontrolle","partOfSpeech":"noun","suffix":".","surface":"Kontrolle","translation":"بررسی نهایی"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,6,'learner','Gut, ich schicke die Nachricht.','خوبه، پیام رو می فرستم.',45,NULL,NULL,'gut ich schicke die nachricht',NULL,'[{"lemma":"gut","partOfSpeech":"adjective","suffix":",","surface":"Gut","translation":"خوب"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"schicken","partOfSpeech":"verb","surface":"schicke","translation":"فرستادن"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Nachricht","partOfSpeech":"noun","suffix":".","surface":"Nachricht","translation":"پیام"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Ein neuer Abgabetermin','موعد تحویل جدید','Die Projektleiterin bestätigt fünf Uhr, sodass Anna und Martin konzentriert und ohne Stress weiterarbeiten können.','مدیر پروژه ساعت پنج را تایید می کند تا آنا و مارتین با تمرکز و بدون استرس به کار ادامه بدهند.','story','anna-martin-b1-project',12,45,150,4,'validated','{"relationship":"coworkers","context":"request-more-project-time","cefr":"B1","storyArc":"assess-inform-negotiate-confirm"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,1,'character','Die Projektleiterin hat geantwortet.','مدیر پروژه جواب داده.',45,NULL,NULL,NULL,NULL,'[{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"Die","translation":"حرف تعریف"},{"lemma":"Projektleiterin","partOfSpeech":"noun","surface":"Projektleiterin","translation":"مدیر پروژه زن"},{"form":"present_3sg","lemma":"haben","partOfSpeech":"verb","surface":"hat","translation":"داشتن"},{"form":"past_participle","lemma":"antworten","partOfSpeech":"verb","suffix":".","surface":"geantwortet","translation":"جواب دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Was hat sie geschrieben?','چی نوشته؟',45,NULL,NULL,'was hat sie geschrieben',NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_3sg","lemma":"haben","partOfSpeech":"verb","surface":"hat","translation":"داشتن"},{"form":"nominative_feminine","lemma":"sie","partOfSpeech":"pronoun","surface":"sie","translation":"او / آن ها"},{"form":"past_participle","lemma":"schreiben","partOfSpeech":"verb","suffix":"?","surface":"geschrieben","translation":"نوشتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,3,'character','Fünf Uhr ist in Ordnung.','ساعت پنج مناسبه.',45,NULL,NULL,NULL,NULL,'[{"lemma":"fünf","partOfSpeech":"number","surface":"Fünf","translation":"پنج"},{"lemma":"Uhr","partOfSpeech":"noun","surface":"Uhr","translation":"ساعت"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"lemma":"Ordnung","partOfSpeech":"noun","suffix":".","surface":"Ordnung","translation":"نظم / وضعیت درست"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Jetzt wissen wir, dass wir bis fünf Uhr Zeit haben.','حالا می دونیم که تا ساعت پنج وقت داریم.',45,NULL,NULL,'jetzt wissen wir dass wir bis fünf uhr zeit haben',NULL,'[{"lemma":"jetzt","partOfSpeech":"adverb","surface":"Jetzt","translation":"حالا / اکنون"},{"form":"present_plural","lemma":"wissen","partOfSpeech":"verb","surface":"wissen","translation":"دانستن"},{"lemma":"wir","partOfSpeech":"pronoun","suffix":",","surface":"wir","translation":"ما"},{"lemma":"dass","partOfSpeech":"conjunction","surface":"dass","translation":"که"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"bis","partOfSpeech":"preposition","surface":"bis","translation":"تا"},{"lemma":"fünf","partOfSpeech":"number","surface":"fünf","translation":"پنج"},{"lemma":"Uhr","partOfSpeech":"noun","surface":"Uhr","translation":"ساعت"},{"lemma":"Zeit","partOfSpeech":"noun","surface":"Zeit","translation":"وقت / زمان"},{"form":"present_plural","lemma":"haben","partOfSpeech":"verb","suffix":".","surface":"haben","translation":"داشتن"}]','اطمینان با dass','با wissen و dass نتیجه قطعی را بیان می کنیم؛ فعل جمله وابسته در پایان قرار می گیرد.','{"pattern":"Wir wissen, dass + subject + time + verb"}','{"cefr":"B1"}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,5,'character','Dann arbeiten wir ohne Stress weiter.','پس بدون استرس به کار ادامه می دیم.',45,NULL,NULL,NULL,NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"present_plural","lemma":"arbeiten","partOfSpeech":"verb","surface":"arbeiten","translation":"کار کردن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"ohne","partOfSpeech":"preposition","surface":"ohne","translation":"بدون"},{"lemma":"Stress","partOfSpeech":"noun","surface":"Stress","translation":"استرس"},{"lemma":"weiter","partOfSpeech":"adverb","suffix":".","surface":"weiter","translation":"ادامه / بیشتر"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Und am Ende prüfen wir alles zusammen.','و در پایان همه چیز رو با هم بررسی می کنیم.',45,NULL,NULL,'und am ende prüfen wir alles zusammen',NULL,'[{"lemma":"und","partOfSpeech":"conjunction","surface":"Und","translation":"و"},{"form":"contraction_an_dem","lemma":"an","meaning":"در","partOfSpeech":"preposition","surface":"am","translation":"در / در روز"},{"lemma":"Ende","partOfSpeech":"noun","surface":"Ende","translation":"پایان"},{"form":"present_plural","lemma":"prüfen","partOfSpeech":"verb","surface":"prüfen","translation":"بررسی کردن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"alles","partOfSpeech":"pronoun","surface":"alles","translation":"همه چیز"},{"lemma":"zusammen","partOfSpeech":"adverb","suffix":".","surface":"zusammen","translation":"با هم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_036,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_084,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_025,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_078,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_072,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_024,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_081,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_077,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_070,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_042,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_063,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_030,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_032,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_078,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_060,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_075,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_057,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_082,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_051,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_043,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_061,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_076,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_040,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_079,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_071,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_037,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_078,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_069,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_067,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_077,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_070,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_081,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_063,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_076,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_053,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_020,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_046,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_021,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_049,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_023,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_022,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_038,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_051,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_028,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_073,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_057,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_021,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_066,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_031,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_048,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_080,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_078,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_081,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_047,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_062,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_074,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_068,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_015,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_052,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_083,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_035,'new',1,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_030,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_081,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به جمله مارتین گوش کن',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به پرسش بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_081,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"Zeit در این درس چه معنی دارد؟","choices":["وقت / زمان","مسیر","رنگ"],"correctIndex":0}','{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"پیش از موعد چه چیزی هنوز آماده نیست؟","choices":["دو نمودار","متن اصلی","فایل نهایی"],"correctIndex":0}','{"cefr":"B1","series":88}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_079,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_032,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به جمله مارتین گوش کن',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به پرسش بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_032,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"informieren در این درس چه معنی دارد؟","choices":["اطلاع دادن","مسیر","رنگ"],"correctIndex":0}','{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"آنا و مارتین تاخیر را به چه کسی اطلاع می دهند؟","choices":["مدیر پروژه","مشتری","همکار تازه"],"correctIndex":0}','{"cefr":"B1","series":88}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_038,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_069,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به جمله مارتین گوش کن',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به پرسش بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_069,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"verschieben در این درس چه معنی دارد؟","choices":["جا به جا کردن / تغییر زمان","مسیر","رنگ"],"correctIndex":0}','{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"آن ها چه موعد تازه ای پیشنهاد می دهند؟","choices":["ساعت پنج","ساعت شش","فردا صبح"],"correctIndex":0}','{"cefr":"B1","series":88}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_035,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_062,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به جمله مارتین گوش کن',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به پرسش بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_062,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"Stress در این درس چه معنی دارد؟","choices":["استرس","مسیر","رنگ"],"correctIndex":0}','{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"بعد از تایید موعد، چطور به کار ادامه می دهند؟","choices":["بدون استرس","بدون بررسی","بدون تصویر"],"correctIndex":0}','{"cefr":"B1","series":88}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 088 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='anna-martin-b1-project' AND storyline_order BETWEEN 9 AND 12;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 088 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 088 turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 088 activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 088 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) AS n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) duplicate_pairs;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple detected.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_088_v9();
DROP PROCEDURE IF EXISTS import_nova_series_088_v9;
-- END SERIES 088

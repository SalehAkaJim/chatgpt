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

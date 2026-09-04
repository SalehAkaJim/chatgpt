-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 062
-- A2 > Im Hotel > Können Sie mir ein anderes Zimmer geben?
-- Requires Series 061.
-- Continues mia-marie-hotel orders 8-11.
-- Resolves the noisy-room complaint with a concrete room change.
-- Stay-extension vocabulary is deferred to Series 063.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_062_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_062_v9()
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
  DECLARE v_w_koennen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sie_formal BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_laut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zu_degree BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_das_zimmer_ist_zu_laut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_koennen_sie_mir_helfen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_geben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_andere BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_koennen_sie_mir_ein_anderes_zimmer_geben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_gebe_ihnen_ein_anderes_zimmer BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='A2' AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Level not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 061 before Series 062.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 05 Chapter 02 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 061 before Series 062.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prev_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 061 Chapter must be validated/complete before Series 062.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 05 Chapter 02 must be empty before Series 062 import.'; END IF;

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

  SELECT id INTO v_w_koennen FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_koennen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word können not found.'; END IF;

  SELECT id INTO v_w_sie_formal FROM words WHERE course_id=v_course AND lemma='Sie' AND part_of_speech='pronoun' AND translation='شما' ORDER BY id LIMIT 1;
  IF v_w_sie_formal IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Sie not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_bitte FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم' ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;

  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;

  SELECT id INTO v_w_laut FROM words WHERE course_id=v_course AND lemma='laut' AND part_of_speech='adjective' AND translation='پر سر و صدا' ORDER BY id LIMIT 1;
  IF v_w_laut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word laut not found.'; END IF;

  SELECT id INTO v_w_zu_degree FROM words WHERE course_id=v_course AND lemma='zu' AND part_of_speech='particle' AND translation='بیش از حد / خیلی' ORDER BY id LIMIT 1;
  IF v_w_zu_degree IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word zu not found.'; END IF;

  SELECT id INTO v_w_das_zimmer_ist_zu_laut FROM words WHERE course_id=v_course AND lemma='Das Zimmer ist zu laut.' AND part_of_speech='phrase' AND translation='اتاق خیلی پر سر و صداست.' ORDER BY id LIMIT 1;
  IF v_w_das_zimmer_ist_zu_laut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Das Zimmer ist zu laut. not found.'; END IF;

  SELECT id INTO v_w_koennen_sie_mir_helfen FROM words WHERE course_id=v_course AND lemma='Können Sie mir helfen?' AND part_of_speech='phrase' AND translation='می تونید کمکم کنید؟' ORDER BY id LIMIT 1;
  IF v_w_koennen_sie_mir_helfen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Können Sie mir helfen? not found.'; END IF;

  SELECT id INTO v_w_geben FROM words WHERE course_id=v_course AND lemma='geben' AND part_of_speech='verb' AND translation='دادن' ORDER BY id LIMIT 1;
  IF v_w_geben IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'geben','geben','verb','دادن',34,'{"present":{"ich":"gebe","du":"gibst","er_sie_es":"gibt"},"usage":"give_or_provide"}','[{"text":"nehmen","translation":"گرفتن"},{"text":"bringen","translation":"آوردن"},{"text":"zeigen","translation":"نشان دادن"},{"text":"helfen","translation":"کمک کردن"},{"text":"machen","translation":"انجام دادن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":62,"module":5}');
    SET v_w_geben=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_andere FROM words WHERE course_id=v_course AND lemma='andere' AND part_of_speech='adjective' AND translation='دیگر / متفاوت' ORDER BY id LIMIT 1;
  IF v_w_andere IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'andere','andere','adjective','دیگر / متفاوت',34,'{"usage":"other_or_different","surfaceInSeries062":"anderes","surfaceForm":"neuter_accusative_mixed_after_ein"}','[{"text":"gleiche","translation":"همان / یکسان"},{"text":"neue","translation":"جدید"},{"text":"kleine","translation":"کوچک"},{"text":"ruhige","translation":"آرام"},{"text":"gute","translation":"خوب"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":62,"module":5}');
    SET v_w_andere=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_koennen_sie_mir_ein_anderes_zimmer_geben FROM words WHERE course_id=v_course AND lemma='Können Sie mir ein anderes Zimmer geben?' AND part_of_speech='phrase' AND translation='می تونید یک اتاق دیگه بهم بدید؟' ORDER BY id LIMIT 1;
  IF v_w_koennen_sie_mir_ein_anderes_zimmer_geben IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Können Sie mir ein anderes Zimmer geben?','Können Sie mir ein anderes Zimmer geben?','phrase','می تونید یک اتاق دیگه بهم بدید؟',34,'{"modal":"können","modalForm":"können","person":"formal_2","recipient":"mir","recipientLemma":"ich","object":"ein anderes Zimmer","infinitive":"geben","register":"formal"}','[{"text":"Können Sie mir helfen?","translation":"می تونید کمکم کنید؟"},{"text":"Können Sie kommen?","translation":"می تونید بیاید؟"},{"text":"Das Zimmer ist zu laut.","translation":"اتاق خیلی پر سر و صداست."},{"text":"Ich gebe Ihnen ein anderes Zimmer.","translation":"یک اتاق دیگه بهتون می دم."},{"text":"Können Sie mir ein Zimmer geben?","translation":"می تونید یک اتاق بهم بدید؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":62,"module":5}');
    SET v_w_koennen_sie_mir_ein_anderes_zimmer_geben=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_gebe_ihnen_ein_anderes_zimmer FROM words WHERE course_id=v_course AND lemma='Ich gebe Ihnen ein anderes Zimmer.' AND part_of_speech='phrase' AND translation='یک اتاق دیگه بهتون می دم.' ORDER BY id LIMIT 1;
  IF v_w_ich_gebe_ihnen_ein_anderes_zimmer IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich gebe Ihnen ein anderes Zimmer.','Ich gebe Ihnen ein anderes Zimmer.','phrase','یک اتاق دیگه بهتون می دم.',34,'{"verb":"geben","verbForm":"gebe","person":"1sg","recipient":"Ihnen","recipientLemma":"Sie","object":"ein anderes Zimmer","register":"formal"}','[{"text":"Können Sie mir ein anderes Zimmer geben?","translation":"می تونید یک اتاق دیگه بهم بدید؟"},{"text":"Ich gebe Ihnen das Zimmer.","translation":"اتاق را بهتون می دم."},{"text":"Das Zimmer ist zu laut.","translation":"اتاق خیلی پر سر و صداست."},{"text":"Ich kann Ihnen helfen.","translation":"می تونم بهتون کمک کنم."},{"text":"Ein anderes Zimmer, bitte.","translation":"یک اتاق دیگه، لطفا."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":62,"module":5}');
    SET v_w_ich_gebe_ihnen_ein_anderes_zimmer=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_marie,v_c_mia,'Geben','دادن','Marie hat verstanden, dass Mias Zimmer zu laut ist. Mia fragt jetzt nach einer konkreten Lösung: einem anderen Zimmer.','ماری فهمیده اتاق میا خیلی پر سر و صداست. میا حالا یک راه حل مشخص می خواهد: یک اتاق دیگر.','story','mia-marie-hotel',8,33,110,1,'validated','{"relationship":"hotel_guest_and_receptionist","context":"room-change-request","cefr":"A2","module":5,"focus":"geben-and-anderes-zimmer"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_marie,1,'character','Das Zimmer ist zu laut?','اتاق خیلی پر سر و صداست؟',33,NULL,NULL,NULL,NULL,'[{"surface":"Das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"zu","lemma":"zu","translation":"بیش از حد / خیلی","partOfSpeech":"particle","meaning":"بیش از حد / خیلی","form":"degree_particle"},{"surface":"laut","lemma":"laut","translation":"پر سر و صدا","partOfSpeech":"adjective","meaning":"پر سر و صدا","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ja. Können Sie mir ein anderes Zimmer geben?','بله. می تونید یک اتاق دیگه بهم بدید؟',33,NULL,NULL,'ja können sie mir ein anderes zimmer geben',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونید","form":"modal_present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"به من / بهم","form":"dative_1sg"},{"surface":"ein","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"neuter_accusative"},{"surface":"anderes","lemma":"andere","translation":"دیگر / متفاوت","partOfSpeech":"adjective","meaning":"دیگر / متفاوت","form":"neuter_accusative_mixed_after_ein"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun"},{"surface":"geben","lemma":"geben","translation":"دادن","partOfSpeech":"verb","meaning":"بدید","form":"infinitive_after_modal","suffix":"?"}]','geben بعد از modal','در این درخواست، «geben» به معنی دادن است و بعد از «Können Sie» در پایان جمله و به شکل ساده می آید.',NULL,'{"cefr":"A2","module":5}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_marie,3,'character','Ja.','بله.',33,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Danke.','ممنون.',33,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_marie,v_c_mia,'Können Sie mir ein anderes Zimmer geben?','می تونید یک اتاق دیگه بهم بدید؟','Mia formuliert ihren Wunsch jetzt vollständig und höflich. Marie versteht genau, welche Lösung sie braucht.','میا حالا درخواستش را کامل و مودبانه مطرح می کند. ماری دقیقا می فهمد چه راه حلی لازم است.','story','mia-marie-hotel',9,34,110,2,'validated','{"relationship":"hotel_guest_and_receptionist","context":"room-change-request","cefr":"A2","module":5,"focus":"geben-and-anderes-zimmer"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_marie,1,'character','Ein anderes Zimmer?','یک اتاق دیگه؟',34,NULL,NULL,NULL,NULL,'[{"surface":"Ein","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"neuter_accusative"},{"surface":"anderes","lemma":"andere","translation":"دیگر / متفاوت","partOfSpeech":"adjective","meaning":"دیگر / متفاوت","form":"neuter_accusative_mixed_after_ein"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun","suffix":"?"}]','anderes همراه با Zimmer','در عبارت «ein anderes Zimmer»، شکل «anderes» کنار اسم خنثی Zimmer می آید. فعلا خود عبارت را به عنوان یک الگوی کاربردی یاد بگیر؛ جدول صرف صفت لازم نیست.',NULL,'{"cefr":"A2","module":5}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Ja. Können Sie mir ein anderes Zimmer geben?','بله. می تونید یک اتاق دیگه بهم بدید؟',34,NULL,NULL,'ja können sie mir ein anderes zimmer geben',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونید","form":"modal_present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"به من / بهم","form":"dative_1sg"},{"surface":"ein","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"neuter_accusative"},{"surface":"anderes","lemma":"andere","translation":"دیگر / متفاوت","partOfSpeech":"adjective","meaning":"دیگر / متفاوت","form":"neuter_accusative_mixed_after_ein"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun"},{"surface":"geben","lemma":"geben","translation":"دادن","partOfSpeech":"verb","meaning":"بدید","form":"infinitive_after_modal","suffix":"?"}]','درخواست رسمی کامل','این جمله «Können Sie ... geben?» را با mir و یک شی مشخص ترکیب می کند؛ همه چیز داخل یک درخواست واقعی هتل تمرین می شود.',NULL,'{"cefr":"A2","module":5}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_marie,3,'character','Ja.','بله.',34,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Danke.','ممنون.',34,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_marie,'Ich gebe Ihnen ein anderes Zimmer','یک اتاق دیگه بهتون می دم','Marie antwortet jetzt vollständig auf Mias Bitte. Die Rollen wechseln kurz, damit auch die Serviceseite des Dialogs aktiv gesprochen wird.','ماری حالا کامل به درخواست میا جواب می دهد. نقش ها کوتاه عوض می شوند تا پاسخ بخش خدمات هم فعال تمرین شود.','story','mia-marie-hotel',10,34,110,3,'validated','{"relationship":"hotel_guest_and_receptionist","context":"room-change-request","cefr":"A2","module":5,"focus":"geben-and-anderes-zimmer"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,1,'character','Können Sie mir ein anderes Zimmer geben?','می تونید یک اتاق دیگه بهم بدید؟',34,NULL,NULL,NULL,NULL,'[{"surface":"Können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونید","form":"modal_present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"به من / بهم","form":"dative_1sg"},{"surface":"ein","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"neuter_accusative"},{"surface":"anderes","lemma":"andere","translation":"دیگر / متفاوت","partOfSpeech":"adjective","meaning":"دیگر / متفاوت","form":"neuter_accusative_mixed_after_ein"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun"},{"surface":"geben","lemma":"geben","translation":"دادن","partOfSpeech":"verb","meaning":"بدید","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_marie,2,'learner','Ja. Ich gebe Ihnen ein anderes Zimmer.','بله. یک اتاق دیگه بهتون می دم.',34,NULL,NULL,'ja ich gebe ihnen ein anderes zimmer',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"gebe","lemma":"geben","translation":"دادن","partOfSpeech":"verb","meaning":"می دم","form":"present_1sg"},{"surface":"Ihnen","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"به شما / بهتون","form":"dative_formal"},{"surface":"ein","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"neuter_accusative"},{"surface":"anderes","lemma":"andere","translation":"دیگر / متفاوت","partOfSpeech":"adjective","meaning":"دیگر / متفاوت","form":"neuter_accusative_mixed_after_ein"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun","suffix":"."}]','Ihnen نسخه رسمی به شما','در پاسخ ماری، «Ihnen» همان ضمیر رسمی Sie در نقش «به شما» است و به همان lemma «Sie» وصل می شود.',NULL,'{"cefr":"A2","module":5}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,3,'character','Danke.','ممنون.',34,NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_marie,4,'learner','Bitte.','خواهش می کنم.',34,NULL,NULL,'bitte',NULL,'[{"surface":"Bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"خواهش می کنم","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_marie,v_c_mia,'Ein anderes Zimmer','یک اتاق دیگر','Mia und Marie schließen die Beschwerde vollständig ab: Mia nennt das Problem, bittet um ein anderes Zimmer und Marie bietet genau diese Lösung an.','میا و ماری شکایت را کامل می بندند: میا مشکل را می گوید، یک اتاق دیگر می خواهد و ماری همان راه حل را به او می دهد.','story','mia-marie-hotel',11,34,110,4,'validated','{"relationship":"hotel_guest_and_receptionist","context":"room-change-request","cefr":"A2","module":5,"focus":"geben-and-anderes-zimmer"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_marie,1,'character','Das Zimmer ist zu laut?','اتاق خیلی پر سر و صداست؟',34,NULL,NULL,NULL,NULL,'[{"surface":"Das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"zu","lemma":"zu","translation":"بیش از حد / خیلی","partOfSpeech":"particle","meaning":"بیش از حد / خیلی","form":"degree_particle"},{"surface":"laut","lemma":"laut","translation":"پر سر و صدا","partOfSpeech":"adjective","meaning":"پر سر و صدا","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Ja.','بله.',34,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_marie,3,'character','Ein anderes Zimmer?','یک اتاق دیگه؟',34,NULL,NULL,NULL,NULL,'[{"surface":"Ein","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"neuter_accusative"},{"surface":"anderes","lemma":"andere","translation":"دیگر / متفاوت","partOfSpeech":"adjective","meaning":"دیگر / متفاوت","form":"neuter_accusative_mixed_after_ein"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Ja. Können Sie mir ein anderes Zimmer geben?','بله. می تونید یک اتاق دیگه بهم بدید؟',34,NULL,NULL,'ja können sie mir ein anderes zimmer geben',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونید","form":"modal_present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"به من / بهم","form":"dative_1sg"},{"surface":"ein","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"neuter_accusative"},{"surface":"anderes","lemma":"andere","translation":"دیگر / متفاوت","partOfSpeech":"adjective","meaning":"دیگر / متفاوت","form":"neuter_accusative_mixed_after_ein"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun"},{"surface":"geben","lemma":"geben","translation":"دادن","partOfSpeech":"verb","meaning":"بدید","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_marie,5,'character','Ja. Ich gebe Ihnen ein anderes Zimmer.','بله. یک اتاق دیگه بهتون می دم.',34,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"gebe","lemma":"geben","translation":"دادن","partOfSpeech":"verb","meaning":"می دم","form":"present_1sg"},{"surface":"Ihnen","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"به شما / بهتون","form":"dative_formal"},{"surface":"ein","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"neuter_accusative"},{"surface":"anderes","lemma":"andere","translation":"دیگر / متفاوت","partOfSpeech":"adjective","meaning":"دیگر / متفاوت","form":"neuter_accusative_mixed_after_ein"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Danke.','ممنون.',34,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zimmer,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zu_degree,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_laut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_koennen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_andere,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_geben,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_koennen_sie_mir_ein_anderes_zimmer_geben,'passive',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_andere,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zimmer,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_koennen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_geben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_koennen_sie_mir_ein_anderes_zimmer_geben,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_koennen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sie_formal,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_andere,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_zimmer,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_geben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_koennen_sie_mir_ein_anderes_zimmer_geben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_gebe_ihnen_ein_anderes_zimmer,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zimmer,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zu_degree,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_laut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ein,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_andere,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_koennen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sie_formal,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_geben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_das_zimmer_ist_zu_laut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_koennen_sie_mir_ein_anderes_zimmer_geben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_gebe_ihnen_ein_anderes_zimmer,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_geben,'فعل جدید',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به تایید مشکل گوش کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'درخواست یک اتاق دیگر کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به جواب ماری گوش کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تشکر کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_geben,'معنی درست را انتخاب کن',NULL,33,'{"mode":"word_translation","question":"geben","choices":["دادن","گرفتن","آمدن"],"correctIndex":0}','{"cefr":"A2","module":5}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_koennen_sie_mir_ein_anderes_zimmer_geben,'عبارت جدید',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال تاییدی ماری گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'درخواست کامل اتاق دیگر را بگو',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به جواب ماری گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تشکر کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,34,'{"mode":"turn_translation","question":"«Können Sie mir ein anderes Zimmer geben?» یعنی چی؟","choices":["می تونید یک اتاق دیگه بهم بدید؟","می تونید کمکم کنید؟","اتاق خیلی پر سر و صداست."],"correctIndex":0}','{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'درخواست اتاق دیگر را به ترتیب درست بساز',NULL,34,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":5}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_ich_gebe_ihnen_ein_anderes_zimmer,'عبارت جدید',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به درخواست میا گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'به عنوان ماری جواب کامل بده',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به تشکر میا گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'جواب تشکر را بده',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,34,'{"mode":"turn_translation","question":"«Ich gebe Ihnen ein anderes Zimmer.» یعنی چی؟","choices":["یک اتاق دیگه بهتون می دم.","می تونید یک اتاق دیگه بهم بدید؟","اتاق خیلی پر سر و صداست."],"correctIndex":0}','{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,34,'{"source":"lesson_story","question":"ماری برای حل مشکل چه کاری می کند؟","choices":["یک اتاق دیگر به میا می دهد.","از میا می خواهد هتل را ترک کند.","می گوید اتاق دیگری ندارد."],"correctIndex":0}','{"cefr":"A2","module":5}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به تایید مشکل گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'تایید کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به راه حل پیشنهادی گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'درخواست کامل اتاق دیگر را بگو',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به پاسخ ماری گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'تشکر کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,34,'{"source":"lesson_story","question":"مشکل اتاق در پایان چگونه حل می شود؟","choices":["ماری یک اتاق دیگر به میا می دهد.","میا همان اتاق پر سر و صدا را بدون کمک نگه می دارد.","میا هتل را ترک می کند."],"correctIndex":0}','{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',8,v_t_17,NULL,'پاسخ ماری را بررسی کن',NULL,34,'{"mode":"turn_translation","question":"«Ich gebe Ihnen ein anderes Zimmer.» یعنی چی؟","choices":["یک اتاق دیگه بهتون می دم.","یک شب بیشتر می مونم.","اتاق خیلی پر سر و صداست."],"correctIndex":0}','{"cefr":"A2","module":5}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 062 lesson count.'; END IF;
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

CALL import_nova_series_062_v9();
DROP PROCEDURE IF EXISTS import_nova_series_062_v9;
-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 061
-- A2 > Im Hotel > Das Zimmer ist zu laut
-- FIRST CHAPTER OF A2 MODULE 05
-- Requires completed A2 Module 04 through Series 060.
-- Creates A2 Module 05 + five Chapter skeleton rows when missing.
-- Continues mia-marie-hotel from A1 orders 4-7.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_061_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_061_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_prev_module BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_marie BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zimmer BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_koennen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sie_formal BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_helfen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_entschuldigung BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_laut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zu_degree BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_das_zimmer_ist_zu_laut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_koennen_sie_mir_helfen BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_prev_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_prev_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 04 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_prev_module AND status='complete';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 060 and complete A2 Module 04 before Series 061.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata) VALUES(v_level,'Im Hotel','در هتل','Probleme und Wünsche während eines Hotelaufenthalts höflich und klar kommunizieren.','مشکلات و درخواست های هنگام اقامت در هتل را مودبانه و روشن مطرح کن.','🏨',33,35,5,'active','{"focus":"hotel-stay-problems-and-requests","grammarApproach":"context-first","continuity":"mia-marie-hotel"}');
    SET v_module=LAST_INSERT_ID();
  END IF;
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Das Zimmer ist zu laut','اتاق خیلی پر سر و صداست','Ein Problem mit dem Zimmer beschreiben und höflich um Hilfe bitten.','مشکل اتاق را توضیح بده و مودبانه کمک بخواه.',NULL,33,33,1,'draft' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=1);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Können Sie mir ein anderes Zimmer geben?','می تونید یک اتاق دیگه بهم بدید؟','Nach einer konkreten Lösung fragen und ein anderes Zimmer anfordern.','یک راه حل مشخص بخواه و درخواست اتاق دیگری کن.',NULL,33,34,2,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=2);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Ich bleibe eine Nacht länger','یک شب بیشتر می مونم','Den Aufenthalt verlängern und eine zusätzliche Nacht vereinbaren.','اقامت را تمدید کن و برای یک شب اضافه هماهنگ کن.',NULL,34,34,3,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=3);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Wann ist das Frühstück?','صبحانه چه ساعتیه؟','Nach Hotelzeiten und einfachen Serviceinformationen fragen.','درباره زمان های هتل و اطلاعات ساده خدمات سوال کن.',NULL,34,35,4,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=4);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Ich möchte auschecken','می خوام اتاق را تحویل بدم','Den Aufenthalt abschließen und die wichtigsten Hotelinteraktionen verbinden.','اقامت را تمام کن و مهم ترین تعامل های هتل را کنار هم استفاده کن.',NULL,35,35,5,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=5);
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 05 Chapter 01 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 05 Chapter 01 must be empty before Series 061 import.'; END IF;
  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_marie FROM characters WHERE course_id=v_course AND name='Marie' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_marie IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Marie not found.'; END IF;
  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;
  SELECT id INTO v_w_zimmer FROM words WHERE course_id=v_course AND lemma='Zimmer' AND part_of_speech='noun' AND translation='اتاق' ORDER BY id LIMIT 1;
  IF v_w_zimmer IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Zimmer not found.'; END IF;
  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;
  SELECT id INTO v_w_koennen FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_koennen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word können not found.'; END IF;
  SELECT id INTO v_w_sie_formal FROM words WHERE course_id=v_course AND lemma='Sie' AND part_of_speech='pronoun' AND translation='شما' ORDER BY id LIMIT 1;
  IF v_w_sie_formal IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Sie not found.'; END IF;
  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;
  SELECT id INTO v_w_helfen FROM words WHERE course_id=v_course AND lemma='helfen' AND part_of_speech='verb' AND translation='کمک کردن' ORDER BY id LIMIT 1;
  IF v_w_helfen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word helfen not found.'; END IF;
  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;
  SELECT id INTO v_w_nein FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_nein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nein not found.'; END IF;
  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;
  SELECT id INTO v_w_entschuldigung FROM words WHERE course_id=v_course AND lemma='Entschuldigung' AND part_of_speech='interjection' AND translation='ببخشید' ORDER BY id LIMIT 1;
  IF v_w_entschuldigung IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Entschuldigung not found.'; END IF;
  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;
  SELECT id INTO v_w_laut FROM words WHERE course_id=v_course AND lemma='laut' AND part_of_speech='adjective' AND translation='پر سر و صدا' ORDER BY id LIMIT 1;
  IF v_w_laut IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'laut','laut','adjective','پر سر و صدا',33,'{"usage":"sound_or_environment"}','[{"text":"ruhig","translation":"آرام / بی سر و صدا"},{"text":"sauber","translation":"تمیز"},{"text":"klein","translation":"کوچک"},{"text":"teuer","translation":"گران"},{"text":"gut","translation":"خوب"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":61,"module":5}');
    SET v_w_laut=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_zu_degree FROM words WHERE course_id=v_course AND lemma='zu' AND part_of_speech='particle' AND translation='بیش از حد / خیلی' ORDER BY id LIMIT 1;
  IF v_w_zu_degree IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'zu','zu','particle','بیش از حد / خیلی',33,'{"usage":"degree_particle","pattern":"zu + adjective","distinctFrom":"zu/preposition"}','[{"text":"sehr","translation":"خیلی"},{"text":"nicht","translation":"نه / نیست"},{"text":"noch","translation":"هنوز"},{"text":"wieder","translation":"دوباره"},{"text":"auch","translation":"هم / نیز"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":61,"module":5}');
    SET v_w_zu_degree=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_das_zimmer_ist_zu_laut FROM words WHERE course_id=v_course AND lemma='Das Zimmer ist zu laut.' AND part_of_speech='phrase' AND translation='اتاق خیلی پر سر و صداست.' ORDER BY id LIMIT 1;
  IF v_w_das_zimmer_ist_zu_laut IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Das Zimmer ist zu laut.','Das Zimmer ist zu laut.','phrase','اتاق خیلی پر سر و صداست.',33,'{"subject":"das Zimmer","copula":"sein","copulaForm":"ist","degreeParticle":"zu","adjective":"laut"}','[{"text":"Das Zimmer ist gut.","translation":"اتاق خوب است."},{"text":"Das Zimmer ist sauber.","translation":"اتاق تمیز است."},{"text":"Das Zimmer ist klein.","translation":"اتاق کوچک است."},{"text":"Die Heizung funktioniert nicht.","translation":"شوفاژ کار نمی کند."},{"text":"Ich habe eine Reservierung.","translation":"رزرو دارم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":61,"module":5}');
    SET v_w_das_zimmer_ist_zu_laut=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_koennen_sie_mir_helfen FROM words WHERE course_id=v_course AND lemma='Können Sie mir helfen?' AND part_of_speech='phrase' AND translation='می تونید کمکم کنید؟' ORDER BY id LIMIT 1;
  IF v_w_koennen_sie_mir_helfen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Können Sie mir helfen?','Können Sie mir helfen?','phrase','می تونید کمکم کنید؟',33,'{"modal":"können","modalForm":"können","person":"formal_2","recipient":"mir","recipientLemma":"ich","infinitive":"helfen","register":"formal"}','[{"text":"Können Sie kommen?","translation":"می تونید بیاید؟"},{"text":"Kannst du mir helfen?","translation":"می تونی کمکم کنی؟"},{"text":"Was können wir machen?","translation":"چه کاری می تونیم انجام بدیم؟"},{"text":"Ich brauche Hilfe.","translation":"کمک لازم دارم."},{"text":"Das Zimmer ist zu laut.","translation":"اتاق خیلی پر سر و صداست."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":61,"module":5}');
    SET v_w_koennen_sie_mir_helfen=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_marie,v_c_mia,'Zu laut','خیلی پر سر و صدا','Mia ist wieder im Hotel. Nach dem Check-in merkt sie, dass ihr Zimmer zu laut ist und spricht Marie an.','میا دوباره در هتل است. بعد از ورود متوجه می شود اتاقش خیلی پر سر و صداست و با ماری صحبت می کند.','story','mia-marie-hotel',4,33,110,1,'validated','{"relationship":"hotel_guest_and_receptionist","context":"noisy-room-complaint","cefr":"A2","module":5,"focus":"zu-adjective-and-formal-help-request"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_marie,1,'character','Ist das Zimmer gut?','اتاق خوبه؟',33,NULL,NULL,NULL,NULL,'[{"surface":"Ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است / هست","form":"present_3sg"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun"},{"surface":"gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوب","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Nein. Das Zimmer ist zu laut.','نه. اتاق خیلی پر سر و صداست.',33,NULL,NULL,'nein das zimmer ist zu laut',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."},{"surface":"Das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"zu","lemma":"zu","translation":"بیش از حد / خیلی","partOfSpeech":"particle","meaning":"بیش از حد / خیلی","form":"degree_particle"},{"surface":"laut","lemma":"laut","translation":"پر سر و صدا","partOfSpeech":"adjective","meaning":"پر سر و صدا","suffix":"."}]','zu + صفت','در «zu laut»، واژه «zu» یعنی چیزی بیش از حد مطلوب است. این «zu» با حرف اضافه «zu» به معنی «به» فرق دارد.',NULL,'{"cefr":"A2","module":5}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_marie,3,'character','Zu laut?','خیلی پر سر و صداست؟',33,NULL,NULL,NULL,NULL,'[{"surface":"Zu","lemma":"zu","translation":"بیش از حد / خیلی","partOfSpeech":"particle","meaning":"بیش از حد / خیلی","form":"degree_particle"},{"surface":"laut","lemma":"laut","translation":"پر سر و صدا","partOfSpeech":"adjective","meaning":"پر سر و صدا","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Ja.','بله.',33,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_marie,v_c_mia,'Das Zimmer ist zu laut','اتاق خیلی پر سر و صداست','Marie hört die Beschwerde noch einmal vollständig. Mia beschreibt das Zimmer mit dem neuen A2-Muster zu + Adjektiv.','ماری شکایت را یک بار دیگر کامل می شنود. میا با الگوی جدید A2 یعنی zu + صفت وضعیت اتاق را توضیح می دهد.','story','mia-marie-hotel',5,33,110,2,'validated','{"relationship":"hotel_guest_and_receptionist","context":"noisy-room-complaint","cefr":"A2","module":5,"focus":"zu-adjective-and-formal-help-request"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_marie,1,'character','Das Zimmer?','اتاق؟',33,NULL,NULL,NULL,NULL,'[{"surface":"Das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Das Zimmer ist zu laut.','اتاق خیلی پر سر و صداست.',33,NULL,NULL,'das zimmer ist zu laut',NULL,'[{"surface":"Das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"zu","lemma":"zu","translation":"بیش از حد / خیلی","partOfSpeech":"particle","meaning":"بیش از حد / خیلی","form":"degree_particle"},{"surface":"laut","lemma":"laut","translation":"پر سر و صدا","partOfSpeech":"adjective","meaning":"پر سر و صدا","suffix":"."}]','شکایت کوتاه و طبیعی','«Das Zimmer ist zu laut.» یک جمله کامل و طبیعی برای بیان مشکل اتاق است.',NULL,'{"cefr":"A2","module":5}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_marie,3,'character','Entschuldigung.','ببخشید.',33,NULL,NULL,NULL,NULL,'[{"surface":"Entschuldigung","lemma":"Entschuldigung","translation":"ببخشید","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Danke.','ممنون.',33,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_marie,v_c_mia,'Können Sie mir helfen?','می تونید کمکم کنید؟','Mia hat das Problem klar beschrieben. Jetzt bittet sie Marie höflich und direkt um Hilfe.','میا مشکل را روشن توضیح داده است. حالا مودبانه و مستقیم از ماری کمک می خواهد.','story','mia-marie-hotel',6,33,110,3,'validated','{"relationship":"hotel_guest_and_receptionist","context":"noisy-room-complaint","cefr":"A2","module":5,"focus":"zu-adjective-and-formal-help-request"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_marie,1,'character','Das Zimmer ist zu laut?','اتاق خیلی پر سر و صداست؟',33,NULL,NULL,NULL,NULL,'[{"surface":"Das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"zu","lemma":"zu","translation":"بیش از حد / خیلی","partOfSpeech":"particle","meaning":"بیش از حد / خیلی","form":"degree_particle"},{"surface":"laut","lemma":"laut","translation":"پر سر و صدا","partOfSpeech":"adjective","meaning":"پر سر و صدا","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ja. Können Sie mir helfen?','بله. می تونید کمکم کنید؟',33,NULL,NULL,'ja können sie mir helfen',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونید","form":"modal_present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"به من / کمکم","form":"dative_1sg"},{"surface":"helfen","lemma":"helfen","translation":"کمک کردن","partOfSpeech":"verb","meaning":"کمک کنید","form":"infinitive_after_modal","suffix":"?"}]','درخواست رسمی با mir','«Können Sie mir helfen?» نسخه مودبانه درخواست کمک است. «mir» به lemma «ich» وصل می شود.',NULL,'{"cefr":"A2","module":5}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_marie,3,'character','Ja.','بله.',33,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Danke.','ممنون.',33,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_marie,v_c_mia,'Ein Problem mit dem Zimmer','مشکل اتاق','Mia meldet das laute Zimmer vollständig und bittet Marie höflich um Hilfe. Marie versteht das Problem und übernimmt den nächsten Schritt.','میا مشکل پر سر و صدای اتاق را کامل مطرح می کند و مودبانه از ماری کمک می خواهد. ماری مشکل را می فهمد و قدم بعدی را بر عهده می گیرد.','story','mia-marie-hotel',7,33,110,4,'validated','{"relationship":"hotel_guest_and_receptionist","context":"noisy-room-complaint","cefr":"A2","module":5,"focus":"zu-adjective-and-formal-help-request"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_marie,1,'character','Ist das Zimmer gut?','اتاق خوبه؟',33,NULL,NULL,NULL,NULL,'[{"surface":"Ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است / هست","form":"present_3sg"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun"},{"surface":"gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوب","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Nein. Das Zimmer ist zu laut.','نه. اتاق خیلی پر سر و صداست.',33,NULL,NULL,'nein das zimmer ist zu laut',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."},{"surface":"Das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"zu","lemma":"zu","translation":"بیش از حد / خیلی","partOfSpeech":"particle","meaning":"بیش از حد / خیلی","form":"degree_particle"},{"surface":"laut","lemma":"laut","translation":"پر سر و صدا","partOfSpeech":"adjective","meaning":"پر سر و صدا","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_marie,3,'character','Entschuldigung.','ببخشید.',33,NULL,NULL,NULL,NULL,'[{"surface":"Entschuldigung","lemma":"Entschuldigung","translation":"ببخشید","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Können Sie mir helfen?','می تونید کمکم کنید؟',33,NULL,NULL,'können sie mir helfen',NULL,'[{"surface":"Können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونید","form":"modal_present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"به من / کمکم","form":"dative_1sg"},{"surface":"helfen","lemma":"helfen","translation":"کمک کردن","partOfSpeech":"verb","meaning":"کمک کنید","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_marie,5,'character','Ja.','بله.',33,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Danke.','ممنون.',33,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zimmer,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zu_degree,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_laut,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_das_zimmer_ist_zu_laut,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zimmer,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zu_degree,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_laut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_entschuldigung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_das_zimmer_ist_zu_laut,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_zimmer,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_zu_degree,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_laut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_koennen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_helfen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_das_zimmer_ist_zu_laut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_koennen_sie_mir_helfen,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zimmer,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zu_degree,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_laut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_entschuldigung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_koennen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_helfen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_das_zimmer_ist_zu_laut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_koennen_sie_mir_helfen,'review',0,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_laut,'صفت جدید',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال ماری گوش کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'مشکل اتاق را توضیح بده',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به سوال تاییدی ماری گوش کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تایید کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_laut,'معنی درست را انتخاب کن',NULL,33,'{"mode":"word_translation","question":"laut","choices":["پر سر و صدا","آرام","تمیز"],"correctIndex":0}','{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_das_zimmer_ist_zu_laut,'عبارت جدید',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال ماری گوش کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'کامل بگو اتاق خیلی پر سر و صداست',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به عذرخواهی ماری گوش کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تشکر کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,33,'{"mode":"turn_translation","question":"«Das Zimmer ist zu laut.» یعنی چی؟","choices":["اتاق خیلی پر سر و صداست.","اتاق خیلی کوچک است.","اتاق خوب است."],"correctIndex":0}','{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله شکایت را به ترتیب درست بساز',NULL,33,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_koennen_sie_mir_helfen,'عبارت جدید',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به تایید مشکل گوش کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'مودبانه درخواست کمک کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به جواب ماری گوش کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تشکر کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,33,'{"mode":"turn_translation","question":"«Können Sie mir helfen?» یعنی چی؟","choices":["می تونید کمکم کنید؟","می تونید بیاید؟","می تونی کمکم کنی؟"],"correctIndex":0}','{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,33,'{"source":"lesson_story","question":"میا بعد از توضیح مشکل چه می خواهد؟","choices":["از ماری کمک می خواهد.","می خواهد از هتل خارج شود.","می گوید اتاق عالی است."],"correctIndex":0}','{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال ماری گوش کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'مشکل اتاق را کامل بگو',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به عذرخواهی ماری گوش کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'مودبانه کمک بخواه',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به جواب ماری گوش کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'تشکر کن',NULL,33,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,33,'{"source":"lesson_story","question":"مشکل میا چیست و چه کاری انجام می دهد؟","choices":["اتاق خیلی پر سر و صداست و از ماری کمک می خواهد.","رزرو ندارد و هتل را ترک می کند.","اتاق خوب است و هیچ کمکی نمی خواهد."],"correctIndex":0}','{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',8,v_t_16,NULL,'درخواست میا را بررسی کن',NULL,33,'{"mode":"turn_translation","question":"«Können Sie mir helfen?» یعنی چی؟","choices":["می تونید کمکم کنید؟","اتاق خیلی پر سر و صداست.","می تونید بیاید؟"],"correctIndex":0}','{"cefr":"A2","module":5}');
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 061 lesson count.'; END IF;
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

CALL import_nova_series_061_v9();
DROP PROCEDURE IF EXISTS import_nova_series_061_v9;
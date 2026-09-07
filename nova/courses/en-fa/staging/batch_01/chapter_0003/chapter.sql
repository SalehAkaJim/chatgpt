-- SERIES 3
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS nova_en_v32_s0003;
DELIMITER $$
CREATE PROCEDURE nova_en_v32_s0003()
BEGIN
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_c_arman BIGINT UNSIGNED;
  DECLARE v_c_maya BIGINT UNSIGNED;
  DECLARE v_c_nora BIGINT UNSIGNED;
  DECLARE v_c_daniel BIGINT UNSIGNED;
  DECLARE v_l_1 BIGINT UNSIGNED;
  DECLARE v_l_2 BIGINT UNSIGNED;
  DECLARE v_l_3 BIGINT UNSIGNED;
  DECLARE v_l_4 BIGINT UNSIGNED;
  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;

  SELECT COUNT(*),MIN(id) INTO v_count,v_course FROM courses WHERE learning_language='en' AND base_language='fa';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='en-fa course identity missing or not unique'; END IF;
  SELECT COUNT(*),MIN(id) INTO v_count,v_level FROM levels WHERE course_id=v_course AND cefr_level='A1';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='en-fa A1 missing or not unique'; END IF;
  SELECT COUNT(*),MIN(id) INTO v_count,v_module FROM modules WHERE level_id=v_level AND sort_order=1;
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='en-fa module 1 missing or not unique'; END IF;

  SELECT id INTO v_c_arman FROM characters WHERE course_id=v_course AND name='Arman' AND gender='male' LIMIT 1;
  SELECT id INTO v_c_maya FROM characters WHERE course_id=v_course AND name='Maya' AND gender='female' LIMIT 1;
  SELECT id INTO v_c_nora FROM characters WHERE course_id=v_course AND name='Nora' AND gender='female' LIMIT 1;
  SELECT id INTO v_c_daniel FROM characters WHERE course_id=v_course AND name='Daniel' AND gender='male' LIMIT 1;
  IF v_c_arman IS NULL OR v_c_maya IS NULL OR v_c_nora IS NULL OR v_c_daniel IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='required en-fa character missing'; END IF;

  SELECT COUNT(*),MIN(id) INTO v_count,v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3;
  IF v_count=0 THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'Where I Live','کجا زندگی می‌کنم','Arman learns to ask and say where someone lives in London.','آرمان یاد می‌گیرد درباره محل زندگی خودش و دیگران در لندن صحبت کند.',4,1,1,3,'validated',JSON_OBJECT('series',3,'contractVersion','3.0.0'));
    SET v_chapter=LAST_INSERT_ID();

    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata) VALUES
(v_course,'live','live','verb','زندگی کردن',1,CAST('{"cefr":"A1","series":3}' AS JSON),CAST('["آمدن","صحبت کردن","دیدن"]' AS JSON),'I live in London.','من در لندن زندگی می‌کنم.','nova/audio/words/en-fa/247610f4dedd4ab7247d07dbda19c81ca9817f85820742cad49d407ffae9e4ed.mp3',NULL,JSON_OBJECT('series',3,'definitionComplete',TRUE)),
(v_course,'London','London','proper_noun','لندن',1,CAST('{"cefr":"A1","series":3}' AS JSON),CAST('["ایران","انگلیسی","خیابان"]' AS JSON),'I live in London.','من در لندن زندگی می‌کنم.','nova/audio/words/en-fa/ecc0e7dc084f141b29479058967d0bc07dee25d9690a98ee4e6fdad5168274d7.mp3',NULL,JSON_OBJECT('series',3,'definitionComplete',TRUE)),
(v_course,'near','near','preposition','نزدیک',1,CAST('{"cefr":"A1","series":3}' AS JSON),CAST('["دور","داخل","از"]' AS JSON),'I live near the station.','من نزدیک ایستگاه زندگی می‌کنم.','nova/audio/words/en-fa/46ba34770bccfde756708d47d83fb7c8257fe8a4b3a35f25d385a8284021f476.mp3',NULL,JSON_OBJECT('series',3,'definitionComplete',TRUE)),
(v_course,'here','here','adverb','اینجا',1,CAST('{"cefr":"A1","series":3}' AS JSON),CAST('["آنجا","کجا","امروز"]' AS JSON),'I live here.','من اینجا زندگی می‌کنم.','nova/audio/words/en-fa/fcec91509759ad995c2cd14bcb26b2720993faf61c29d379b270d442d92290eb.mp3',NULL,JSON_OBJECT('series',3,'definitionComplete',TRUE)),
(v_course,'flat','flat','noun','آپارتمان',1,CAST('{"cefr":"A1","series":3}' AS JSON),CAST('["خیابان","کشور","زبان"]' AS JSON),'My flat is near here.','آپارتمان من نزدیک اینجاست.','nova/audio/words/en-fa/5dc27af287fa554aa10fec9de8d724a7964572f1ffd24c2b00e1a3a860ce7679.mp3',NULL,JSON_OBJECT('series',3,'definitionComplete',TRUE)),
(v_course,'street','street','noun','خیابان',1,CAST('{"cefr":"A1","series":3}' AS JSON),CAST('["آپارتمان","کشور","اسم"]' AS JSON),'This street is quiet.','این خیابان آرام است.','nova/audio/words/en-fa/6008c26f4452392acb19374bc12a5ec0c360ae17356bce8b786fb128c8720951.mp3',NULL,JSON_OBJECT('series',3,'definitionComplete',TRUE)),
(v_course,'address','address','noun','آدرس',1,CAST('{"cefr":"A1","series":3}' AS JSON),CAST('["نام","زبان","کشور"]' AS JSON),'What is your address?','آدرست چیه؟','nova/audio/words/en-fa/d80c9bf910f144738ef983724bc04bd6bd3f17c5c83ed57bedee1b1b9278e811.mp3',NULL,JSON_OBJECT('series',3,'definitionComplete',TRUE));

    INSERT INTO sem_learning_units(course_id,unit_type,unit_key,display_form,translation,description_fa,cefr_level,difficulty,data,metadata) VALUES
(v_course,'construction','en:a1:i-live-in','I live in + place','من در ... زندگی می‌کنم','الگوی گفتن شهر یا محل زندگی','A1',1,JSON_OBJECT('series',3),JSON_OBJECT('series',3)),
(v_course,'chunk','en:a1:where-do-you-live','Where do you live?','کجا زندگی می‌کنی؟','پرسیدن محل زندگی','A1',1,JSON_OBJECT('series',3),JSON_OBJECT('series',3)),
(v_course,'construction','en:a1:i-live-near','I live near + place','من نزدیک ... زندگی می‌کنم','گفتن محل زندگی نسبت به یک مکان','A1',1,JSON_OBJECT('series',3),JSON_OBJECT('series',3)),
(v_course,'chunk','en:a1:i-live-here','I live here.','من اینجا زندگی می‌کنم','پاسخ کوتاه درباره محل فعلی','A1',1,JSON_OBJECT('series',3),JSON_OBJECT('series',3)),
(v_course,'grammar','en:a1:do-live-question','Where do you live?','کجا زندگی می‌کنی؟','کاربرد do در سؤال ساده با live','A1',1,JSON_OBJECT('series',3),JSON_OBJECT('series',3)),
(v_course,'word_sense','en:a1:flat:home','flat','آپارتمان','معنای بریتانیایی flat برای محل زندگی','A1',1,JSON_OBJECT('series',3),JSON_OBJECT('series',3)),
(v_course,'pronunciation','en:a1:pron-w-where','where','تلفظ w در where','تمایز عملی w انگلیسی از v برای فارسی‌زبان','A1',1,JSON_OBJECT('series',3),JSON_OBJECT('series',3)),
(v_course,'can_do','en:a1:can:where-live','Ask and say where you live','پرسیدن و گفتن محل زندگی','مدیریت یک گفتگوی کوتاه درباره محل زندگی','A1',1,JSON_OBJECT('series',3),JSON_OBJECT('series',3))
    ON DUPLICATE KEY UPDATE display_form=VALUES(display_form),translation=VALUES(translation),description_fa=VALUES(description_fa);

    INSERT IGNORE INTO sem_learning_unit_words(learning_unit_id,word_id,sort_order,component_role,metadata)
      SELECT lu.id,w.id,1,'head',JSON_OBJECT('series',3) FROM sem_learning_units lu JOIN words w ON w.course_id=v_course AND w.display_form='live' WHERE lu.course_id=v_course AND lu.unit_key='en:a1:i-live-in' LIMIT 1;
    INSERT IGNORE INTO sem_learning_unit_words(learning_unit_id,word_id,sort_order,component_role,metadata)
      SELECT lu.id,w.id,1,'head',JSON_OBJECT('series',3) FROM sem_learning_units lu JOIN words w ON w.course_id=v_course AND w.display_form='near' WHERE lu.course_id=v_course AND lu.unit_key='en:a1:i-live-near' LIMIT 1;
    INSERT IGNORE INTO sem_learning_unit_words(learning_unit_id,word_id,sort_order,component_role,metadata)
      SELECT lu.id,w.id,1,'head',JSON_OBJECT('series',3) FROM sem_learning_units lu JOIN words w ON w.course_id=v_course AND w.display_form='flat' WHERE lu.course_id=v_course AND lu.unit_key='en:a1:flat:home' LIMIT 1;

    INSERT INTO sem_curriculum_outcomes(course_id,cefr_level,outcome_key,outcome_type,title,description_fa,required,status,evidence,metadata) VALUES
(v_course,'A1','can_do:where_live','can_do','Ask and say where you live','پرسیدن و گفتن محل زندگی',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',3)),
(v_course,'A1','grammar:do_live_question','grammar','Use do in Where do you live?','کاربرد do در سؤال محل زندگی',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',3)),
(v_course,'A1','lexical:home_location','lexical','Home and location chunks','عبارت‌های پایه محل زندگی',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',3)),
(v_course,'A1','pron:w_where','pronunciation','English w in where','تلفظ w انگلیسی در where',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',3)),
(v_course,'A1','reading:home_location','reading','Read a short home-location exchange','خواندن گفتگوی کوتاه محل زندگی',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',3)),
(v_course,'A1','listening:home_location','listening','Understand where someone lives','فهم محل زندگی در گفتگوی کوتاه',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',3))
    ON DUPLICATE KEY UPDATE status='in_progress';

    INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata) VALUES
(v_chapter,v_c_maya,v_c_arman,'Where Do You Live?','کجا زندگی می‌کنی؟','Maya asks where Arman lives now.','مایا می‌پرسد آرمان حالا کجا زندگی می‌کند.','story','london_new_start',9,1,420,1,'validated',JSON_OBJECT('pedagogicalRole','audio_story_and_guided_exposure')),
(v_chapter,v_c_maya,v_c_arman,'In and Near','In و Near','Arman controls two natural ways to locate his home.','آرمان دو روش طبیعی برای گفتن محل خانه را تمرین می‌کند.','story','london_new_start',10,1,420,2,'validated',JSON_OBJECT('pedagogicalRole','explicit_form_and_controlled_practice')),
(v_chapter,v_c_nora,v_c_arman,'Tell Me Where','بگو کجا','Arman retrieves home-location language with Nora.','آرمان زبان مربوط به محل زندگی را با نورا از حافظه بازیابی می‌کند.','story','london_new_start',11,1,420,3,'validated',JSON_OBJECT('pedagogicalRole','retrieval_and_independent_use')),
(v_chapter,v_c_daniel,v_c_arman,'A Parcel for Arman','یک بسته برای آرمان','At a parcel desk, Arman independently combines identity, origin, language and home location.','آرمان در تحویل بسته، نام، مبدأ، زبان و محل زندگی را مستقل ترکیب می‌کند.','story','london_new_start',12,1,480,4,'validated',JSON_OBJECT('pedagogicalRole','review_transfer_and_mastery'));

    SELECT id INTO v_l_1 FROM lessons WHERE chapter_id=v_chapter AND sort_order=1 LIMIT 1;
    SELECT id INTO v_l_2 FROM lessons WHERE chapter_id=v_chapter AND sort_order=2 LIMIT 1;
    SELECT id INTO v_l_3 FROM lessons WHERE chapter_id=v_chapter AND sort_order=3 LIMIT 1;
    SELECT id INTO v_l_4 FROM lessons WHERE chapter_id=v_chapter AND sort_order=4 LIMIT 1;

    INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,metadata) VALUES
(v_l_1,v_c_maya,1,'character','Where do you live now, Arman?','آرمان، حالا کجا زندگی می‌کنی؟',1,'nova/audio/turns/en-fa/A1/s0003/l01/t01.mp3',NULL,NULL,NULL,JSON_ARRAY('Where','do','you','live','now','Arman'),JSON_OBJECT('series',3)),
(v_l_1,v_c_arman,2,'learner','I live in London.','من در لندن زندگی می‌کنم.',1,'nova/audio/turns/en-fa/A1/s0003/l01/t02.mp3',NULL,'I live in London.',CAST('["I live in London.","In London."]' AS JSON),JSON_ARRAY('I','live','in','London'),JSON_OBJECT('series',3)),
(v_l_1,v_c_maya,3,'character','Do you live near here?','نزدیک اینجا زندگی می‌کنی؟',1,'nova/audio/turns/en-fa/A1/s0003/l01/t03.mp3',NULL,NULL,NULL,JSON_ARRAY('Do','you','live','near','here'),JSON_OBJECT('series',3)),
(v_l_1,v_c_arman,4,'learner','Yes, I live near here.','بله، نزدیک اینجا زندگی می‌کنم.',1,'nova/audio/turns/en-fa/A1/s0003/l01/t04.mp3',NULL,'Yes, I live near here.',CAST('["Yes, I live near here.","Yes, near here."]' AS JSON),JSON_ARRAY('Yes','I','live','near','here'),JSON_OBJECT('series',3)),
(v_l_1,v_c_maya,5,'character','A flat or a house?','آپارتمان یا خانه؟',1,'nova/audio/turns/en-fa/A1/s0003/l01/t05.mp3',NULL,NULL,NULL,JSON_ARRAY('A','flat','or','a','house'),JSON_OBJECT('series',3)),
(v_l_1,v_c_arman,6,'learner','A flat.','یک آپارتمان.',1,'nova/audio/turns/en-fa/A1/s0003/l01/t06.mp3',NULL,'A flat.',CAST('["A flat.","It''s a flat."]' AS JSON),JSON_ARRAY('A','flat'),JSON_OBJECT('series',3)),
(v_l_1,v_c_maya,7,'character','Nice. Is the street quiet?','خوبه. خیابون آرومه؟',1,'nova/audio/turns/en-fa/A1/s0003/l01/t07.mp3',NULL,NULL,NULL,JSON_ARRAY('Nice','Is','the','street','quiet'),JSON_OBJECT('series',3)),
(v_l_1,v_c_arman,8,'learner','Yes, very quiet.','بله، خیلی آرومه.',1,'nova/audio/turns/en-fa/A1/s0003/l01/t08.mp3',NULL,'Yes, very quiet.',CAST('["Yes, very quiet.","Yes, it is."]' AS JSON),JSON_ARRAY('Yes','very','quiet'),JSON_OBJECT('series',3));

    INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,metadata) VALUES
(v_l_2,v_c_maya,1,'character','Where do you live?','کجا زندگی می‌کنی؟',1,'nova/audio/turns/en-fa/A1/s0003/l02/t01.mp3',NULL,NULL,NULL,JSON_ARRAY('Where','do','you','live'),JSON_OBJECT('series',3)),
(v_l_2,v_c_arman,2,'learner','I live in London.','من در لندن زندگی می‌کنم.',1,'nova/audio/turns/en-fa/A1/s0003/l02/t02.mp3',NULL,'I live in London.',CAST('["I live in London.","In London."]' AS JSON),JSON_ARRAY('I','live','in','London'),JSON_OBJECT('series',3)),
(v_l_2,v_c_maya,3,'character','Near the station?','نزدیک ایستگاه؟',1,'nova/audio/turns/en-fa/A1/s0003/l02/t03.mp3',NULL,NULL,NULL,JSON_ARRAY('Near','the','station'),JSON_OBJECT('series',3)),
(v_l_2,v_c_arman,4,'learner','Yes, I live near the station.','بله، نزدیک ایستگاه زندگی می‌کنم.',1,'nova/audio/turns/en-fa/A1/s0003/l02/t04.mp3',NULL,'Yes, I live near the station.',CAST('["Yes, I live near the station.","Yes, near the station."]' AS JSON),JSON_ARRAY('Yes','I','live','near','the','station'),JSON_OBJECT('series',3)),
(v_l_2,v_c_maya,5,'character','That''s useful.','این خوبه.',1,'nova/audio/turns/en-fa/A1/s0003/l02/t05.mp3',NULL,NULL,NULL,JSON_ARRAY('That''s','useful'),JSON_OBJECT('series',3)),
(v_l_2,v_c_arman,6,'learner','Yes. I can walk.','آره. می‌تونم پیاده برم.',1,'nova/audio/turns/en-fa/A1/s0003/l02/t06.mp3',NULL,'Yes. I can walk.',CAST('["Yes. I can walk.","Yes, it''s close."]' AS JSON),JSON_ARRAY('Yes','I','can','walk'),JSON_OBJECT('series',3)),
(v_l_2,v_c_maya,7,'character','And your flat?','و آپارتمانت؟',1,'nova/audio/turns/en-fa/A1/s0003/l02/t07.mp3',NULL,NULL,NULL,JSON_ARRAY('And','your','flat'),JSON_OBJECT('series',3)),
(v_l_2,v_c_arman,8,'learner','Small, but good.','کوچیکه، ولی خوبه.',1,'nova/audio/turns/en-fa/A1/s0003/l02/t08.mp3',NULL,'Small, but good.',CAST('["Small, but good.","It''s small, but good."]' AS JSON),JSON_ARRAY('Small','but','good'),JSON_OBJECT('series',3));

    INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,metadata) VALUES
(v_l_3,v_c_nora,1,'character','Hi, Arman. Do you live near here?','سلام آرمان. نزدیک اینجا زندگی می‌کنی؟',1,'nova/audio/turns/en-fa/A1/s0003/l03/t01.mp3',NULL,NULL,NULL,JSON_ARRAY('Hi','Arman','Do','you','live','near','here'),JSON_OBJECT('series',3)),
(v_l_3,v_c_arman,2,'learner','Yes. I live near the station.','بله. نزدیک ایستگاه زندگی می‌کنم.',1,'nova/audio/turns/en-fa/A1/s0003/l03/t02.mp3',NULL,'Yes. I live near the station.',CAST('["Yes. I live near the station.","Yes, near the station."]' AS JSON),JSON_ARRAY('Yes','I','live','near','the','station'),JSON_OBJECT('series',3)),
(v_l_3,v_c_nora,3,'character','In a flat?','در آپارتمان؟',1,'nova/audio/turns/en-fa/A1/s0003/l03/t03.mp3',NULL,NULL,NULL,JSON_ARRAY('In','a','flat'),JSON_OBJECT('series',3)),
(v_l_3,v_c_arman,4,'learner','Yes, in a small flat.','بله، در یک آپارتمان کوچک.',1,'nova/audio/turns/en-fa/A1/s0003/l03/t04.mp3',NULL,'Yes, in a small flat.',CAST('["Yes, in a small flat.","Yes, a small flat."]' AS JSON),JSON_ARRAY('Yes','in','a','small','flat'),JSON_OBJECT('series',3)),
(v_l_3,v_c_nora,5,'character','Do you like the street?','خیابون رو دوست داری؟',1,'nova/audio/turns/en-fa/A1/s0003/l03/t05.mp3',NULL,NULL,NULL,JSON_ARRAY('Do','you','like','the','street'),JSON_OBJECT('series',3)),
(v_l_3,v_c_arman,6,'learner','Yes. It''s quiet.','بله. آرومه.',1,'nova/audio/turns/en-fa/A1/s0003/l03/t06.mp3',NULL,'Yes. It''s quiet.',CAST('["Yes. It''s quiet.","Yes, very quiet."]' AS JSON),JSON_ARRAY('Yes','It''s','quiet'),JSON_OBJECT('series',3)),
(v_l_3,v_c_nora,7,'character','Good place for a new start.','جای خوبی برای یک شروع تازه‌ست.',1,'nova/audio/turns/en-fa/A1/s0003/l03/t07.mp3',NULL,NULL,NULL,JSON_ARRAY('Good','place','for','a','new','start'),JSON_OBJECT('series',3)),
(v_l_3,v_c_arman,8,'learner','Yes, I like it.','آره، دوستش دارم.',1,'nova/audio/turns/en-fa/A1/s0003/l03/t08.mp3',NULL,'Yes, I like it.',CAST('["Yes, I like it.","I like it."]' AS JSON),JSON_ARRAY('Yes','I','like','it'),JSON_OBJECT('series',3));

    INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,metadata) VALUES
(v_l_4,v_c_daniel,1,'character','Hi. I have a parcel for Arman.','سلام. یک بسته برای آرمان دارم.',1,'nova/audio/turns/en-fa/A1/s0003/l04/t01.mp3',NULL,NULL,NULL,JSON_ARRAY('Hi','I','have','a','parcel','for','Arman'),JSON_OBJECT('series',3)),
(v_l_4,v_c_arman,2,'learner','Hi. I''m Arman.','سلام. من آرمانم.',1,'nova/audio/turns/en-fa/A1/s0003/l04/t02.mp3',NULL,'Hi. I''m Arman.',CAST('["Hi. I''m Arman.","Hello. My name is Arman."]' AS JSON),JSON_ARRAY('Hi','I''m','Arman'),JSON_OBJECT('series',3)),
(v_l_4,v_c_daniel,3,'character','What''s your address?','آدرست چیه؟',1,'nova/audio/turns/en-fa/A1/s0003/l04/t03.mp3',NULL,NULL,NULL,JSON_ARRAY('What''s','your','address'),JSON_OBJECT('series',3)),
(v_l_4,v_c_arman,4,'learner','I live near the station.','نزدیک ایستگاه زندگی می‌کنم.',1,'nova/audio/turns/en-fa/A1/s0003/l04/t04.mp3',NULL,'I live near the station.',CAST('["I live near the station.","I live in London, near the station."]' AS JSON),JSON_ARRAY('I','live','near','the','station'),JSON_OBJECT('series',3)),
(v_l_4,v_c_daniel,5,'character','And where are you from?','و اهل کجایی؟',1,'nova/audio/turns/en-fa/A1/s0003/l04/t05.mp3',NULL,NULL,NULL,JSON_ARRAY('And','where','are','you','from'),JSON_OBJECT('series',3)),
(v_l_4,v_c_arman,6,'learner','I''m from Iran. I speak Persian and a little English.','اهل ایرانم. فارسی و کمی انگلیسی صحبت می‌کنم.',1,'nova/audio/turns/en-fa/A1/s0003/l04/t06.mp3',NULL,'I''m from Iran. I speak Persian and a little English.',CAST('["I''m from Iran. I speak Persian and a little English.","I am from Iran. I speak Persian."]' AS JSON),JSON_ARRAY('I''m','from','Iran','I','speak','Persian','and','a','little','English'),JSON_OBJECT('series',3)),
(v_l_4,v_c_daniel,7,'character','Perfect. Here you are.','عالیه. بفرما.',1,'nova/audio/turns/en-fa/A1/s0003/l04/t07.mp3',NULL,NULL,NULL,JSON_ARRAY('Perfect','Here','you','are'),JSON_OBJECT('series',3)),
(v_l_4,v_c_arman,8,'learner','Thanks. Nice to see you again.','ممنون. خوشحالم دوباره می‌بینمت.',1,'nova/audio/turns/en-fa/A1/s0003/l04/t08.mp3',NULL,'Thanks. Nice to see you again.',CAST('["Thanks. Nice to see you again.","Thanks!"]' AS JSON),JSON_ARRAY('Thanks','Nice','to','see','you','again'),JSON_OBJECT('series',3));

    INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES
(v_l_1,'listen',1,NULL,NULL,'Where do you live?','اول گوش کن.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_1,'new_word',2,NULL,NULL,'I live in ...','الگوی محل زندگی را یاد بگیر.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:i-live-in","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_1,'pronunciation',3,NULL,NULL,'where','به صدای اول where گوش کن؛ لب‌ها گرد می‌شوند و صدا v نیست.',1,CAST('{"mode":"sound_notice","target":"w_where","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_1,'speak',4,NULL,NULL,'Where do you live?','تکرار کن.',1,CAST('{"mode":"repeat_visible","accepted":["Where do you live?","Where do you live now?"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_1,'new_word',5,NULL,NULL,'I live near ...','الگوی near را یاد بگیر.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:i-live-near","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_1,'speak',6,NULL,NULL,'بگو در لندن زندگی می‌کنی.','از حافظه بگو.',1,CAST('{"mode":"recall_hidden","cue_fa":"بگو در لندن زندگی می‌کنی.","accepted":["I live in London.","I live in London now."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_1,'meaning_choice',7,NULL,NULL,'I ___ in London.','گزینه درست را انتخاب کن.',1,CAST('{"mode":"sentence_blank","options":["live","speak","from"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_1,'reading',8,NULL,NULL,'Maya: Where do you live? — Arman: I live in London.','بخوان.',1,CAST('{"mode":"reading_input","text":"Maya: Where do you live? — Arman: I live in London.","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_1,'reading_comprehension',9,NULL,NULL,'Where does Arman live?','پاسخ درست را انتخاب کن.',1,CAST('{"mode":"reading_inference","options":["London","Iran","Persian"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_1,'word_order',10,NULL,NULL,'I live in London','مرتب کن.',1,CAST('{"mode":"tap_tokens","tokens":["London","in","live","I"],"answer":["I","live","in","London"],"input":"tap_tokens","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_1,'speak',11,NULL,NULL,'یک نفر می‌پرسد کجا زندگی می‌کنی. جواب بده.','طبیعی جواب بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"یک نفر می‌پرسد کجا زندگی می‌کنی. جواب بده.","accepted_intents":["I live in London.","I live near here."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_1,'speak',12,NULL,NULL,'بگو نزدیک ایستگاه زندگی می‌کنی.','بدون مدل بگو.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"بگو نزدیک ایستگاه زندگی می‌کنی.","accepted_intents":["I live near the station.","Near the station."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3));

    INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES
(v_l_2,'listen',1,NULL,NULL,'Do you live near here?','گوش کن.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_2,'new_word',2,NULL,NULL,'Where do you live?','ساخت سؤال را به صورت chunk یاد بگیر.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:where-do-you-live","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_2,'pronunciation',3,NULL,NULL,'where','فرق w و v را با where تمرین کن.',1,CAST('{"mode":"sound_notice","target":"w_not_v","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_2,'speak',4,NULL,NULL,'Where do you live?','تکرار کن.',1,CAST('{"mode":"repeat_visible","accepted":["Where do you live?","Where do you live now?"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_2,'new_word',5,NULL,NULL,'flat','معنای بریتانیایی flat را ببین.',1,CAST('{"mode":"word_teach","unit_key":"en:a1:flat:home","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_2,'speak',6,NULL,NULL,'از یک نفر بپرس کجا زندگی می‌کند.','از حافظه بگو.',1,CAST('{"mode":"recall_hidden","cue_fa":"از یک نفر بپرس کجا زندگی می‌کند.","accepted":["Where do you live?","Where do you live now?"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_2,'meaning_choice',7,NULL,NULL,'Where ___ you live?','جای خالی را کامل کن.',1,CAST('{"mode":"sentence_blank","options":["do","are","from"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_2,'reading',8,NULL,NULL,'I live near the station. My flat is small.','بخوان.',1,CAST('{"mode":"reading_input","text":"I live near the station. My flat is small.","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_2,'reading_comprehension',9,NULL,NULL,'What is small?','پاسخ را انتخاب کن.',1,CAST('{"mode":"reading_inference","options":["The flat","The station","London"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_2,'word_order',10,NULL,NULL,'Where do you live','مرتب کن.',1,CAST('{"mode":"tap_tokens","tokens":["live","you","do","Where"],"answer":["Where","do","you","live"],"input":"tap_tokens","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_2,'speak',11,NULL,NULL,'بگو در یک آپارتمان کوچک زندگی می‌کنی.','آزاد پاسخ بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"بگو در یک آپارتمان کوچک زندگی می‌کنی.","accepted_intents":["I live in a small flat.","A small flat."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_2,'speak',12,NULL,NULL,'محل زندگی و نزدیک بودن به ایستگاه را در دو بخش بگو.','ترکیب کن.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"محل زندگی و نزدیک بودن به ایستگاه را در دو بخش بگو.","accepted_intents":["I live in London, near the station.","I live in London. I live near the station."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3));

    INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES
(v_l_3,'listen',1,NULL,NULL,'I live near the station.','گوش کن.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_3,'reading',2,NULL,NULL,'Hi. I''m Arman. I live in London.','معرفی کوتاه را بخوان.',1,CAST('{"mode":"reading_input","text":"Hi. I''m Arman. I live in London.","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_3,'new_word',3,NULL,NULL,'I live here.','پاسخ کوتاه را یاد بگیر.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:i-live-here","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_3,'pronunciation',4,NULL,NULL,'Where do you live?','w را واضح بگو و جمله را یک‌تکه نگه دار.',1,CAST('{"mode":"sound_notice","target":"w_where_connected","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_3,'speak',5,NULL,NULL,'کجا زندگی می‌کنی؟ را انگلیسی بپرس.','از حافظه بگو.',1,CAST('{"mode":"recall_hidden","cue_fa":"کجا زندگی می‌کنی؟ را انگلیسی بپرس.","accepted":["Where do you live?","Where do you live now?"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_3,'speak',6,NULL,NULL,'بگو نزدیک ایستگاه زندگی می‌کنی.','از حافظه بگو.',1,CAST('{"mode":"recall_hidden","cue_fa":"بگو نزدیک ایستگاه زندگی می‌کنی.","accepted":["I live near the station.","Near the station."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_3,'meaning_choice',7,NULL,NULL,'I live ___ London.','گزینه درست را انتخاب کن.',1,CAST('{"mode":"sentence_blank","options":["in","from","speak"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_3,'reading_comprehension',8,NULL,NULL,'Arman lives in a small flat near the station.','کجا زندگی می‌کند؟',1,CAST('{"mode":"reading_inference","options":["Near the station","In Iran","At a café"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_3,'word_order',9,NULL,NULL,'I live near here','مرتب کن.',1,CAST('{"mode":"tap_tokens","tokens":["here","near","live","I"],"answer":["I","live","near","here"],"input":"tap_tokens","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_3,'speak',10,NULL,NULL,'به یک همسایه تازه بگو در لندن و نزدیک ایستگاه زندگی می‌کنی.','ترکیبی پاسخ بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"به یک همسایه تازه بگو در لندن و نزدیک ایستگاه زندگی می‌کنی.","accepted_intents":["I live in London, near the station.","I live in London. I live near the station."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_3,'speak',11,NULL,NULL,'نام، کشور و زبانت را کوتاه بگو.','مرور Series 1 و 2.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"نام، کشور و زبانت را کوتاه بگو.","accepted_intents":["I''m Arman. I''m from Iran. I speak Persian.","My name is Arman. I am from Iran. I speak Persian."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_3,'speak',12,NULL,NULL,'به فرد تازه سلام کن و نام، مبدأ، زبان و محل زندگی را مستقل بگو.','مرور همه واحدهای موعددار.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"به فرد تازه سلام کن و نام، مبدأ، زبان و محل زندگی را مستقل بگو.","accepted_intents":["Hi. I''m Arman. I''m from Iran. I speak Persian. I live in London.","Hello. My name is Arman. I am from Iran. I speak Persian and a little English. I live in London."],"input":"speech","scored":true,"review_units":["en:a1:hi:greeting","en:a1:im-name","en:a1:im-from","en:a1:i-speak-language","en:a1:i-live-in"]}' AS JSON),JSON_OBJECT('series',3));

    INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES
(v_l_4,'listen',1,NULL,NULL,'What''s your address?','موقعیت تازه را گوش کن.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_4,'reading',2,NULL,NULL,'Daniel: What''s your address? — Arman: I live near the station.','بخوان.',1,CAST('{"mode":"reading_input","text":"Daniel: What''s your address? — Arman: I live near the station.","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_4,'new_word',3,NULL,NULL,'address','واژه آدرس را در موقعیت تحویل بسته یاد بگیر.',1,CAST('{"mode":"word_teach","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_4,'pronunciation',4,NULL,NULL,'where','w را بدون تبدیل به v تولید کن.',1,CAST('{"mode":"sound_notice","target":"w_where_mastery","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',3)),
(v_l_4,'speak',5,NULL,NULL,'خودت را معرفی کن.','بدون مدل پاسخ بده.',1,CAST('{"mode":"recall_hidden","cue_fa":"خودت را معرفی کن.","accepted":["I''m Arman.","My name is Arman."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_4,'meaning_choice',6,NULL,NULL,'Where do you ___?','جای خالی را کامل کن.',1,CAST('{"mode":"sentence_blank","options":["live","from","English"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_4,'reading_comprehension',7,NULL,NULL,'Arman lives near the station in London.','کدام مورد درست است؟',1,CAST('{"mode":"reading_inference","options":["He lives near the station","He lives in Iran","He speaks no English"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_4,'word_order',8,NULL,NULL,'I live near the station','مرتب کن.',1,CAST('{"mode":"tap_tokens","tokens":["station","the","near","live","I"],"answer":["I","live","near","the","station"],"input":"tap_tokens","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_4,'speak',9,NULL,NULL,'در تحویل بسته از تو نام و محل زندگی می‌خواهند. هر دو را بگو.','موقعیت تازه؛ مستقل ترکیب کن.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"در تحویل بسته از تو نام و محل زندگی می‌خواهند. هر دو را بگو.","accepted_intents":["I''m Arman. I live near the station.","My name is Arman. I live in London, near the station."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_4,'speak',10,NULL,NULL,'همچنین مبدأ و زبانت را اضافه کن.','بدون cue انگلیسی ترکیب کن.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"همچنین مبدأ و زبانت را اضافه کن.","accepted_intents":["I''m from Iran. I speak Persian.","I am from Iran. I speak Persian and a little English."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_4,'speak',11,NULL,NULL,'از مسئول بپرس کجا زندگی می‌کند.','نقش را عوض کن و سؤال بساز.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"از مسئول بپرس کجا زندگی می‌کند.","accepted_intents":["Where do you live?","Where do you live now?"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3)),
(v_l_4,'speak',12,NULL,NULL,'یک معرفی کامل کوتاه برای یک موقعیت اداری تازه بساز: سلام، نام، کشور، زبان و محل زندگی.','ارزیابی mastery مستقل.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"یک معرفی کامل کوتاه برای یک موقعیت اداری تازه بساز: سلام، نام، کشور، زبان و محل زندگی.","accepted_intents":["Hi. I''m Arman. I''m from Iran. I speak Persian. I live in London near the station.","Hello. My name is Arman. I am from Iran. I speak Persian and a little English. I live in London."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',3));

    INSERT IGNORE INTO sem_lesson_learning_units(lesson_id,learning_unit_id,learning_role,is_target,exposure_count,evidence_activity_ids,metadata)
      SELECT v_l_1,id,'new',1,2,NULL,JSON_OBJECT('series',3) FROM sem_learning_units WHERE course_id=v_course AND unit_key IN ('en:a1:i-live-in','en:a1:where-do-you-live','en:a1:i-live-near');
    INSERT IGNORE INTO sem_lesson_learning_units(lesson_id,learning_unit_id,learning_role,is_target,exposure_count,evidence_activity_ids,metadata)
      SELECT v_l_2,id,'new',1,2,NULL,JSON_OBJECT('series',3) FROM sem_learning_units WHERE course_id=v_course AND unit_key IN ('en:a1:do-live-question','en:a1:flat:home','en:a1:pron-w-where');
    INSERT IGNORE INTO sem_lesson_learning_units(lesson_id,learning_unit_id,learning_role,is_target,exposure_count,evidence_activity_ids,metadata)
      SELECT v_l_3,id,'review',1,2,NULL,JSON_OBJECT('series',3) FROM sem_learning_units WHERE course_id=v_course AND unit_key IN ('en:a1:i-live-in','en:a1:where-do-you-live','en:a1:i-live-near','en:a1:i-live-here');
    INSERT IGNORE INTO sem_lesson_learning_units(lesson_id,learning_unit_id,learning_role,is_target,exposure_count,evidence_activity_ids,metadata)
      SELECT v_l_4,id,'mastery',1,2,NULL,JSON_OBJECT('series',3) FROM sem_learning_units WHERE course_id=v_course AND unit_key IN ('en:a1:can:where-live','en:a1:i-live-in','en:a1:i-live-near');

    INSERT IGNORE INTO sem_turn_learning_units(turn_id,learning_unit_id,evidence_type,metadata)
      SELECT t.id,lu.id,'production',JSON_OBJECT('series',3) FROM turns t JOIN sem_learning_units lu ON lu.course_id=v_course AND lu.unit_key='en:a1:i-live-in' WHERE t.lesson_id=v_l_1 AND t.sort_order=2;
    INSERT IGNORE INTO sem_turn_learning_units(turn_id,learning_unit_id,evidence_type,metadata)
      SELECT t.id,lu.id,'production',JSON_OBJECT('series',3) FROM turns t JOIN sem_learning_units lu ON lu.course_id=v_course AND lu.unit_key='en:a1:i-live-near' WHERE t.lesson_id=v_l_2 AND t.sort_order=4;
    INSERT IGNORE INTO sem_turn_learning_units(turn_id,learning_unit_id,evidence_type,metadata)
      SELECT t.id,lu.id,'mastery',JSON_OBJECT('series',3) FROM turns t JOIN sem_learning_units lu ON lu.course_id=v_course AND lu.unit_key='en:a1:can:where-live' WHERE t.lesson_id=v_l_4 AND t.sort_order=4;

    UPDATE sem_review_obligations
      SET status='fulfilled',fulfilled_chapter_id=v_chapter,
          evidence_activity_id=(SELECT id FROM activities WHERE lesson_id=v_l_3 AND sort_order=12 LIMIT 1),
          metadata=JSON_SET(COALESCE(metadata,JSON_OBJECT()),'$.fulfilledSeries',3)
      WHERE course_id=v_course AND due_series=3 AND status='due';

    INSERT IGNORE INTO sem_review_obligations(course_id,learning_unit_id,origin_chapter_id,due_series,spacing_offset,status,metadata)
      SELECT v_course,lu.id,v_chapter,3+o.spacing,o.spacing,'due',JSON_OBJECT('originSeries',3)
      FROM sem_learning_units lu
      JOIN (SELECT 1 AS spacing UNION ALL SELECT 2 UNION ALL SELECT 4 UNION ALL SELECT 8 UNION ALL SELECT 16) o
      WHERE lu.course_id=v_course AND lu.unit_key IN ('en:a1:i-live-in','en:a1:where-do-you-live','en:a1:i-live-near','en:a1:i-live-here','en:a1:do-live-question','en:a1:flat:home','en:a1:pron-w-where','en:a1:can:where-live');

    UPDATE sem_curriculum_outcomes SET status='covered',evidence=JSON_ARRAY('Series 3 active review')
      WHERE course_id=v_course AND cefr_level='A1' AND outcome_key IN ('can_do:origin_language','lexical:origin_languages') AND status='in_progress';
  END IF;
  COMMIT;
END$$
DELIMITER ;
CALL nova_en_v32_s0003();
DROP PROCEDURE IF EXISTS nova_en_v32_s0003;

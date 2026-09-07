-- SERIES 2
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS nova_en_v32_s0002;
DELIMITER $$
CREATE PROCEDURE nova_en_v32_s0002()
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

  SELECT COUNT(*) INTO v_count FROM characters WHERE course_id=v_course AND name='Arman';
  IF v_count=0 THEN INSERT INTO characters(course_id,name,gender,profile,metadata) VALUES(v_course,'Arman','male',JSON_OBJECT('nativeV3',TRUE),JSON_OBJECT('nativeV3',TRUE)); END IF;
  SELECT id INTO v_c_arman FROM characters WHERE course_id=v_course AND name='Arman' AND gender='male' LIMIT 1;
  SELECT COUNT(*) INTO v_count FROM characters WHERE course_id=v_course AND name='Maya';
  IF v_count=0 THEN INSERT INTO characters(course_id,name,gender,profile,metadata) VALUES(v_course,'Maya','female',JSON_OBJECT('nativeV3',TRUE),JSON_OBJECT('nativeV3',TRUE)); END IF;
  SELECT id INTO v_c_maya FROM characters WHERE course_id=v_course AND name='Maya' AND gender='female' LIMIT 1;
  SELECT COUNT(*) INTO v_count FROM characters WHERE course_id=v_course AND name='Nora';
  IF v_count=0 THEN INSERT INTO characters(course_id,name,gender,profile,metadata) VALUES(v_course,'Nora','female',JSON_OBJECT('nativeV3',TRUE),JSON_OBJECT('nativeV3',TRUE)); END IF;
  SELECT id INTO v_c_nora FROM characters WHERE course_id=v_course AND name='Nora' AND gender='female' LIMIT 1;
  SELECT COUNT(*) INTO v_count FROM characters WHERE course_id=v_course AND name='Daniel';
  IF v_count=0 THEN INSERT INTO characters(course_id,name,gender,profile,metadata) VALUES(v_course,'Daniel','male',JSON_OBJECT('nativeV3',TRUE),JSON_OBJECT('nativeV3',TRUE)); END IF;
  SELECT id INTO v_c_daniel FROM characters WHERE course_id=v_course AND name='Daniel' AND gender='male' LIMIT 1;

  SELECT COUNT(*),MIN(id) INTO v_count,v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2;
  IF v_count=0 THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'Where I''m From','اهل کجام','Arman talks naturally about his country and languages in London.','آرمان در لندن درباره کشور و زبان‌هایش به شکل طبیعی صحبت می‌کند.',4,1,1,2,'validated',JSON_OBJECT('series',2,'contractVersion','3.0.0'));
    SET v_chapter=LAST_INSERT_ID();

    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata) VALUES
(v_course,'from','from','preposition','از / اهلِ در عبارت from',1,CAST('{"cefr":"A1","series":2}' AS JSON),CAST('["به","در","با"]' AS JSON),'I''m from Iran.','من اهل ایرانم.','nova/audio/words/en-fa/75857a45899985be4c4d941e90b6b396d6c92a4c7437aaf0bf102089fe21379d.mp3',NULL,JSON_OBJECT('series',2,'definitionComplete',TRUE)),
(v_course,'Iran','Iran','proper_noun','ایران',1,CAST('{"cefr":"A1","series":2}' AS JSON),CAST('["آلمان","لندن","فارسی"]' AS JSON),'I''m from Iran.','من اهل ایرانم.','nova/audio/words/en-fa/18d4e170765cc48842d847de1d0545a2e379e9c87b2af2a6f761681309939ce5.mp3',NULL,JSON_OBJECT('series',2,'definitionComplete',TRUE)),
(v_course,'English','English','proper_noun','انگلیسی',1,CAST('{"cefr":"A1","series":2}' AS JSON),CAST('["فارسی","ایران","لندن"]' AS JSON),'I speak a little English.','من کمی انگلیسی صحبت می‌کنم.','nova/audio/words/en-fa/ba118bf7fc9c1aedc1edb28a0aa86e0b43b681f222af6616e13c43be87815b06.mp3',NULL,JSON_OBJECT('series',2,'definitionComplete',TRUE)),
(v_course,'Persian','Persian','proper_noun','فارسی',1,CAST('{"cefr":"A1","series":2}' AS JSON),CAST('["انگلیسی","ایران","آلمان"]' AS JSON),'I speak Persian.','من فارسی صحبت می‌کنم.','nova/audio/words/en-fa/7428909a1062757c7c7886759e31a39dc90a074ec63262814ef39e6bb56505d4.mp3',NULL,JSON_OBJECT('series',2,'definitionComplete',TRUE)),
(v_course,'speak','speak','verb','صحبت کردن',1,CAST('{"cefr":"A1","series":2}' AS JSON),CAST('["شنیدن","دیدن","آمدن"]' AS JSON),'I speak Persian.','من فارسی صحبت می‌کنم.','nova/audio/words/en-fa/21e5205f73d9edbf72bc29b5ffcb4631cfc95e8f287c4d68e73d17ad72eb5eb3.mp3',NULL,JSON_OBJECT('series',2,'definitionComplete',TRUE)),
(v_course,'little','little','adjective','کم / اندک',1,CAST('{"cefr":"A1","series":2}' AS JSON),CAST('["زیاد","بزرگ","سریع"]' AS JSON),'I speak a little English.','من کمی انگلیسی صحبت می‌کنم.','nova/audio/words/en-fa/180ca01b95f0dfdd36fbb600e51cf6e46c8ef468de56b017847886fefaf7b6f9.mp3',NULL,JSON_OBJECT('series',2,'definitionComplete',TRUE)),
(v_course,'where','where','adverb','کجا',1,CAST('{"cefr":"A1","series":2}' AS JSON),CAST('["چه","کی","چطور"]' AS JSON),'Where are you from?','اهل کجایی؟','nova/audio/words/en-fa/b48111c10c65fc119368edafb19f97451759ee90b3f44647368135ca47aa4753.mp3',NULL,JSON_OBJECT('series',2,'definitionComplete',TRUE));

    INSERT INTO sem_learning_units(course_id,unit_type,unit_key,display_form,translation,description_fa,cefr_level,difficulty,data,metadata) VALUES
(v_course,'construction','en:a1:im-from','I''m from + place','من اهل ... هستم','الگوی طبیعی گفتن مبدأ','A1',1,JSON_OBJECT('series',2),JSON_OBJECT('series',2)),
(v_course,'chunk','en:a1:where-are-you-from','Where are you from?','اهل کجایی؟','سؤال طبیعی برای پرسیدن مبدأ','A1',1,JSON_OBJECT('series',2),JSON_OBJECT('series',2)),
(v_course,'construction','en:a1:i-speak-language','I speak + language','من ... صحبت می‌کنم','الگوی گفتن زبان','A1',1,JSON_OBJECT('series',2),JSON_OBJECT('series',2)),
(v_course,'chunk','en:a1:do-you-speak','Do you speak + language?','آیا ... صحبت می‌کنی؟','سؤال پرکاربرد درباره زبان','A1',1,JSON_OBJECT('series',2),JSON_OBJECT('series',2)),
(v_course,'chunk','en:a1:a-little-english','a little English','کمی انگلیسی','بیان سطح محدود زبان','A1',1,JSON_OBJECT('series',2),JSON_OBJECT('series',2)),
(v_course,'grammar','en:a1:be-origin-question','Where are you from? / I''m from ...','اهل کجایی؟ / اهل ... هستم','تقابل سؤال با are و پاسخ با I''m','A1',1,JSON_OBJECT('series',2),JSON_OBJECT('series',2)),
(v_course,'pronunciation','en:a1:pron-initial-sp','speak','تلفظ ابتدای speak','تولید خوشه آغازین sp بدون افزودن واکه برای فارسی‌زبان','A1',1,JSON_OBJECT('series',2),JSON_OBJECT('series',2)),
(v_course,'can_do','en:a1:can:origin-language','Say where you''re from and what languages you speak','گفتن مبدأ و زبان‌ها','معرفی کوتاه مبدأ و زبان در برخورد تازه','A1',1,JSON_OBJECT('series',2),JSON_OBJECT('series',2))
    ON DUPLICATE KEY UPDATE display_form=VALUES(display_form),translation=VALUES(translation),description_fa=VALUES(description_fa);

    INSERT IGNORE INTO sem_learning_unit_words(learning_unit_id,word_id,sort_order,component_role,metadata)
      SELECT lu.id,w.id,1,'head',JSON_OBJECT('series',2) FROM sem_learning_units lu JOIN words w ON w.course_id=v_course AND w.display_form='from'
      WHERE lu.course_id=v_course AND lu.unit_key='en:a1:im-from' LIMIT 1;
    INSERT IGNORE INTO sem_learning_unit_words(learning_unit_id,word_id,sort_order,component_role,metadata)
      SELECT lu.id,w.id,1,'head',JSON_OBJECT('series',2) FROM sem_learning_units lu JOIN words w ON w.course_id=v_course AND w.display_form='where'
      WHERE lu.course_id=v_course AND lu.unit_key='en:a1:where-are-you-from' LIMIT 1;
    INSERT IGNORE INTO sem_learning_unit_words(learning_unit_id,word_id,sort_order,component_role,metadata)
      SELECT lu.id,w.id,1,'head',JSON_OBJECT('series',2) FROM sem_learning_units lu JOIN words w ON w.course_id=v_course AND w.display_form='speak'
      WHERE lu.course_id=v_course AND lu.unit_key='en:a1:i-speak-language' LIMIT 1;
    INSERT IGNORE INTO sem_learning_unit_words(learning_unit_id,word_id,sort_order,component_role,metadata)
      SELECT lu.id,w.id,1,'head',JSON_OBJECT('series',2) FROM sem_learning_units lu JOIN words w ON w.course_id=v_course AND w.display_form='little'
      WHERE lu.course_id=v_course AND lu.unit_key='en:a1:a-little-english' LIMIT 1;

    INSERT INTO sem_curriculum_outcomes(course_id,cefr_level,outcome_key,outcome_type,title,description_fa,required,status,evidence,metadata) VALUES
      (v_course,'A1','can_do:origin_language','can_do','Say origin and languages','گفتن مبدأ و زبان‌ها',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',2)),
      (v_course,'A1','grammar:be_origin_question','grammar','Ask and answer where someone is from','پرسیدن و پاسخ دادن درباره مبدأ',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',2)),
      (v_course,'A1','lexical:origin_languages','lexical','Origin and language chunks','عبارت‌های مبدأ و زبان',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',2)),
      (v_course,'A1','pron:initial_sp','pronunciation','Initial sp in speak','تلفظ ابتدای speak بدون واکه اضافه',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',2)),
      (v_course,'A1','reading:origin_profile','reading','Read a short origin profile','خواندن معرفی کوتاه شامل کشور و زبان',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',2)),
      (v_course,'A1','listening:origin_language','listening','Understand origin and language','فهم کشور و زبان در گفتگوی کوتاه',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',2))
    ON DUPLICATE KEY UPDATE status='in_progress';

    INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata) VALUES
      (v_chapter,v_c_maya,v_c_arman,'A Country and a Language','یک کشور و یک زبان','Maya asks Arman where he is from and what he speaks.','مایا از آرمان درباره کشور و زبانش می‌پرسد.','story','london_new_start',5,1,420,1,'validated',JSON_OBJECT('pedagogicalRole','audio_story_and_guided_exposure')),
      (v_chapter,v_c_maya,v_c_arman,'From and Speak','From و Speak','Arman controls two useful personal-information patterns.','آرمان دو الگوی کاربردی اطلاعات شخصی را کنترل می‌کند.','story','london_new_start',6,1,420,2,'validated',JSON_OBJECT('pedagogicalRole','explicit_form_and_controlled_practice')),
      (v_chapter,v_c_nora,v_c_arman,'No Model This Time','این بار بدون الگو','Arman retrieves origin and language phrases with a different person.','آرمان عبارت‌های مبدأ و زبان را با فردی دیگر از حافظه بازیابی می‌کند.','story','london_new_start',7,1,420,3,'validated',JSON_OBJECT('pedagogicalRole','retrieval_and_independent_use')),
      (v_chapter,v_c_daniel,v_c_arman,'At the Building Desk','پذیرش ساختمان','Arman combines greeting, name, origin and language at a new reception desk.','آرمان در پذیرش تازه، سلام، نام، کشور و زبان را مستقل ترکیب می‌کند.','story','london_new_start',8,1,480,4,'validated',JSON_OBJECT('pedagogicalRole','review_transfer_and_mastery'));

    SELECT id INTO v_l_1 FROM lessons WHERE chapter_id=v_chapter AND sort_order=1 LIMIT 1;
    SELECT id INTO v_l_2 FROM lessons WHERE chapter_id=v_chapter AND sort_order=2 LIMIT 1;
    SELECT id INTO v_l_3 FROM lessons WHERE chapter_id=v_chapter AND sort_order=3 LIMIT 1;
    SELECT id INTO v_l_4 FROM lessons WHERE chapter_id=v_chapter AND sort_order=4 LIMIT 1;

    INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata) VALUES
(v_l_1,v_c_maya,1,'character','Hi, Arman. Where are you from?','سلام آرمان. اهل کجایی؟',1,'nova/audio/turns/en-fa/A1/s0002/l01/t01.mp3',NULL,NULL,NULL,JSON_ARRAY('Hi','Arman','Where','are','you','from'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_1,v_c_arman,2,'learner','I''m from Iran.','من اهل ایرانم.',1,'nova/audio/turns/en-fa/A1/s0002/l01/t02.mp3',NULL,'I''m from Iran.',CAST('["I''m from Iran.","I am from Iran."]' AS JSON),JSON_ARRAY('I''m','from','Iran'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_1,v_c_maya,3,'character','Do you speak English?','انگلیسی صحبت می‌کنی؟',1,'nova/audio/turns/en-fa/A1/s0002/l01/t03.mp3',NULL,NULL,NULL,JSON_ARRAY('Do','you','speak','English'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_1,v_c_arman,4,'learner','A little.','یک کم.',1,'nova/audio/turns/en-fa/A1/s0002/l01/t04.mp3',NULL,'A little.',CAST('["A little.","A little English."]' AS JSON),JSON_ARRAY('A','little'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_1,v_c_maya,5,'character','What language do you speak at home?','در خانه چه زبانی صحبت می‌کنی؟',1,'nova/audio/turns/en-fa/A1/s0002/l01/t05.mp3',NULL,NULL,NULL,JSON_ARRAY('What','language','do','you','speak','at','home'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_1,v_c_arman,6,'learner','I speak Persian.','من فارسی صحبت می‌کنم.',1,'nova/audio/turns/en-fa/A1/s0002/l01/t06.mp3',NULL,'I speak Persian.',CAST('["I speak Persian.","Persian."]' AS JSON),JSON_ARRAY('I','speak','Persian'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_1,v_c_maya,7,'character','Your English is good.','انگلیسیت خوبه.',1,'nova/audio/turns/en-fa/A1/s0002/l01/t07.mp3',NULL,NULL,NULL,JSON_ARRAY('Your','English','is','good'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_1,v_c_arman,8,'learner','Thanks. I''m learning.','ممنون. دارم یاد می‌گیرم.',1,'nova/audio/turns/en-fa/A1/s0002/l01/t08.mp3',NULL,'Thanks. I''m learning.',CAST('["Thanks. I''m learning.","Thanks!"]' AS JSON),JSON_ARRAY('Thanks','I''m','learning'),NULL,NULL,NULL,JSON_OBJECT('series',2));

    INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata) VALUES
(v_l_2,v_c_maya,1,'character','Where are you from, Arman?','آرمان، اهل کجایی؟',1,'nova/audio/turns/en-fa/A1/s0002/l02/t01.mp3',NULL,NULL,NULL,JSON_ARRAY('Where','are','you','from','Arman'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_2,v_c_arman,2,'learner','I''m from Iran.','من اهل ایرانم.',1,'nova/audio/turns/en-fa/A1/s0002/l02/t02.mp3',NULL,'I''m from Iran.',CAST('["I''m from Iran.","I am from Iran."]' AS JSON),JSON_ARRAY('I''m','from','Iran'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_2,v_c_maya,3,'character','I''m from the UK.','من اهل بریتانیا هستم.',1,'nova/audio/turns/en-fa/A1/s0002/l02/t03.mp3',NULL,NULL,NULL,JSON_ARRAY('I''m','from','the','UK'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_2,v_c_arman,4,'learner','From London?','از لندن؟',1,'nova/audio/turns/en-fa/A1/s0002/l02/t04.mp3',NULL,'From London?',CAST('["From London?","London?"]' AS JSON),JSON_ARRAY('From','London'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_2,v_c_maya,5,'character','Yes, from London.','آره، از لندن.',1,'nova/audio/turns/en-fa/A1/s0002/l02/t05.mp3',NULL,NULL,NULL,JSON_ARRAY('Yes','from','London'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_2,v_c_arman,6,'learner','I speak Persian and a little English.','من فارسی و کمی انگلیسی صحبت می‌کنم.',1,'nova/audio/turns/en-fa/A1/s0002/l02/t06.mp3',NULL,'I speak Persian and a little English.',CAST('["I speak Persian and a little English.","Persian and a little English."]' AS JSON),JSON_ARRAY('I','speak','Persian','and','a','little','English'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_2,v_c_maya,7,'character','And now you''re in London.','و حالا در لندنی.',1,'nova/audio/turns/en-fa/A1/s0002/l02/t07.mp3',NULL,NULL,NULL,JSON_ARRAY('And','now','you''re','in','London'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_2,v_c_arman,8,'learner','Yes. New city, new English.','آره. شهر جدید، انگلیسی جدید.',1,'nova/audio/turns/en-fa/A1/s0002/l02/t08.mp3',NULL,'Yes. New city, new English.',CAST('["Yes. New city, new English.","Yes."]' AS JSON),JSON_ARRAY('Yes','New','city','new','English'),NULL,NULL,NULL,JSON_OBJECT('series',2));

    INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata) VALUES
(v_l_3,v_c_nora,1,'character','Hi, Arman. Where are you from?','سلام آرمان. اهل کجایی؟',1,'nova/audio/turns/en-fa/A1/s0002/l03/t01.mp3',NULL,NULL,NULL,JSON_ARRAY('Hi','Arman','Where','are','you','from'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_3,v_c_arman,2,'learner','I''m from Iran.','من اهل ایرانم.',1,'nova/audio/turns/en-fa/A1/s0002/l03/t02.mp3',NULL,'I''m from Iran.',CAST('["I''m from Iran.","I am from Iran."]' AS JSON),JSON_ARRAY('I''m','from','Iran'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_3,v_c_nora,3,'character','Do you speak English?','انگلیسی صحبت می‌کنی؟',1,'nova/audio/turns/en-fa/A1/s0002/l03/t03.mp3',NULL,NULL,NULL,JSON_ARRAY('Do','you','speak','English'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_3,v_c_arman,4,'learner','Yes, a little.','بله، یک کم.',1,'nova/audio/turns/en-fa/A1/s0002/l03/t04.mp3',NULL,'Yes, a little.',CAST('["Yes, a little.","A little."]' AS JSON),JSON_ARRAY('Yes','a','little'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_3,v_c_nora,5,'character','And Persian?','و فارسی؟',1,'nova/audio/turns/en-fa/A1/s0002/l03/t05.mp3',NULL,NULL,NULL,JSON_ARRAY('And','Persian'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_3,v_c_arman,6,'learner','Yes, I speak Persian.','بله، فارسی صحبت می‌کنم.',1,'nova/audio/turns/en-fa/A1/s0002/l03/t06.mp3',NULL,'Yes, I speak Persian.',CAST('["Yes, I speak Persian.","I speak Persian."]' AS JSON),JSON_ARRAY('Yes','I','speak','Persian'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_3,v_c_nora,7,'character','Nice. Welcome to London.','خوبه. به لندن خوش اومدی.',1,'nova/audio/turns/en-fa/A1/s0002/l03/t07.mp3',NULL,NULL,NULL,JSON_ARRAY('Nice','Welcome','to','London'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_3,v_c_arman,8,'learner','Thanks!','ممنون!',1,'nova/audio/turns/en-fa/A1/s0002/l03/t08.mp3',NULL,'Thanks!',CAST('["Thanks!","Thank you!"]' AS JSON),JSON_ARRAY('Thanks'),NULL,NULL,NULL,JSON_OBJECT('series',2));

    INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata) VALUES
(v_l_4,v_c_daniel,1,'character','Hello. I''m Daniel. Where are you from?','سلام. من دنیل هستم. اهل کجایی؟',1,'nova/audio/turns/en-fa/A1/s0002/l04/t01.mp3',NULL,NULL,NULL,JSON_ARRAY('Hello','I''m','Daniel','Where','are','you','from'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_4,v_c_arman,2,'learner','Hi. I''m Arman. I''m from Iran.','سلام. من آرمانم. اهل ایرانم.',1,'nova/audio/turns/en-fa/A1/s0002/l04/t02.mp3',NULL,'Hi. I''m Arman. I''m from Iran.',CAST('["Hi. I''m Arman. I''m from Iran.","Hello. My name is Arman. I''m from Iran."]' AS JSON),JSON_ARRAY('Hi','I''m','Arman','I''m','from','Iran'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_4,v_c_daniel,3,'character','Do you speak English?','انگلیسی صحبت می‌کنی؟',1,'nova/audio/turns/en-fa/A1/s0002/l04/t03.mp3',NULL,NULL,NULL,JSON_ARRAY('Do','you','speak','English'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_4,v_c_arman,4,'learner','A little. I speak Persian too.','یک کم. فارسی هم صحبت می‌کنم.',1,'nova/audio/turns/en-fa/A1/s0002/l04/t04.mp3',NULL,'A little. I speak Persian too.',CAST('["A little. I speak Persian too.","I speak a little English and Persian."]' AS JSON),JSON_ARRAY('A','little','I','speak','Persian','too'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_4,v_c_daniel,5,'character','That''s fine. Welcome.','خوبه. خوش اومدی.',1,'nova/audio/turns/en-fa/A1/s0002/l04/t05.mp3',NULL,NULL,NULL,JSON_ARRAY('That''s','fine','Welcome'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_4,v_c_arman,6,'learner','Thanks. Nice to meet you.','ممنون. از آشنایی باهات خوشحالم.',1,'nova/audio/turns/en-fa/A1/s0002/l04/t06.mp3',NULL,'Thanks. Nice to meet you.',CAST('["Thanks. Nice to meet you.","Nice to meet you."]' AS JSON),JSON_ARRAY('Thanks','Nice','to','meet','you'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_4,v_c_daniel,7,'character','Nice to meet you too.','من هم از آشنایی باهات خوشحالم.',1,'nova/audio/turns/en-fa/A1/s0002/l04/t07.mp3',NULL,NULL,NULL,JSON_ARRAY('Nice','to','meet','you','too'),NULL,NULL,NULL,JSON_OBJECT('series',2)),
(v_l_4,v_c_arman,8,'learner','See you later.','بعدا می‌بینمت.',1,'nova/audio/turns/en-fa/A1/s0002/l04/t08.mp3',NULL,'See you later.',CAST('["See you later.","Bye."]' AS JSON),JSON_ARRAY('See','you','later'),NULL,NULL,NULL,JSON_OBJECT('series',2));

    INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES
(v_l_1,'listen',1,NULL,NULL,'Where are you from?','اول فقط گوش کن.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_1,'new_word',2,NULL,NULL,'I''m from ...','این عبارت را برای گفتن مبدأ یاد بگیر.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:im-from","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_1,'pronunciation',3,NULL,NULL,'from','به پایان واژه from گوش کن و آن را کامل ادا کن.',1,CAST('{"mode":"sound_notice","target":"final_m_from","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_1,'speak',4,NULL,NULL,'I''m from Iran.','با صدا تکرار کن.',1,CAST('{"mode":"repeat_visible","accepted":["I''m from Iran.","I am from Iran."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_1,'new_word',5,NULL,NULL,'Do you speak English?','این سؤال را به صورت یک عبارت کاربردی یاد بگیر.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:do-you-speak","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_1,'speak',6,NULL,NULL,'بگو اهل ایران هستی.','از حافظه بگو.',1,CAST('{"mode":"recall_hidden","cue_fa":"بگو اهل ایران هستی.","accepted":["I''m from Iran.","I am from Iran."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_1,'meaning_choice',7,NULL,NULL,'I''m ___ Iran.','گزینه درست را انتخاب کن.',1,CAST('{"mode":"sentence_blank","options":["from","speak","where"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_1,'reading',8,NULL,NULL,'Maya: Where are you from? — Arman: I''m from Iran.','متن کوتاه را بخوان.',1,CAST('{"mode":"reading_input","text":"Maya: Where are you from? — Arman: I''m from Iran.","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_1,'reading_comprehension',9,NULL,NULL,'Where is Arman from?','پاسخ درست را انتخاب کن.',1,CAST('{"mode":"reading_inference","options":["Iran","London","English"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_1,'word_order',10,NULL,NULL,'I''m from Iran','کلمات را مرتب کن.',1,CAST('{"mode":"tap_tokens","tokens":["Iran","from","I''m"],"answer":["I''m","from","Iran"],"input":"tap_tokens","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_1,'speak',11,NULL,NULL,'یک نفر از تو می‌پرسد اهل کجایی. پاسخ بده.','با یک جمله طبیعی جواب بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"یک نفر از تو می‌پرسد اهل کجایی. پاسخ بده.","accepted_intents":["I''m from Iran.","I am from Iran."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_1,'speak',12,NULL,NULL,'یک نفر می‌پرسد آیا انگلیسی صحبت می‌کنی. کوتاه جواب بده.','پاسخ طبیعی بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"یک نفر می‌پرسد آیا انگلیسی صحبت می‌کنی. کوتاه جواب بده.","accepted_intents":["A little.","Yes, a little."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2));

    INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES
(v_l_2,'listen',1,NULL,NULL,'I speak Persian.','اول گوش کن.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_2,'new_word',2,NULL,NULL,'I speak + language','الگوی گفتن زبان را یاد بگیر.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:i-speak-language","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_2,'pronunciation',3,NULL,NULL,'speak','به ابتدای speak توجه کن؛ قبلش واکه اضافه نکن.',1,CAST('{"mode":"sound_notice","target":"initial_sp_speak","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_2,'speak',4,NULL,NULL,'I speak Persian.','تکرار کن.',1,CAST('{"mode":"repeat_visible","accepted":["I speak Persian.","Persian."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_2,'new_word',5,NULL,NULL,'a little English','این عبارت را برای سطح محدود زبان یاد بگیر.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:a-little-english","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_2,'speak',6,NULL,NULL,'بگو کمی انگلیسی صحبت می‌کنی.','از حافظه بگو.',1,CAST('{"mode":"recall_hidden","cue_fa":"بگو کمی انگلیسی صحبت می‌کنی.","accepted":["I speak a little English.","A little English."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_2,'meaning_choice',7,NULL,NULL,'I ___ Persian.','جای خالی را کامل کن.',1,CAST('{"mode":"sentence_blank","options":["speak","from","where"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_2,'reading',8,NULL,NULL,'I''m from Iran. I speak Persian and a little English.','بخوان.',1,CAST('{"mode":"reading_input","text":"I''m from Iran. I speak Persian and a little English.","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_2,'reading_comprehension',9,NULL,NULL,'What language does Arman speak?','زبان درست را انتخاب کن.',1,CAST('{"mode":"reading_inference","options":["Persian","London","Iran"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_2,'word_order',10,NULL,NULL,'I speak Persian','مرتب کن.',1,CAST('{"mode":"tap_tokens","tokens":["Persian","I","speak"],"answer":["I","speak","Persian"],"input":"tap_tokens","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_2,'speak',11,NULL,NULL,'به یک نفر بگو چه زبانی صحبت می‌کنی.','بدون دیدن مدل جواب بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"به یک نفر بگو چه زبانی صحبت می‌کنی.","accepted_intents":["I speak Persian.","I speak Persian and a little English."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_2,'speak',12,NULL,NULL,'کشورت و زبانت را در دو جمله بگو.','دو الگو را ترکیب کن.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"کشورت و زبانت را در دو جمله بگو.","accepted_intents":["I''m from Iran. I speak Persian.","I am from Iran. I speak Persian."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2));

    INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES
(v_l_3,'listen',1,NULL,NULL,'Where are you from?','گوش کن و سؤال را تشخیص بده.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_3,'reading',2,NULL,NULL,'Hi. I''m Arman. I''m from Iran.','معرفی کوتاه را بخوان.',1,CAST('{"mode":"reading_input","text":"Hi. I''m Arman. I''m from Iran.","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_3,'new_word',3,NULL,NULL,'Where are you from?','سؤال مبدأ را به صورت chunk مرور کن.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:where-are-you-from","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_3,'pronunciation',4,NULL,NULL,'I''m from Iran.','ریتم جمله را یک‌تکه نگه دار.',1,CAST('{"mode":"sound_notice","target":"chunking_im_from","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_3,'speak',5,NULL,NULL,'اهل کجایی؟ را به انگلیسی بپرس.','از حافظه بگو.',1,CAST('{"mode":"recall_hidden","cue_fa":"اهل کجایی؟ را به انگلیسی بپرس.","accepted":["Where are you from?","Where are you from, Arman?"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_3,'speak',6,NULL,NULL,'بگو من فارسی صحبت می‌کنم.','از حافظه بگو.',1,CAST('{"mode":"recall_hidden","cue_fa":"بگو من فارسی صحبت می‌کنم.","accepted":["I speak Persian.","Persian."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_3,'meaning_choice',7,NULL,NULL,'Where are you ___?','گزینه درست را انتخاب کن.',1,CAST('{"mode":"sentence_blank","options":["from","speak","English"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_3,'reading_comprehension',8,NULL,NULL,'Arman: I''m from Iran. I speak Persian.','کشور را پیدا کن.',1,CAST('{"mode":"reading_inference","options":["Iran","Persian","London"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_3,'word_order',9,NULL,NULL,'Where are you from','مرتب کن.',1,CAST('{"mode":"tap_tokens","tokens":["from","you","Where","are"],"answer":["Where","are","you","from"],"input":"tap_tokens","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_3,'speak',10,NULL,NULL,'یک همکلاسی تازه از کشورت می‌پرسد. جواب بده و زبانت را هم اضافه کن.','ترکیبی پاسخ بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"یک همکلاسی تازه از کشورت می‌پرسد. جواب بده و زبانت را هم اضافه کن.","accepted_intents":["I''m from Iran. I speak Persian.","I am from Iran. I speak Persian."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_3,'speak',11,NULL,NULL,'به سؤال Do you speak English? پاسخ کوتاه و واقعی بده.','کوتاه جواب بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"به سؤال Do you speak English? پاسخ کوتاه و واقعی بده.","accepted_intents":["Yes, a little.","A little."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_3,'speak',12,NULL,NULL,'با یک نفر تازه سلام کن، نامت را بگو، بگو اهل ایران هستی و فارسی صحبت می‌کنی.','مرور فعال Series 1 و 2.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"با یک نفر تازه سلام کن، نامت را بگو، بگو اهل ایران هستی و فارسی صحبت می‌کنی.","accepted_intents":["Hi. I''m Arman. I''m from Iran. I speak Persian.","Hello. My name is Arman. I''m from Iran. I speak Persian."],"input":"speech","scored":true,"review_units":["en:a1:hi:greeting","en:a1:hello:greeting","en:a1:im-name","en:a1:my-name-is","en:a1:im-from","en:a1:i-speak-language"]}' AS JSON),JSON_OBJECT('series',2));

    INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES
(v_l_4,'listen',1,NULL,NULL,'Hello. I''m Daniel. Where are you from?','اول دیالوگ تازه را گوش کن.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_4,'reading',2,NULL,NULL,'Daniel: Do you speak English? — Arman: A little. I speak Persian too.','متن موقعیت تازه را بخوان.',1,CAST('{"mode":"reading_input","text":"Daniel: Do you speak English? — Arman: A little. I speak Persian too.","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_4,'new_word',3,NULL,NULL,'Nice to meet you.','عبارت Series 1 را در موقعیت تازه مرور کن.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:nice-to-meet-you","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_4,'pronunciation',4,NULL,NULL,'I speak Persian too.','واژه‌های اصلی را واضح و بدون کشیدن اضافه بگو.',1,CAST('{"mode":"sound_notice","target":"clear_content_words","input":"none","scored":false}' AS JSON),JSON_OBJECT('series',2)),
(v_l_4,'speak',5,NULL,NULL,'خودت را معرفی کن و کشورت را بگو.','بدون مدل پاسخ بده.',1,CAST('{"mode":"recall_hidden","cue_fa":"خودت را معرفی کن و کشورت را بگو.","accepted":["I''m Arman. I''m from Iran.","My name is Arman. I''m from Iran."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_4,'meaning_choice',6,NULL,NULL,'I speak ___ .','زبان درست را انتخاب کن.',1,CAST('{"mode":"sentence_blank","options":["Persian","Iran","from"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_4,'reading_comprehension',7,NULL,NULL,'Arman speaks Persian and a little English.','کدام زبان را بیشتر بلد است؟',1,CAST('{"mode":"reading_inference","options":["Persian","English","London"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_4,'word_order',8,NULL,NULL,'I speak a little English','مرتب کن.',1,CAST('{"mode":"tap_tokens","tokens":["English","little","a","speak","I"],"answer":["I","speak","a","little","English"],"input":"tap_tokens","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_4,'speak',9,NULL,NULL,'در پذیرش یک ساختمان تازه هستی. مسئول می‌پرسد اهل کجایی. پاسخ بده و نامت را هم بگو.','موقعیت تازه؛ مستقل ترکیب کن.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"در پذیرش یک ساختمان تازه هستی. مسئول می‌پرسد اهل کجایی. پاسخ بده و نامت را هم بگو.","accepted_intents":["Hi. I''m Arman. I''m from Iran.","Hello. My name is Arman. I''m from Iran."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_4,'speak',10,NULL,NULL,'مسئول می‌پرسد آیا انگلیسی صحبت می‌کنی. سطح خودت و زبان دیگرت را بگو.','دو واحد را ترکیب کن.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"مسئول می‌پرسد آیا انگلیسی صحبت می‌کنی. سطح خودت و زبان دیگرت را بگو.","accepted_intents":["A little. I speak Persian too.","I speak a little English and Persian."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_4,'speak',11,NULL,NULL,'گفتگو را با یک عبارت مودبانه آشنایی ادامه بده.','طبیعی جواب بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"گفتگو را با یک عبارت مودبانه آشنایی ادامه بده.","accepted_intents":["Nice to meet you.","Nice to meet you too."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2)),
(v_l_4,'speak',12,NULL,NULL,'بدون cue انگلیسی: سلام کن، نام، کشور و زبانت را بگو.','ارزیابی mastery.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"بدون cue انگلیسی: سلام کن، نام، کشور و زبانت را بگو.","accepted_intents":["Hi. I''m Arman. I''m from Iran. I speak Persian and a little English.","Hello. My name is Arman. I''m from Iran. I speak Persian."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('series',2));

    INSERT IGNORE INTO sem_lesson_learning_units(lesson_id,learning_unit_id,learning_role,is_target,exposure_count,evidence_activity_ids,metadata)
      SELECT v_l_1,id,'new',1,2,NULL,JSON_OBJECT('series',2) FROM sem_learning_units WHERE course_id=v_course AND unit_key IN ('en:a1:im-from','en:a1:where-are-you-from','en:a1:do-you-speak');
    INSERT IGNORE INTO sem_lesson_learning_units(lesson_id,learning_unit_id,learning_role,is_target,exposure_count,evidence_activity_ids,metadata)
      SELECT v_l_2,id,'new',1,3,NULL,JSON_OBJECT('series',2) FROM sem_learning_units WHERE course_id=v_course AND unit_key IN ('en:a1:i-speak-language','en:a1:a-little-english','en:a1:be-origin-question','en:a1:pron-initial-sp');
    INSERT IGNORE INTO sem_lesson_learning_units(lesson_id,learning_unit_id,learning_role,is_target,exposure_count,evidence_activity_ids,metadata)
      SELECT v_l_3,id,'review',1,2,NULL,JSON_OBJECT('series',2) FROM sem_learning_units WHERE course_id=v_course AND unit_key IN ('en:a1:im-from','en:a1:where-are-you-from','en:a1:i-speak-language','en:a1:do-you-speak');
    INSERT IGNORE INTO sem_lesson_learning_units(lesson_id,learning_unit_id,learning_role,is_target,exposure_count,evidence_activity_ids,metadata)
      SELECT v_l_4,id,'mastery',1,2,NULL,JSON_OBJECT('series',2) FROM sem_learning_units WHERE course_id=v_course AND unit_key IN ('en:a1:can:origin-language','en:a1:im-from','en:a1:i-speak-language','en:a1:nice-to-meet-you');

    INSERT IGNORE INTO sem_turn_learning_units(turn_id,learning_unit_id,evidence_type,metadata)
      SELECT t.id,lu.id,'production',JSON_OBJECT('series',2) FROM turns t JOIN sem_learning_units lu ON lu.course_id=v_course AND lu.unit_key='en:a1:im-from'
      WHERE t.lesson_id=v_l_1 AND t.sort_order=2;
    INSERT IGNORE INTO sem_turn_learning_units(turn_id,learning_unit_id,evidence_type,metadata)
      SELECT t.id,lu.id,'production',JSON_OBJECT('series',2) FROM turns t JOIN sem_learning_units lu ON lu.course_id=v_course AND lu.unit_key='en:a1:i-speak-language'
      WHERE t.lesson_id=v_l_1 AND t.sort_order=6;
    INSERT IGNORE INTO sem_turn_learning_units(turn_id,learning_unit_id,evidence_type,metadata)
      SELECT t.id,lu.id,'mastery',JSON_OBJECT('series',2) FROM turns t JOIN sem_learning_units lu ON lu.course_id=v_course AND lu.unit_key='en:a1:can:origin-language'
      WHERE t.lesson_id=v_l_4 AND t.sort_order=4;

    UPDATE sem_review_obligations
      SET status='fulfilled',fulfilled_chapter_id=v_chapter,
          evidence_activity_id=(SELECT id FROM activities WHERE lesson_id=v_l_3 AND sort_order=12 LIMIT 1),
          metadata=JSON_SET(COALESCE(metadata,JSON_OBJECT()),'$.fulfilledSeries',2)
      WHERE course_id=v_course AND due_series=2 AND status='due';

    INSERT IGNORE INTO sem_review_obligations(course_id,learning_unit_id,origin_chapter_id,due_series,spacing_offset,status,metadata)
      SELECT v_course,lu.id,v_chapter,2+o.spacing,o.spacing,'due',JSON_OBJECT('originSeries',2)
      FROM sem_learning_units lu
      JOIN (SELECT 1 AS spacing UNION ALL SELECT 2 UNION ALL SELECT 4 UNION ALL SELECT 8 UNION ALL SELECT 16) o
      WHERE lu.course_id=v_course AND lu.unit_key IN ('en:a1:im-from','en:a1:where-are-you-from','en:a1:i-speak-language','en:a1:do-you-speak','en:a1:a-little-english','en:a1:be-origin-question','en:a1:pron-initial-sp','en:a1:can:origin-language');

    UPDATE sem_curriculum_outcomes
      SET status='covered',evidence=JSON_ARRAY('Series 2 active review')
      WHERE course_id=v_course AND cefr_level='A1' AND outcome_key='can_do:greet_name_checkin' AND status='in_progress';

  END IF;
  COMMIT;
END$$
DELIMITER ;
CALL nova_en_v32_s0002();
DROP PROCEDURE IF EXISTS nova_en_v32_s0002;

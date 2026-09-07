-- SERIES 1
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS nova_en_v32_s0001;
DELIMITER $$
CREATE PROCEDURE nova_en_v32_s0001()
BEGIN
DECLARE v_count INT DEFAULT 0;
DECLARE v_course BIGINT UNSIGNED;
DECLARE v_level BIGINT UNSIGNED;
DECLARE v_module BIGINT UNSIGNED;
DECLARE v_chapter BIGINT UNSIGNED;
DECLARE v_c_arman BIGINT UNSIGNED;
DECLARE v_c_maya BIGINT UNSIGNED;
DECLARE v_c_nora BIGINT UNSIGNED;
DECLARE v_l_1 BIGINT UNSIGNED;
DECLARE v_l_2 BIGINT UNSIGNED;
DECLARE v_l_3 BIGINT UNSIGNED;
DECLARE v_l_4 BIGINT UNSIGNED;
DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
START TRANSACTION;
SELECT COUNT(*),MIN(id) INTO v_count,v_course FROM courses WHERE learning_language='en' AND base_language='fa'; IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='en-fa course identity missing or not unique'; END IF;
SELECT COUNT(*),MIN(id) INTO v_count,v_level FROM levels WHERE course_id=v_course AND cefr_level='A1'; IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='en-fa A1 missing or not unique'; END IF;
SELECT COUNT(*),MIN(id) INTO v_count,v_module FROM modules WHERE level_id=v_level AND sort_order=1; IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='en-fa module 1 missing or not unique'; END IF;
SELECT COUNT(*) INTO v_count FROM characters WHERE course_id=v_course AND name='Arman'; IF v_count=0 THEN INSERT INTO characters(course_id,name,gender,profile,metadata) VALUES(v_course,'Arman','male',JSON_OBJECT('nativeV3',TRUE),JSON_OBJECT('nativeV3',TRUE)); END IF; SELECT id INTO v_c_arman FROM characters WHERE course_id=v_course AND name='Arman' AND gender='male' LIMIT 1;
SELECT COUNT(*) INTO v_count FROM characters WHERE course_id=v_course AND name='Maya'; IF v_count=0 THEN INSERT INTO characters(course_id,name,gender,profile,metadata) VALUES(v_course,'Maya','female',JSON_OBJECT('nativeV3',TRUE),JSON_OBJECT('nativeV3',TRUE)); END IF; SELECT id INTO v_c_maya FROM characters WHERE course_id=v_course AND name='Maya' AND gender='female' LIMIT 1;
SELECT COUNT(*) INTO v_count FROM characters WHERE course_id=v_course AND name='Nora'; IF v_count=0 THEN INSERT INTO characters(course_id,name,gender,profile,metadata) VALUES(v_course,'Nora','female',JSON_OBJECT('nativeV3',TRUE),JSON_OBJECT('nativeV3',TRUE)); END IF; SELECT id INTO v_c_nora FROM characters WHERE course_id=v_course AND name='Nora' AND gender='female' LIMIT 1;
SELECT COUNT(*),MIN(id) INTO v_count,v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1;
IF v_count=0 THEN
INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata) VALUES(v_module,'First Hello','اولین سلام','Arman handles his first short introductions in London.','آرمان اولین آشنایی‌های کوتاهش را در لندن مدیریت می‌کند.',4,1,1,1,'validated',JSON_OBJECT('series',1,'contractVersion','3.0.0')); SET v_chapter=LAST_INSERT_ID();
INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata) VALUES
(v_course,'Hi','Hi','interjection','سلام',1,CAST('{"cefr":"A1"}' AS JSON),CAST('["سلام","نام","حال"]' AS JSON),'Hi, Maya!','سلام، مایا!','nova/audio/words/en-fa/3639efcd08abb273b1619e82e78c29a7df02c1051b1820e99fc395dcaa3326b8.mp3',NULL,JSON_OBJECT('series',1)),
(v_course,'Hello','Hello','interjection','سلام',1,CAST('{"cefr":"A1"}' AS JSON),CAST('["سلام","نام","حال"]' AS JSON),'Hello, Nora!','سلام، نورا!','nova/audio/words/en-fa/185f8db32271fe25f561a6fc938b2e264306ec304eda518007d1764826381969.mp3',NULL,JSON_OBJECT('series',1)),
(v_course,'name','name','noun','اسم',1,CAST('{"cefr":"A1"}' AS JSON),CAST('["سلام","نام","حال"]' AS JSON),'My name is Arman.','اسم من آرمانه.','nova/audio/words/en-fa/82a3537ff0dbce7eec35d69edc3a189ee6f17d82f353a553f9aa96cb0be3ce89.mp3',NULL,JSON_OBJECT('series',1)),
(v_course,'nice','nice','adjective','خوشایند',1,CAST('{"cefr":"A1"}' AS JSON),CAST('["سلام","نام","حال"]' AS JSON),'Nice to meet you.','از آشنایی باهات خوشحالم.','nova/audio/words/en-fa/e186022d0931afe9fe0690857e32f85e50165e7fbe0966d49609ef1981f920c6.mp3',NULL,JSON_OBJECT('series',1)),
(v_course,'meet','meet','verb','آشنا شدن',1,CAST('{"cefr":"A1"}' AS JSON),CAST('["سلام","نام","حال"]' AS JSON),'Nice to meet you.','از آشنایی باهات خوشحالم.','nova/audio/words/en-fa/8ccb033c0e48b27ff91e1ab948367e3bbc6921487c97624ed7ad064025e3dc99.mp3',NULL,JSON_OBJECT('series',1)),
(v_course,'how','how','adverb','چطور',1,CAST('{"cefr":"A1"}' AS JSON),CAST('["سلام","نام","حال"]' AS JSON),'How are you?','حالت چطوره؟','nova/audio/words/en-fa/8044aae1f86875d993f20d7fe3815306b640d6e039c4512cd7a2f8453207b4cd.mp3',NULL,JSON_OBJECT('series',1)),
(v_course,'good','good','adjective','خوب',1,CAST('{"cefr":"A1"}' AS JSON),CAST('["سلام","نام","حال"]' AS JSON),'I''m good, thanks.','خوبم، ممنون.','nova/audio/words/en-fa/770e607624d689265ca6c44884d0807d9b054d23c473c106c72be9de08b7376c.mp3',NULL,JSON_OBJECT('series',1)),
(v_course,'thanks','thanks','interjection','ممنون',1,CAST('{"cefr":"A1"}' AS JSON),CAST('["سلام","نام","حال"]' AS JSON),'Good, thanks.','خوبم، ممنون.','nova/audio/words/en-fa/a6a2729cbf6bcadce577a31f7f76201d5ce63c57d6c53318000d67714bb354ef.mp3',NULL,JSON_OBJECT('series',1));
INSERT INTO sem_learning_units(course_id,unit_type,unit_key,display_form,translation,description_fa,cefr_level,difficulty,data,metadata) VALUES
(v_course,'word_sense','en:a1:hi:greeting','Hi','سلام','سلام کوتاه و روزمره','A1',1,JSON_OBJECT('series',1),JSON_OBJECT('series',1)),
(v_course,'word_sense','en:a1:hello:greeting','Hello','سلام','سلام خنثی و عمومی','A1',1,JSON_OBJECT('series',1),JSON_OBJECT('series',1)),
(v_course,'chunk','en:a1:nice-to-meet-you','Nice to meet you.','از آشنایی با شما خوشحالم','عبارت طبیعی هنگام آشنایی','A1',1,JSON_OBJECT('series',1),JSON_OBJECT('series',1)),
(v_course,'construction','en:a1:im-name','I''m + name','من ... هستم','معرفی نام با شکل فشرده I am','A1',1,JSON_OBJECT('series',1),JSON_OBJECT('series',1)),
(v_course,'construction','en:a1:my-name-is','My name is + name','اسم من ... است','الگوی روشن برای گفتن نام','A1',1,JSON_OBJECT('series',1),JSON_OBJECT('series',1)),
(v_course,'chunk','en:a1:how-are-you','How are you?','حالت چطوره؟','پرسیدن حال در یک برخورد کوتاه','A1',1,JSON_OBJECT('series',1),JSON_OBJECT('series',1)),
(v_course,'chunk','en:a1:im-good-thanks','I''m good, thanks.','خوبم، ممنون','پاسخ کوتاه و طبیعی به احوالپرسی','A1',1,JSON_OBJECT('series',1),JSON_OBJECT('series',1)),
(v_course,'grammar','en:a1:be-im','I''m = I am','I''m یعنی I am','شکل فشرده فعل be با I','A1',1,JSON_OBJECT('series',1),JSON_OBJECT('series',1)),
(v_course,'pronunciation','en:a1:pron-im','I''m','تلفظ طبیعی I''m','شنیدن، توجه و تولید شکل فشرده I''m برای فارسی‌زبان','A1',1,JSON_OBJECT('series',1),JSON_OBJECT('series',1)),
(v_course,'can_do','en:a1:can:greet-introduce-checkin','Greet, introduce yourself, and answer a check-in','سلام، معرفی خود و پاسخ به احوالپرسی','مدیریت یک آشنایی خیلی کوتاه با فرد تازه','A1',1,JSON_OBJECT('series',1),JSON_OBJECT('series',1)) ON DUPLICATE KEY UPDATE display_form=VALUES(display_form),translation=VALUES(translation),description_fa=VALUES(description_fa);
INSERT IGNORE INTO sem_learning_unit_words(learning_unit_id,word_id,sort_order,component_role,metadata) SELECT lu.id,w.id,1,'head',JSON_OBJECT('series',1) FROM sem_learning_units lu JOIN words w ON w.course_id=v_course AND w.display_form='Hi' WHERE lu.course_id=v_course AND lu.unit_key='en:a1:hi:greeting' LIMIT 1;
INSERT IGNORE INTO sem_learning_unit_words(learning_unit_id,word_id,sort_order,component_role,metadata) SELECT lu.id,w.id,1,'head',JSON_OBJECT('series',1) FROM sem_learning_units lu JOIN words w ON w.course_id=v_course AND w.display_form='Hello' WHERE lu.course_id=v_course AND lu.unit_key='en:a1:hello:greeting' LIMIT 1;
INSERT IGNORE INTO sem_learning_unit_words(learning_unit_id,word_id,sort_order,component_role,metadata) SELECT lu.id,w.id,1,'head',JSON_OBJECT('series',1) FROM sem_learning_units lu JOIN words w ON w.course_id=v_course AND w.display_form='name' WHERE lu.course_id=v_course AND lu.unit_key='en:a1:my-name-is' LIMIT 1;
INSERT IGNORE INTO sem_learning_unit_words(learning_unit_id,word_id,sort_order,component_role,metadata) SELECT lu.id,w.id,1,'head',JSON_OBJECT('series',1) FROM sem_learning_units lu JOIN words w ON w.course_id=v_course AND w.display_form='meet' WHERE lu.course_id=v_course AND lu.unit_key='en:a1:nice-to-meet-you' LIMIT 1;
INSERT IGNORE INTO sem_learning_unit_words(learning_unit_id,word_id,sort_order,component_role,metadata) SELECT lu.id,w.id,1,'head',JSON_OBJECT('series',1) FROM sem_learning_units lu JOIN words w ON w.course_id=v_course AND w.display_form='how' WHERE lu.course_id=v_course AND lu.unit_key='en:a1:how-are-you' LIMIT 1;
INSERT IGNORE INTO sem_learning_unit_words(learning_unit_id,word_id,sort_order,component_role,metadata) SELECT lu.id,w.id,1,'head',JSON_OBJECT('series',1) FROM sem_learning_units lu JOIN words w ON w.course_id=v_course AND w.display_form='good' WHERE lu.course_id=v_course AND lu.unit_key='en:a1:im-good-thanks' LIMIT 1;
INSERT INTO sem_curriculum_outcomes(course_id,cefr_level,outcome_key,outcome_type,title,description_fa,required,status,evidence,metadata) VALUES
(v_course,'A1','can_do:greet_name_checkin','can_do','Greet and introduce yourself','سلام، معرفی نام و پاسخ کوتاه به احوالپرسی',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',1)),
(v_course,'A1','grammar:be_im','grammar','Use I''m for a basic introduction','کاربرد I''m برای معرفی پایه',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',1)),
(v_course,'A1','lexical:greetings_identity','lexical','Core greeting and identity chunks','عبارت‌های پایه سلام و معرفی',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',1)),
(v_course,'A1','pron:contracted_im','pronunciation','Natural contracted I''m','تلفظ طبیعی شکل فشرده I''m',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',1)),
(v_course,'A1','reading:short_identity','reading','Read a very short introduction','خواندن یک معرفی بسیار کوتاه',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',1)),
(v_course,'A1','listening:basic_greeting','listening','Understand a short greeting exchange','فهم یک گفتگوی کوتاه سلام و آشنایی',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('series',1)) ON DUPLICATE KEY UPDATE status='in_progress';
INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata) VALUES
(v_chapter,v_c_maya,v_c_arman,'A Real First Hello','اولین سلام واقعی','Maya meets Arman after his arrival in London.','مایا بعد از رسیدن آرمان به لندن با او آشنا می‌شود.','story','london_new_start',1,1,420,1,'validated',JSON_OBJECT('pedagogicalRole','audio_story_and_guided_exposure')),
(v_chapter,v_c_maya,v_c_arman,'Two Ways to Say Your Name','دو راه برای گفتن نام','Arman notices and controls two natural name patterns.','آرمان دو الگوی طبیعی برای گفتن نام را می‌آموزد.','story','london_new_start',2,1,420,2,'validated',JSON_OBJECT('pedagogicalRole','explicit_form_and_controlled_practice')),
(v_chapter,v_c_maya,v_c_arman,'Say It Without the Model','بدون الگو بگو','Arman retrieves greetings and introductions without a direct model.','آرمان سلام و معرفی را بدون الگوی مستقیم بازیابی می‌کند.','story','london_new_start',3,1,420,3,'validated',JSON_OBJECT('pedagogicalRole','retrieval_and_independent_use')),
(v_chapter,v_c_nora,v_c_arman,'A New Hello at the Café','یک سلام تازه در کافه','Arman meets Nora for the first time and recombines the language independently.','آرمان برای اولین بار نورا را می‌بیند و آموخته‌ها را مستقل ترکیب می‌کند.','story','london_new_start',4,1,420,4,'validated',JSON_OBJECT('pedagogicalRole','review_transfer_and_mastery'));
SELECT id INTO v_l_1 FROM lessons WHERE chapter_id=v_chapter AND sort_order=1 LIMIT 1;
SELECT id INTO v_l_2 FROM lessons WHERE chapter_id=v_chapter AND sort_order=2 LIMIT 1;
SELECT id INTO v_l_3 FROM lessons WHERE chapter_id=v_chapter AND sort_order=3 LIMIT 1;
SELECT id INTO v_l_4 FROM lessons WHERE chapter_id=v_chapter AND sort_order=4 LIMIT 1;
INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata) VALUES
(v_l_1,v_c_maya,1,'character','Hi! You must be Arman.','سلام! تو باید آرمان باشی.',1,'nova/audio/turns/en-fa/A1/s0001/l01/t01.mp3',NULL,NULL,NULL,JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_1,v_c_arman,2,'learner','Hi! Yes, I''m Arman.','سلام! بله، من آرمانم.',1,'nova/audio/turns/en-fa/A1/s0001/l01/t02.mp3',NULL,'Hi! Yes, I''m Arman.',CAST('["Hi! Yes, I''m Arman.","My name is Arman."]' AS JSON),JSON_ARRAY(),'I''m = I am','I am در گفتار طبیعی اغلب به I''m فشرده می‌شود.',CAST('{"target":"I''m"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_1,v_c_maya,3,'character','I''m Maya. Nice to meet you.','من مایا هستم. از آشنایی باهات خوشحالم.',1,'nova/audio/turns/en-fa/A1/s0001/l01/t03.mp3',NULL,NULL,NULL,JSON_ARRAY(),'I''m = I am','I am در گفتار طبیعی اغلب به I''m فشرده می‌شود.',CAST('{"target":"I''m"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_1,v_c_arman,4,'learner','Nice to meet you too.','من هم از آشنایی باهات خوشحالم.',1,'nova/audio/turns/en-fa/A1/s0001/l01/t04.mp3',NULL,'Nice to meet you too.',CAST('["Nice to meet you too.","Nice to meet you."]' AS JSON),JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_1,v_c_maya,5,'character','How are you?','حالت چطوره؟',1,'nova/audio/turns/en-fa/A1/s0001/l01/t05.mp3',NULL,NULL,NULL,JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_1,v_c_arman,6,'learner','I''m good, thanks. And you?','خوبم، ممنون. تو چطور؟',1,'nova/audio/turns/en-fa/A1/s0001/l01/t06.mp3',NULL,'I''m good, thanks. And you?',CAST('["I''m good, thanks. And you?","Good, thanks. And you?"]' AS JSON),JSON_ARRAY(),'I''m = I am','I am در گفتار طبیعی اغلب به I''m فشرده می‌شود.',CAST('{"target":"I''m"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_1,v_c_maya,7,'character','Good, thanks. Welcome to London.','خوبم، ممنون. به لندن خوش اومدی.',1,'nova/audio/turns/en-fa/A1/s0001/l01/t07.mp3',NULL,NULL,NULL,JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_1,v_c_arman,8,'learner','Thank you.','ممنون.',1,'nova/audio/turns/en-fa/A1/s0001/l01/t08.mp3',NULL,'Thank you.',CAST('["Thank you.","Thanks."]' AS JSON),JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_2,v_c_maya,1,'character','Hello, Arman.','سلام، آرمان.',1,'nova/audio/turns/en-fa/A1/s0001/l02/t01.mp3',NULL,NULL,NULL,JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_2,v_c_arman,2,'learner','Hello, Maya.','سلام، مایا.',1,'nova/audio/turns/en-fa/A1/s0001/l02/t02.mp3',NULL,'Hello, Maya.',CAST('["Hello, Maya.","Hi, Maya."]' AS JSON),JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_2,v_c_maya,3,'character','When you meet someone new, you can say, “I''m Arman.”','وقتی با کسی تازه آشنا می‌شی، می‌تونی بگی «من آرمانم».',1,'nova/audio/turns/en-fa/A1/s0001/l02/t03.mp3',NULL,NULL,NULL,JSON_ARRAY(),'I''m = I am','I am در گفتار طبیعی اغلب به I''m فشرده می‌شود.',CAST('{"target":"I''m"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_2,v_c_arman,4,'learner','I''m Arman.','من آرمانم.',1,'nova/audio/turns/en-fa/A1/s0001/l02/t04.mp3',NULL,'I''m Arman.',CAST('["I''m Arman.","My name is Arman."]' AS JSON),JSON_ARRAY(),'I''m = I am','I am در گفتار طبیعی اغلب به I''m فشرده می‌شود.',CAST('{"target":"I''m"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_2,v_c_maya,5,'character','You can also say, “My name is Arman.”','می‌تونی بگی «اسم من آرمانه» هم.',1,'nova/audio/turns/en-fa/A1/s0001/l02/t05.mp3',NULL,NULL,NULL,JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_2,v_c_arman,6,'learner','My name is Arman.','اسم من آرمانه.',1,'nova/audio/turns/en-fa/A1/s0001/l02/t06.mp3',NULL,'My name is Arman.',CAST('["My name is Arman.","I''m Arman."]' AS JSON),JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_2,v_c_maya,7,'character','Nice to meet you.','از آشنایی باهات خوشحالم.',1,'nova/audio/turns/en-fa/A1/s0001/l02/t07.mp3',NULL,NULL,NULL,JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_2,v_c_arman,8,'learner','Nice to meet you too.','من هم از آشنایی باهات خوشحالم.',1,'nova/audio/turns/en-fa/A1/s0001/l02/t08.mp3',NULL,'Nice to meet you too.',CAST('["Nice to meet you too.","Nice to meet you."]' AS JSON),JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_3,v_c_maya,1,'character','Ready to try without my example?','آماده‌ای بدون الگوی من امتحان کنی؟',1,'nova/audio/turns/en-fa/A1/s0001/l03/t01.mp3',NULL,NULL,NULL,JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_3,v_c_arman,2,'learner','Yes.','بله.',1,'nova/audio/turns/en-fa/A1/s0001/l03/t02.mp3',NULL,'Yes.',CAST('["Yes.","Yes, I am."]' AS JSON),JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_3,v_c_maya,3,'character','I''m someone new. Start the conversation.','فرض کن من یک آدم تازه‌ام. گفتگو رو شروع کن.',1,'nova/audio/turns/en-fa/A1/s0001/l03/t03.mp3',NULL,NULL,NULL,JSON_ARRAY(),'I''m = I am','I am در گفتار طبیعی اغلب به I''m فشرده می‌شود.',CAST('{"target":"I''m"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_3,v_c_arman,4,'learner','Hi, I''m Arman.','سلام، من آرمانم.',1,'nova/audio/turns/en-fa/A1/s0001/l03/t04.mp3',NULL,'Hi, I''m Arman.',CAST('["Hi, I''m Arman.","Hello, I''m Arman."]' AS JSON),JSON_ARRAY(),'I''m = I am','I am در گفتار طبیعی اغلب به I''m فشرده می‌شود.',CAST('{"target":"I''m"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_3,v_c_maya,5,'character','Nice to meet you, Arman. How are you?','از آشنایی باهات خوشحالم آرمان. حالت چطوره؟',1,'nova/audio/turns/en-fa/A1/s0001/l03/t05.mp3',NULL,NULL,NULL,JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_3,v_c_arman,6,'learner','I''m good, thanks. And you?','خوبم، ممنون. تو چطور؟',1,'nova/audio/turns/en-fa/A1/s0001/l03/t06.mp3',NULL,'I''m good, thanks. And you?',CAST('["I''m good, thanks. And you?","Good, thanks. And you?"]' AS JSON),JSON_ARRAY(),'I''m = I am','I am در گفتار طبیعی اغلب به I''m فشرده می‌شود.',CAST('{"target":"I''m"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_3,v_c_maya,7,'character','Good, thanks.','خوبم، ممنون.',1,'nova/audio/turns/en-fa/A1/s0001/l03/t07.mp3',NULL,NULL,NULL,JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_3,v_c_arman,8,'learner','Nice to meet you.','از آشنایی باهات خوشحالم.',1,'nova/audio/turns/en-fa/A1/s0001/l03/t08.mp3',NULL,'Nice to meet you.',CAST('["Nice to meet you.","Nice to meet you too."]' AS JSON),JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_4,v_c_nora,1,'character','Hello! I''m Nora.','سلام! من نورا هستم.',1,'nova/audio/turns/en-fa/A1/s0001/l04/t01.mp3',NULL,NULL,NULL,JSON_ARRAY(),'I''m = I am','I am در گفتار طبیعی اغلب به I''m فشرده می‌شود.',CAST('{"target":"I''m"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,v_c_arman,2,'learner','Hi, I''m Arman.','سلام، من آرمانم.',1,'nova/audio/turns/en-fa/A1/s0001/l04/t02.mp3',NULL,'Hi, I''m Arman.',CAST('["Hi, I''m Arman.","Hello, I''m Arman."]' AS JSON),JSON_ARRAY(),'I''m = I am','I am در گفتار طبیعی اغلب به I''m فشرده می‌شود.',CAST('{"target":"I''m"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,v_c_nora,3,'character','Nice to meet you, Arman.','از آشنایی باهات خوشحالم آرمان.',1,'nova/audio/turns/en-fa/A1/s0001/l04/t03.mp3',NULL,NULL,NULL,JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_4,v_c_arman,4,'learner','Nice to meet you too.','من هم از آشنایی باهات خوشحالم.',1,'nova/audio/turns/en-fa/A1/s0001/l04/t04.mp3',NULL,'Nice to meet you too.',CAST('["Nice to meet you too.","Nice to meet you."]' AS JSON),JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_4,v_c_nora,5,'character','How are you today?','امروز حالت چطوره؟',1,'nova/audio/turns/en-fa/A1/s0001/l04/t05.mp3',NULL,NULL,NULL,JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_4,v_c_arman,6,'learner','I''m good, thanks. How are you?','خوبم، ممنون. تو چطوری؟',1,'nova/audio/turns/en-fa/A1/s0001/l04/t06.mp3',NULL,'I''m good, thanks. How are you?',CAST('["I''m good, thanks. How are you?","Good, thanks. How are you?"]' AS JSON),JSON_ARRAY(),'I''m = I am','I am در گفتار طبیعی اغلب به I''m فشرده می‌شود.',CAST('{"target":"I''m"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,v_c_nora,7,'character','I''m good, thanks.','خوبم، ممنون.',1,'nova/audio/turns/en-fa/A1/s0001/l04/t07.mp3',NULL,NULL,NULL,JSON_ARRAY(),'I''m = I am','I am در گفتار طبیعی اغلب به I''m فشرده می‌شود.',CAST('{"target":"I''m"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,v_c_arman,8,'learner','My name is Arman. It''s my first day in London.','اسم من آرمانه. امروز اولین روزمه در لندن.',1,'nova/audio/turns/en-fa/A1/s0001/l04/t08.mp3',NULL,'My name is Arman. It''s my first day in London.',CAST('["My name is Arman. It''s my first day in London.","I''m Arman. It''s my first day in London."]' AS JSON),JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_4,v_c_nora,9,'character','Welcome to London!','به لندن خوش اومدی!',1,'nova/audio/turns/en-fa/A1/s0001/l04/t09.mp3',NULL,NULL,NULL,JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1)),
(v_l_4,v_c_arman,10,'learner','Thanks, Nora. Bye!','ممنون نورا. خداحافظ!',1,'nova/audio/turns/en-fa/A1/s0001/l04/t10.mp3',NULL,'Thanks, Nora. Bye!',CAST('["Thanks, Nora. Bye!","Thank you, Nora. Bye!"]' AS JSON),JSON_ARRAY(),NULL,NULL,NULL,JSON_OBJECT('series',1));
INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES
(v_l_1,'listen',1,NULL,NULL,'گوش کن.','انجام بده.',1,CAST('{"mode":"audio_first","source_turn":1}' AS JSON),JSON_OBJECT('series',1)),
(v_l_1,'chunk',2,NULL,NULL,'عبارت را یاد بگیر.','انجام بده.',1,CAST('{"mode":"chunk_teach","target":"Nice to meet you."}' AS JSON),JSON_OBJECT('series',1)),
(v_l_1,'reading',3,NULL,NULL,'بخوان: Hi, I''m Arman.','انجام بده.',1,CAST('{"mode":"reading_input","text":"Hi, I''m Arman.","task_fa":"نام را پیدا کن"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_1,'pronunciation',4,NULL,NULL,'I''m را گوش کن و بگو.','انجام بده.',1,CAST('{"mode":"sound_notice","target":"I''m","sequence":["listen","notice","produce"],"contrast_fa":"I و am را جدا و سنگین نگو"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_1,'speak',5,NULL,NULL,'سلام و نام.','انجام بده.',1,CAST('{"mode":"short_response","accepted":["Hi, I''m Arman.","Hello, I''m Arman."]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_1,'meaning_choice',6,NULL,NULL,'___ Arman.','انجام بده.',1,CAST('{"mode":"sentence_blank","options":["I''m","My","How"],"answer_index":0}' AS JSON),JSON_OBJECT('series',1)),
(v_l_1,'speak',7,NULL,NULL,'بدون الگو معرفی کن.','انجام بده.',1,CAST('{"mode":"recall_hidden","cue_fa":"سلام کن و نامت را بگو","accepted":["Hi, I''m Arman.","Hello, I''m Arman."]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_1,'listen',8,NULL,NULL,'احوالپرسی را بشنو.','انجام بده.',1,CAST('{"mode":"audio_first","source_turn":5}' AS JSON),JSON_OBJECT('series',1)),
(v_l_1,'new_word',9,NULL,NULL,'I''m یعنی I am.','انجام بده.',1,CAST('{"mode":"micro_grammar","rule":"I''m = I am"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_1,'reading_comprehension',10,NULL,NULL,'How are you? را بخوان.','انجام بده.',1,CAST('{"mode":"reading_inference","text":"How are you?","answer":"I''m good, thanks."}' AS JSON),JSON_OBJECT('series',1)),
(v_l_1,'speak',11,NULL,NULL,'به احوالپرسی جواب بده.','انجام بده.',1,CAST('{"mode":"short_response","accepted":["I''m good, thanks.","Good, thanks."]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_1,'speak',12,NULL,NULL,'در موقعیت تازه پاسخ بده.','انجام بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"یک فرد تازه در لندن سلام می‌کند؛ نامت را بگو و پاسخ بده","accepted_intents":["greet_and_name","answer_checkin"]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_2,'listen',1,NULL,NULL,'گوش کن.','انجام بده.',1,CAST('{"mode":"audio_first","source_turn":1}' AS JSON),JSON_OBJECT('series',1)),
(v_l_2,'chunk',2,NULL,NULL,'عبارت را یاد بگیر.','انجام بده.',1,CAST('{"mode":"chunk_teach","target":"Nice to meet you."}' AS JSON),JSON_OBJECT('series',1)),
(v_l_2,'reading',3,NULL,NULL,'بخوان: Hi, I''m Arman.','انجام بده.',1,CAST('{"mode":"reading_input","text":"Hi, I''m Arman.","task_fa":"نام را پیدا کن"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_2,'pronunciation',4,NULL,NULL,'I''m را گوش کن و بگو.','انجام بده.',1,CAST('{"mode":"sound_notice","target":"I''m","sequence":["listen","notice","produce"],"contrast_fa":"I و am را جدا و سنگین نگو"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_2,'speak',5,NULL,NULL,'سلام و نام.','انجام بده.',1,CAST('{"mode":"short_response","accepted":["Hi, I''m Arman.","Hello, I''m Arman."]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_2,'meaning_choice',6,NULL,NULL,'___ Arman.','انجام بده.',1,CAST('{"mode":"sentence_blank","options":["I''m","My","How"],"answer_index":0}' AS JSON),JSON_OBJECT('series',1)),
(v_l_2,'speak',7,NULL,NULL,'بدون الگو معرفی کن.','انجام بده.',1,CAST('{"mode":"recall_hidden","cue_fa":"سلام کن و نامت را بگو","accepted":["Hi, I''m Arman.","Hello, I''m Arman."]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_2,'listen',8,NULL,NULL,'احوالپرسی را بشنو.','انجام بده.',1,CAST('{"mode":"audio_first","source_turn":5}' AS JSON),JSON_OBJECT('series',1)),
(v_l_2,'new_word',9,NULL,NULL,'I''m یعنی I am.','انجام بده.',1,CAST('{"mode":"micro_grammar","rule":"I''m = I am"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_2,'reading_comprehension',10,NULL,NULL,'How are you? را بخوان.','انجام بده.',1,CAST('{"mode":"reading_inference","text":"How are you?","answer":"I''m good, thanks."}' AS JSON),JSON_OBJECT('series',1)),
(v_l_2,'speak',11,NULL,NULL,'به احوالپرسی جواب بده.','انجام بده.',1,CAST('{"mode":"short_response","accepted":["I''m good, thanks.","Good, thanks."]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_2,'speak',12,NULL,NULL,'در موقعیت تازه پاسخ بده.','انجام بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"یک فرد تازه در لندن سلام می‌کند؛ نامت را بگو و پاسخ بده","accepted_intents":["greet_and_name","answer_checkin"]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_2,'reading',13,NULL,NULL,'My name is Arman را بخوان.','انجام بده.',1,CAST('{"mode":"reading_input","text":"My name is Arman.","task_fa":"الگوی نام را پیدا کن"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_3,'listen',1,NULL,NULL,'گوش کن.','انجام بده.',1,CAST('{"mode":"audio_first","source_turn":1}' AS JSON),JSON_OBJECT('series',1)),
(v_l_3,'chunk',2,NULL,NULL,'عبارت را یاد بگیر.','انجام بده.',1,CAST('{"mode":"chunk_teach","target":"Nice to meet you."}' AS JSON),JSON_OBJECT('series',1)),
(v_l_3,'reading',3,NULL,NULL,'بخوان: Hi, I''m Arman.','انجام بده.',1,CAST('{"mode":"reading_input","text":"Hi, I''m Arman.","task_fa":"نام را پیدا کن"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_3,'pronunciation',4,NULL,NULL,'I''m را گوش کن و بگو.','انجام بده.',1,CAST('{"mode":"sound_notice","target":"I''m","sequence":["listen","notice","produce"],"contrast_fa":"I و am را جدا و سنگین نگو"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_3,'speak',5,NULL,NULL,'سلام و نام.','انجام بده.',1,CAST('{"mode":"short_response","accepted":["Hi, I''m Arman.","Hello, I''m Arman."]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_3,'meaning_choice',6,NULL,NULL,'___ Arman.','انجام بده.',1,CAST('{"mode":"sentence_blank","options":["I''m","My","How"],"answer_index":0}' AS JSON),JSON_OBJECT('series',1)),
(v_l_3,'speak',7,NULL,NULL,'بدون الگو معرفی کن.','انجام بده.',1,CAST('{"mode":"recall_hidden","cue_fa":"سلام کن و نامت را بگو","accepted":["Hi, I''m Arman.","Hello, I''m Arman."]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_3,'listen',8,NULL,NULL,'احوالپرسی را بشنو.','انجام بده.',1,CAST('{"mode":"audio_first","source_turn":5}' AS JSON),JSON_OBJECT('series',1)),
(v_l_3,'new_word',9,NULL,NULL,'I''m یعنی I am.','انجام بده.',1,CAST('{"mode":"micro_grammar","rule":"I''m = I am"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_3,'reading_comprehension',10,NULL,NULL,'How are you? را بخوان.','انجام بده.',1,CAST('{"mode":"reading_inference","text":"How are you?","answer":"I''m good, thanks."}' AS JSON),JSON_OBJECT('series',1)),
(v_l_3,'speak',11,NULL,NULL,'به احوالپرسی جواب بده.','انجام بده.',1,CAST('{"mode":"short_response","accepted":["I''m good, thanks.","Good, thanks."]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_3,'speak',12,NULL,NULL,'در موقعیت تازه پاسخ بده.','انجام بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"یک فرد تازه در لندن سلام می‌کند؛ نامت را بگو و پاسخ بده","accepted_intents":["greet_and_name","answer_checkin"]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,'listen',1,NULL,NULL,'گوش کن.','انجام بده.',1,CAST('{"mode":"audio_first","source_turn":1}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,'chunk',2,NULL,NULL,'عبارت را یاد بگیر.','انجام بده.',1,CAST('{"mode":"chunk_teach","target":"Nice to meet you."}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,'reading',3,NULL,NULL,'بخوان: Hi, I''m Arman.','انجام بده.',1,CAST('{"mode":"reading_input","text":"Hi, I''m Arman.","task_fa":"نام را پیدا کن"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,'pronunciation',4,NULL,NULL,'I''m را گوش کن و بگو.','انجام بده.',1,CAST('{"mode":"sound_notice","target":"I''m","sequence":["listen","notice","produce"],"contrast_fa":"I و am را جدا و سنگین نگو"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,'speak',5,NULL,NULL,'سلام و نام.','انجام بده.',1,CAST('{"mode":"short_response","accepted":["Hi, I''m Arman.","Hello, I''m Arman."]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,'meaning_choice',6,NULL,NULL,'___ Arman.','انجام بده.',1,CAST('{"mode":"sentence_blank","options":["I''m","My","How"],"answer_index":0}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,'speak',7,NULL,NULL,'بدون الگو معرفی کن.','انجام بده.',1,CAST('{"mode":"recall_hidden","cue_fa":"سلام کن و نامت را بگو","accepted":["Hi, I''m Arman.","Hello, I''m Arman."]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,'listen',8,NULL,NULL,'احوالپرسی را بشنو.','انجام بده.',1,CAST('{"mode":"audio_first","source_turn":5}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,'new_word',9,NULL,NULL,'I''m یعنی I am.','انجام بده.',1,CAST('{"mode":"micro_grammar","rule":"I''m = I am"}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,'reading_comprehension',10,NULL,NULL,'How are you? را بخوان.','انجام بده.',1,CAST('{"mode":"reading_inference","text":"How are you?","answer":"I''m good, thanks."}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,'speak',11,NULL,NULL,'به احوالپرسی جواب بده.','انجام بده.',1,CAST('{"mode":"short_response","accepted":["I''m good, thanks.","Good, thanks."]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,'speak',12,NULL,NULL,'در موقعیت تازه پاسخ بده.','انجام بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"در کافه با نورا که اولین بار می‌بینی سلام و معرفی و احوالپرسی را مستقل انجام بده","accepted_intents":["greet_and_name","answer_checkin"]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,'word_order',13,NULL,NULL,'با My name is نامت را بگو.','انجام بده.',1,CAST('{"mode":"recall_hidden","cue_fa":"اسم خودت را بگو","accepted":["My name is Arman.","I''m Arman."]}' AS JSON),JSON_OBJECT('series',1)),
(v_l_4,'speak',14,NULL,NULL,'یک شروع متفاوت بساز.','انجام بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"نورا به جای Hi می‌گوید Hello؛ بدون الگو گفتگو را ادامه بده","accepted_intents":["greet","introduce","checkin"]}' AS JSON),JSON_OBJECT('series',1));
INSERT IGNORE INTO sem_lesson_learning_units(lesson_id,learning_unit_id,learning_role,is_target,exposure_count,evidence_activity_ids,metadata) SELECT v_l_1,id,'new',1,1,JSON_ARRAY(),JSON_OBJECT('series',1) FROM sem_learning_units WHERE course_id=v_course AND JSON_EXTRACT(metadata,'$.series')=1;
INSERT IGNORE INTO sem_lesson_learning_units(lesson_id,learning_unit_id,learning_role,is_target,exposure_count,evidence_activity_ids,metadata) SELECT v_l_2,id,'new',1,1,JSON_ARRAY(),JSON_OBJECT('series',1) FROM sem_learning_units WHERE course_id=v_course AND JSON_EXTRACT(metadata,'$.series')=1;
INSERT IGNORE INTO sem_lesson_learning_units(lesson_id,learning_unit_id,learning_role,is_target,exposure_count,evidence_activity_ids,metadata) SELECT v_l_3,id,'review',1,1,JSON_ARRAY(),JSON_OBJECT('series',1) FROM sem_learning_units WHERE course_id=v_course AND JSON_EXTRACT(metadata,'$.series')=1;
INSERT IGNORE INTO sem_lesson_learning_units(lesson_id,learning_unit_id,learning_role,is_target,exposure_count,evidence_activity_ids,metadata) SELECT v_l_4,id,'mastery',1,1,JSON_ARRAY(),JSON_OBJECT('series',1) FROM sem_learning_units WHERE course_id=v_course AND JSON_EXTRACT(metadata,'$.series')=1;
INSERT IGNORE INTO sem_turn_learning_units(turn_id,learning_unit_id,evidence_type,metadata) SELECT t.id,lu.id,CASE WHEN l.sort_order=4 THEN 'mastery' WHEN t.role='learner' THEN 'production' ELSE 'exposure' END,JSON_OBJECT('series',1) FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN sem_learning_units lu ON lu.course_id=v_course AND lu.unit_key='en:a1:can:greet-introduce-checkin' WHERE l.chapter_id=v_chapter;
INSERT IGNORE INTO sem_review_obligations(course_id,learning_unit_id,origin_chapter_id,due_series,spacing_offset,status,metadata) SELECT v_course,lu.id,v_chapter,1+s.spacing,s.spacing,'due',JSON_OBJECT('originSeries',1) FROM sem_learning_units lu JOIN (SELECT 1 spacing UNION ALL SELECT 2 UNION ALL SELECT 4 UNION ALL SELECT 8 UNION ALL SELECT 16) s WHERE lu.course_id=v_course AND JSON_EXTRACT(lu.metadata,'$.series')=1;
UPDATE sem_curriculum_outcomes SET evidence=JSON_ARRAY(JSON_OBJECT('series',1)),status='in_progress' WHERE course_id=v_course AND cefr_level='A1' AND JSON_EXTRACT(metadata,'$.series')=1;
ELSEIF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='en-fa Series 1 chapter identity not unique'; END IF;
COMMIT;
END$$
DELIMITER ;
CALL nova_en_v32_s0001();
DROP PROCEDURE IF EXISTS nova_en_v32_s0001;

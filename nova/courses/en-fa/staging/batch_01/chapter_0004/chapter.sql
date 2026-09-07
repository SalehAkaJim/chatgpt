-- SERIES 4
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS nova_en_v3_s004;
DELIMITER $$
CREATE PROCEDURE nova_en_v3_s004()
BEGIN
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_course BIGINT UNSIGNED; DECLARE v_level BIGINT UNSIGNED; DECLARE v_module BIGINT UNSIGNED; DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_c_arman BIGINT UNSIGNED; DECLARE v_c_maya BIGINT UNSIGNED; DECLARE v_c_daniel BIGINT UNSIGNED; DECLARE v_c_nora BIGINT UNSIGNED;
  DECLARE v_l_1 BIGINT UNSIGNED; DECLARE v_l_2 BIGINT UNSIGNED; DECLARE v_l_3 BIGINT UNSIGNED; DECLARE v_l_4 BIGINT UNSIGNED;
  DECLARE v_u_1 BIGINT UNSIGNED;
  DECLARE v_u_2 BIGINT UNSIGNED;
  DECLARE v_u_3 BIGINT UNSIGNED;
  DECLARE v_u_4 BIGINT UNSIGNED;
  DECLARE v_u_5 BIGINT UNSIGNED;
  DECLARE v_u_6 BIGINT UNSIGNED;
  DECLARE v_u_7 BIGINT UNSIGNED;
  DECLARE v_u_8 BIGINT UNSIGNED;
  DECLARE v_ev1 BIGINT UNSIGNED; DECLARE v_ev2 BIGINT UNSIGNED; DECLARE v_ev3 BIGINT UNSIGNED;
  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT COUNT(*),MIN(id) INTO v_count,v_course FROM courses WHERE learning_language='en' AND base_language='fa';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='en-fa course identity missing or not unique'; END IF;
  SELECT COUNT(*),MIN(id) INTO v_count,v_level FROM levels WHERE course_id=v_course AND cefr_level='A1';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='en-fa A1 missing or not unique'; END IF;
  SELECT COUNT(*),MIN(id) INTO v_count,v_module FROM modules WHERE level_id=v_level AND sort_order=1;
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='en-fa module 1 missing or not unique'; END IF;
  SELECT COUNT(*),MIN(id) INTO v_count,v_c_arman FROM characters WHERE course_id=v_course AND name='Arman' AND gender='male';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Arman identity missing or not unique'; END IF;
  SELECT COUNT(*),MIN(id) INTO v_count,v_c_maya FROM characters WHERE course_id=v_course AND name='Maya' AND gender='female';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Maya identity missing or not unique'; END IF;
  SELECT COUNT(*),MIN(id) INTO v_count,v_c_daniel FROM characters WHERE course_id=v_course AND name='Daniel' AND gender='male';
  IF v_count=0 THEN INSERT INTO characters (course_id,name,gender,voice_key,profile,metadata) VALUES (v_course,'Daniel','male','daniel',JSON_OBJECT('role','friend','city','London'),JSON_OBJECT('course','en-fa')); SET v_c_daniel=LAST_INSERT_ID(); ELSEIF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Daniel identity not unique'; END IF;
  SELECT COUNT(*),MIN(id) INTO v_count,v_c_nora FROM characters WHERE course_id=v_course AND name='Nora' AND gender='female';
  IF v_count=0 THEN INSERT INTO characters (course_id,name,gender,voice_key,profile,metadata) VALUES (v_course,'Nora','female','nora',JSON_OBJECT('role','welcome_desk','city','London'),JSON_OBJECT('course','en-fa')); SET v_c_nora=LAST_INSERT_ID(); ELSEIF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Nora identity not unique'; END IF;
  SELECT COUNT(*),MIN(id) INTO v_count,v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4;
  IF v_count=0 THEN
    INSERT INTO chapters (module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata) VALUES (v_module,'What Languages Do You Speak?','چه زبان‌هایی صحبت می‌کنی؟','Arman learns to ask and say which languages he speaks while reusing origin and residence in natural introductions.','آرمان یاد می‌گیرد درباره زبان‌های قابل صحبت پرسش و پاسخ کند و مبدأ و محل زندگی را در معرفی‌های طبیعی دوباره به کار ببرد.',4,1,1,4,'validated',JSON_OBJECT('series',4,'contractVersion','3.0.0','level','A1','generatedStatus','locally_validated','acquisitionQuality',TRUE)); SET v_chapter=LAST_INSERT_ID();
    INSERT INTO words (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,metadata) VALUES
      (v_course,'speak','speak','verb','صحبت کردن / بلد بودن زبان',1,JSON_OBJECT('cefr','A1','sense','use_language'),CAST('["زندگی کردن","آمدن","دیدن"]' AS JSON),'I speak Persian.','من فارسی صحبت می‌کنم.',JSON_OBJECT('sourceSeries',4,'course','en-fa','definitionComplete',TRUE,'semanticUnitKey','en:a1:speak:language')),
      (v_course,'English','English','proper_noun','انگلیسی',1,JSON_OBJECT('cefr','A1','sense','language'),CAST('["فارسی","لندن","ایران"]' AS JSON),'I speak a little English.','من کمی انگلیسی صحبت می‌کنم.',JSON_OBJECT('sourceSeries',4,'course','en-fa','definitionComplete',TRUE,'semanticUnitKey','en:a1:english:language')),
      (v_course,'Persian','Persian','proper_noun','فارسی',1,JSON_OBJECT('cefr','A1','sense','language'),CAST('["انگلیسی","لندن","ایران"]' AS JSON),'I speak Persian.','من فارسی صحبت می‌کنم.',JSON_OBJECT('sourceSeries',4,'course','en-fa','definitionComplete',TRUE,'semanticUnitKey','en:a1:persian:language')),
      (v_course,'language','language','noun','زبان',1,JSON_OBJECT('cefr','A1','sense','human_language'),CAST('["شهر","نام","خانه"]' AS JSON),'English is a language.','انگلیسی یک زبان است.',JSON_OBJECT('sourceSeries',4,'course','en-fa','definitionComplete',TRUE,'semanticUnitKey','en:a1:language:human'));
    INSERT INTO learning_units (course_id,unit_type,unit_key,display_form,translation,description_fa,cefr_level,difficulty,data,metadata) VALUES
      (v_course,'chunk','en:a1:do-you-speak','Do you speak ...?','آیا ... صحبت می‌کنی؟','پرسیدن اینکه کسی یک زبان را صحبت می‌کند یا نه','A1',1,CAST('{"function":"ask_language"}' AS JSON),JSON_OBJECT('series',4)),
      (v_course,'chunk','en:a1:i-speak','I speak ...','من ... صحبت می‌کنم','گفتن زبانی که فرد صحبت می‌کند','A1',1,CAST('{"function":"state_language"}' AS JSON),JSON_OBJECT('series',4)),
      (v_course,'word_sense','en:a1:speak:language','speak','صحبت کردن / بلد بودن زبان','speak در بافت زبان و توانایی صحبت کردن','A1',1,CAST('{"pos":"verb","sense":"use_language"}' AS JSON),JSON_OBJECT('series',4)),
      (v_course,'word_sense','en:a1:english:language','English','انگلیسی','English به عنوان نام زبان','A1',1,CAST('{"pos":"proper_noun","sense":"language"}' AS JSON),JSON_OBJECT('series',4)),
      (v_course,'word_sense','en:a1:persian:language','Persian','فارسی','Persian به عنوان نام زبان','A1',1,CAST('{"pos":"proper_noun","sense":"language"}' AS JSON),JSON_OBJECT('series',4)),
      (v_course,'grammar','en:a1:present-simple-do-you-speak','Do you speak ...?','آیا ... صحبت می‌کنی؟','الگوی سوال بله/خیر با do + you + فعل پایه','A1',1,CAST('{"pattern":"Do + you + base verb"}' AS JSON),JSON_OBJECT('series',4)),
      (v_course,'pronunciation','en:a1:pron:initial-sp','speak — initial /sp/',NULL,'شروع speak با خوشه /sp/ بدون افزودن واکه قبل از آن','A1',1,CAST('{"target":"initial_sp_cluster","persian_contrast":"avoid_espeak"}' AS JSON),JSON_OBJECT('series',4)),
      (v_course,'can_do','en:a1:can-do:state-language','ask and say languages','پرسیدن و گفتن زبان‌ها','در موقعیت تازه درباره زبان‌های قابل صحبت پرسش و پاسخ کند','A1',1,CAST('{"function":"language_identity"}' AS JSON),JSON_OBJECT('series',4));
    SELECT id INTO v_u_1 FROM learning_units WHERE course_id=v_course AND unit_key='en:a1:do-you-speak';
    SELECT id INTO v_u_2 FROM learning_units WHERE course_id=v_course AND unit_key='en:a1:i-speak';
    SELECT id INTO v_u_3 FROM learning_units WHERE course_id=v_course AND unit_key='en:a1:speak:language';
    SELECT id INTO v_u_4 FROM learning_units WHERE course_id=v_course AND unit_key='en:a1:english:language';
    SELECT id INTO v_u_5 FROM learning_units WHERE course_id=v_course AND unit_key='en:a1:persian:language';
    SELECT id INTO v_u_6 FROM learning_units WHERE course_id=v_course AND unit_key='en:a1:present-simple-do-you-speak';
    SELECT id INTO v_u_7 FROM learning_units WHERE course_id=v_course AND unit_key='en:a1:pron:initial-sp';
    SELECT id INTO v_u_8 FROM learning_units WHERE course_id=v_course AND unit_key='en:a1:can-do:state-language';
    INSERT INTO curriculum_outcomes (course_id,cefr_level,outcome_key,outcome_type,title,description_fa,required,status,evidence) VALUES
      (v_course,'A1','can_do:state_language','can_do','Ask and say languages','پرسیدن و گفتن زبان‌هایی که فرد صحبت می‌کند',1,'in_progress',JSON_ARRAY()),
      (v_course,'A1','grammar:present-simple-do-you','grammar','Do you + base verb','ساخت سوال ساده با do و you',1,'in_progress',JSON_ARRAY()),
      (v_course,'A1','lexical:identity-language','lexical','Languages in personal information','واژگان و عبارت‌های پایه زبان در اطلاعات شخصی',1,'in_progress',JSON_ARRAY()),
      (v_course,'A1','pron:initial-consonant-cluster','pronunciation','Initial sp in speak','تولید speak بدون افزودن واکه پیش از sp',1,'in_progress',JSON_ARRAY()),
      (v_course,'A1','listening:key-language-info','listening','Catch language information','تشخیص زبان در گفت‌وگوی کوتاه',1,'in_progress',JSON_ARRAY())
      ON DUPLICATE KEY UPDATE status='in_progress';
    INSERT INTO lessons (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata) VALUES
      (v_chapter,v_c_maya,v_c_arman,'Do You Speak English?','انگلیسی صحبت می‌کنی؟','Maya checks which language is easiest for Arman.','مایا می‌پرسد آرمان با کدام زبان راحت‌تر است.','story','london_new_start',13,1,420,1,'validated',JSON_OBJECT('pedagogicalRole','exposure')),
      (v_chapter,v_c_maya,v_c_arman,'Languages on the Form','زبان‌ها در فرم','Arman answers a simple language question on a welcome form.','آرمان به پرسش ساده درباره زبان در فرم خوش‌آمدگویی پاسخ می‌دهد.','story','london_new_start',14,1,420,2,'validated',JSON_OBJECT('pedagogicalRole','explicit_form')),
      (v_chapter,v_c_daniel,v_c_arman,'Meet Daniel','آشنایی با دنیل','Arman meets Daniel and reuses origin and residence while adding languages.','آرمان با دنیل آشنا می‌شود و مبدأ و محل زندگی را همراه زبان‌ها دوباره به کار می‌برد.','story','london_new_start',15,1,420,3,'validated',JSON_OBJECT('pedagogicalRole','retrieval')),
      (v_chapter,v_c_nora,v_c_arman,'A New Welcome Desk','یک میز خوش‌آمدگویی تازه','Arman handles the same personal-information goal with a new person and new wording.','آرمان همان هدف اطلاعات شخصی را با فردی تازه و بیان متفاوت مستقل مدیریت می‌کند.','story','london_new_start',16,1,420,4,'validated',JSON_OBJECT('pedagogicalRole','mastery'));
    SELECT id INTO v_l_1 FROM lessons WHERE chapter_id=v_chapter AND sort_order=1; SELECT id INTO v_l_2 FROM lessons WHERE chapter_id=v_chapter AND sort_order=2; SELECT id INTO v_l_3 FROM lessons WHERE chapter_id=v_chapter AND sort_order=3; SELECT id INTO v_l_4 FROM lessons WHERE chapter_id=v_chapter AND sort_order=4;
    INSERT INTO turns (lesson_id,character_id,sort_order,role,text,translation,difficulty,speech_target,speech_alternatives,tokens,metadata) VALUES
      (v_l_1,v_c_maya,1,'character','Hi, Arman. Do you speak English?','سلام آرمان. انگلیسی صحبت می‌کنی؟',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
      (v_l_1,v_c_arman,2,'learner','A little.','کمی.',1,'A little.',JSON_ARRAY('A little.','A little English.'),JSON_ARRAY(),JSON_OBJECT()),
      (v_l_1,v_c_maya,3,'character','Do you speak Persian?','فارسی صحبت می‌کنی؟',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
      (v_l_1,v_c_arman,4,'learner','Yes, I speak Persian.','بله، فارسی صحبت می‌کنم.',1,'Yes, I speak Persian.',JSON_ARRAY('Yes, I speak Persian.','I speak Persian.'),JSON_ARRAY(),JSON_OBJECT()),
      (v_l_1,v_c_maya,5,'character','Great. We can use English here.','عالیه. اینجا می‌توانیم انگلیسی صحبت کنیم.',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
      (v_l_1,v_c_arman,6,'learner','Okay.','باشه.',1,'Okay.',JSON_ARRAY('Okay.','Sure.'),JSON_ARRAY(),JSON_OBJECT()),
      (v_l_1,v_c_maya,7,'character','I can help if you need it.','اگر لازم داشتی می‌توانم کمکت کنم.',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
      (v_l_1,v_c_arman,8,'learner','Thank you.','ممنون.',1,'Thank you.',JSON_ARRAY('Thank you.','Thanks.'),JSON_ARRAY(),JSON_OBJECT()),
      (v_l_2,v_c_maya,1,'character','This form asks about languages.','این فرم درباره زبان‌ها می‌پرسد.',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
      (v_l_2,v_c_arman,2,'learner','Okay.','باشه.',1,'Okay.',JSON_ARRAY('Okay.','All right.'),JSON_ARRAY(),JSON_OBJECT()),
      (v_l_2,v_c_maya,3,'character','Do you speak English?','انگلیسی صحبت می‌کنی؟',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
      (v_l_2,v_c_arman,4,'learner','Yes, I speak a little English.','بله، کمی انگلیسی صحبت می‌کنم.',1,'Yes, I speak a little English.',JSON_ARRAY('Yes, I speak a little English.','I speak a little English.'),JSON_ARRAY(),JSON_OBJECT()),
      (v_l_2,v_c_maya,5,'character','And Persian?','و فارسی؟',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
      (v_l_2,v_c_arman,6,'learner','Yes, I speak Persian.','بله، فارسی صحبت می‌کنم.',1,'Yes, I speak Persian.',JSON_ARRAY('Yes, I speak Persian.','I speak Persian.'),JSON_ARRAY(),JSON_OBJECT()),
      (v_l_2,v_c_maya,7,'character','Perfect. That is enough.','عالیه. همین کافی است.',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
      (v_l_2,v_c_arman,8,'learner','Great.','عالیه.',1,'Great.',JSON_ARRAY('Great.','Good.'),JSON_ARRAY(),JSON_OBJECT()),
      (v_l_3,v_c_daniel,1,'character','Hi, I’m Daniel.','سلام، من دنیل هستم.',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
      (v_l_3,v_c_arman,2,'learner','Hi, I’m Arman.','سلام، من آرمان هستم.',1,'Hi, I’m Arman.',JSON_ARRAY('Hi, I’m Arman.','Hello, I’m Arman.'),JSON_ARRAY(),JSON_OBJECT()),
      (v_l_3,v_c_daniel,3,'character','Where are you from?','اهل کجا هستی؟',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
      (v_l_3,v_c_arman,4,'learner','I’m from Iran.','من اهل ایران هستم.',1,'I’m from Iran.',JSON_ARRAY('I’m from Iran.','I am from Iran.'),JSON_ARRAY(),JSON_OBJECT()),
      (v_l_3,v_c_daniel,5,'character','And where do you live now?','و الان کجا زندگی می‌کنی؟',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
      (v_l_3,v_c_arman,6,'learner','I live in London.','من در لندن زندگی می‌کنم.',1,'I live in London.',JSON_ARRAY('I live in London.','I live in London now.'),JSON_ARRAY(),JSON_OBJECT()),
      (v_l_3,v_c_daniel,7,'character','What languages do you speak?','چه زبان‌هایی صحبت می‌کنی؟',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
      (v_l_3,v_c_arman,8,'learner','I speak Persian and a little English.','فارسی و کمی انگلیسی صحبت می‌کنم.',1,'I speak Persian and a little English.',JSON_ARRAY('I speak Persian and a little English.','Persian and a little English.'),JSON_ARRAY(),JSON_OBJECT()),
      (v_l_4,v_c_nora,1,'character','Hello. I’m Nora. I help new students.','سلام. من نورا هستم. به دانشجوهای جدید کمک می‌کنم.',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
      (v_l_4,v_c_arman,2,'learner','Hi, I’m Arman.','سلام، من آرمان هستم.',1,'Hi, I’m Arman.',JSON_ARRAY('Hi, I’m Arman.','Hello, I’m Arman.'),JSON_ARRAY(),JSON_OBJECT()),
      (v_l_4,v_c_nora,3,'character','Where are you from, Arman?','آرمان، اهل کجا هستی؟',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
      (v_l_4,v_c_arman,4,'learner','I’m from Iran.','من اهل ایران هستم.',1,'I’m from Iran.',JSON_ARRAY('I’m from Iran.','I am from Iran.'),JSON_ARRAY(),JSON_OBJECT()),
      (v_l_4,v_c_nora,5,'character','What languages do you speak?','چه زبان‌هایی صحبت می‌کنی؟',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
      (v_l_4,v_c_arman,6,'learner','I speak Persian and a little English.','فارسی و کمی انگلیسی صحبت می‌کنم.',1,'I speak Persian and a little English.',JSON_ARRAY('I speak Persian and a little English.','I speak Persian. I speak a little English.'),JSON_ARRAY(),JSON_OBJECT()),
      (v_l_4,v_c_nora,7,'character','Good. Welcome to the class.','خوبه. به کلاس خوش آمدی.',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
      (v_l_4,v_c_arman,8,'learner','Thank you.','ممنون.',1,'Thank you.',JSON_ARRAY('Thank you.','Thanks.'),JSON_ARRAY(),JSON_OBJECT());
    INSERT INTO activities (lesson_id,activity_type,sort_order,prompt,instruction,difficulty,config,metadata) VALUES
      (v_l_1,'listen',1,'Do you speak English?','اول فقط گوش کن.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_1,'new_word',2,'Do you speak ...?','عبارت پرسیدن زبان را یک تکه یاد بگیر.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:do-you-speak","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_1,'new_word',3,'I speak ...','الگوی پاسخ را یاد بگیر.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:i-speak","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_1,'pronunciation',4,'speak','به شروع کلمه گوش کن؛ قبل از s واکه اضافه نکن.',1,CAST('{"mode":"sound_notice","target":"initial_sp_cluster","input":"speech","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_1,'speak',5,'Do you speak Persian?','تکرار کن.',1,CAST('{"mode":"repeat_visible","accepted":["Do you speak Persian?","Do you speak English?"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_1,'meaning_choice',6,'I ___ Persian.','گزینه درست را انتخاب کن.',1,CAST('{"mode":"sentence_blank","options":["speak","live","from"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_1,'reading_comprehension',7,'Arman: I speak Persian. I speak a little English.','متن را بخوان.',1,CAST('{"mode":"reading_input","text":"Arman: I speak Persian. I speak a little English.","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_1,'reading_comprehension',8,'Which language does Arman speak well?','اطلاعات را پیدا کن.',1,CAST('{"mode":"reading_inference","options":["Persian","London","Iran"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_1,'word_order',9,'Persian speak I','کلمات را مرتب کن.',1,CAST('{"mode":"word_order","tokens":["I","speak","Persian"],"input":"tap_tokens","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_1,'speak',10,'بگو فارسی صحبت می‌کنی.','از حافظه بگو.',1,CAST('{"mode":"recall_hidden","cue_fa":"بگو فارسی صحبت می‌کنی.","accepted":["I speak Persian.","Yes, I speak Persian."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_1,'listen',11,'I speak a little English.','به شکل طبیعی جمله گوش کن.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_1,'speak',12,'یک نفر می‌پرسد آیا انگلیسی صحبت می‌کنی. پاسخ طبیعی بده.','در موقعیت تازه پاسخ بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"یک نفر می‌پرسد آیا انگلیسی صحبت می‌کنی. پاسخ طبیعی بده.","accepted_intents":["I speak a little English.","Yes, a little."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_2,'listen',1,'Do you speak English?','گوش کن و ساخت سوال را تشخیص بده.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_2,'new_word',2,'Do + you + speak','الگوی سوال را ببین.',1,CAST('{"mode":"micro_grammar","pattern":"Do + you + base verb","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_2,'meaning_choice',3,'Do you ___ English?','فعل پایه را انتخاب کن.',1,CAST('{"mode":"sentence_blank","options":["speak","speaks","speaking"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_2,'speak',4,'Do you speak English?','سوال را طبیعی بگو.',1,CAST('{"mode":"repeat_visible","accepted":["Do you speak English?","Do you speak Persian?"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_2,'new_word',5,'English','معنی در این بافت را یاد بگیر.',1,CAST('{"mode":"word_teach","unit_key":"en:a1:english:language","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_2,'new_word',6,'Persian','معنی در این بافت را یاد بگیر.',1,CAST('{"mode":"word_teach","unit_key":"en:a1:persian:language","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_2,'reading_comprehension',7,'Form: Languages — English / Persian','فرم کوتاه را بخوان.',1,CAST('{"mode":"reading_input","text":"Form: Languages — English / Persian","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_2,'reading_comprehension',8,'What information does the form ask for?','معنی کلی را انتخاب کن.',1,CAST('{"mode":"reading_inference","options":["Languages","Address","Time"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_2,'word_order',9,'you English speak Do','کلمات را مرتب کن.',1,CAST('{"mode":"word_order","tokens":["Do","you","speak","English"],"input":"tap_tokens","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_2,'speak',10,'از یک نفر بپرس فارسی صحبت می‌کند یا نه.','از حافظه سوال بساز.',1,CAST('{"mode":"recall_hidden","cue_fa":"از یک نفر بپرس فارسی صحبت می‌کند یا نه.","accepted":["Do you speak Persian?","Do you speak Persian"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_2,'pronunciation',11,'speak','/sp/ را بدون صدای اضافه شروع کن.',1,CAST('{"mode":"sound_notice","target":"initial_sp_cluster","input":"speech","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_2,'speak',12,'در یک فرم شفاهی درباره زبان طرف مقابل سوال کن.','سوال را در موقعیت تازه بساز.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"در یک فرم شفاهی درباره زبان طرف مقابل سوال کن.","accepted_intents":["Do you speak English?","Do you speak Persian?"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_3,'listen',1,'Where are you from?','گوش کن و مبدأ را تشخیص بده.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_3,'new_word',2,'I’m from ...','مرور الگوی مبدأ.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:im-from","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_3,'speak',3,'بگو اهل ایران هستی.','از حافظه بگو.',1,CAST('{"mode":"recall_hidden","cue_fa":"بگو اهل ایران هستی.","accepted":["I’m from Iran.","I am from Iran."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_3,'listen',4,'Where do you live now?','گوش کن و سوال محل زندگی را تشخیص بده.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_3,'speak',5,'بگو در لندن زندگی می‌کنی.','از حافظه بگو.',1,CAST('{"mode":"recall_hidden","cue_fa":"بگو در لندن زندگی می‌کنی.","accepted":["I live in London.","I live in London now."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_3,'pronunciation',6,'I’m from Iran.','عبارت را پیوسته و بدون فشار روی from تکرار کن.',1,CAST('{"mode":"sound_notice","target":"unstressed_from","input":"speech","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_3,'speak',7,'خودت را با مبدأ، محل زندگی و زبان‌ها معرفی کن.','اطلاعات را مستقل ترکیب کن.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"دنیل را تازه دیده‌ای. مبدأ، محل زندگی و زبان‌هایت را کوتاه بگو.","accepted_intents":["I’m from Iran. I live in London. I speak Persian and a little English.","I am from Iran. I live in London. I speak Persian and English."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_3,'pronunciation',8,'Where do you live?','این بار خودت سوال را با /w/ آغازین بگو.',1,CAST('{"mode":"sound_notice","target":"w_vs_v","input":"speech","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_3,'reading_comprehension',9,'Daniel: Arman is from Iran. He lives in London. He speaks Persian and English.','متن کوتاه را بخوان.',1,CAST('{"mode":"reading_input","text":"Daniel: Arman is from Iran. He lives in London. He speaks Persian and English.","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_3,'reading_comprehension',10,'Where does Arman live?','اطلاعات مشخص را پیدا کن.',1,CAST('{"mode":"reading_inference","options":["London","Iran","English"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_3,'word_order',11,'English little a speak I','کلمات را مرتب کن.',1,CAST('{"mode":"word_order","tokens":["I","speak","a","little","English"],"input":"tap_tokens","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_3,'speak',12,'از دنیل بپرس کجا زندگی می‌کند.','سوال مرور را خودت بساز.',1,CAST('{"mode":"recall_hidden","cue_fa":"از دنیل بپرس کجا زندگی می‌کند.","accepted":["Where do you live?","Where do you live now?"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_4,'listen',1,'What languages do you speak?','گوش کن و هدف سوال را تشخیص بده.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_4,'new_word',2,'I speak Persian and a little English.','ترکیب دو زبان را ببین.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:i-speak","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_4,'reading_comprehension',3,'New student card: Name: Leila | From: Turkey | Lives in: London | Languages: Turkish, English','کارت فرد جدید را بخوان.',1,CAST('{"mode":"reading_input","text":"New student card: Name: Leila | From: Turkey | Lives in: London | Languages: Turkish, English","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_4,'reading_comprehension',4,'Where does Leila live?','اطلاعات تازه را پیدا کن.',1,CAST('{"mode":"reading_inference","options":["London","Turkey","English"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_4,'meaning_choice',5,'I ___ Persian and English.','گزینه درست را انتخاب کن.',1,CAST('{"mode":"sentence_blank","options":["speak","live","from"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_4,'speak',6,'بگو فارسی و کمی انگلیسی صحبت می‌کنی.','بدون دیدن جواب بگو.',1,CAST('{"mode":"recall_hidden","cue_fa":"بگو فارسی و کمی انگلیسی صحبت می‌کنی.","accepted":["I speak Persian and a little English.","I speak Persian and English."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_4,'pronunciation',7,'speak Persian','شروع /sp/ را تمیز نگه دار.',1,CAST('{"mode":"sound_notice","target":"initial_sp_cluster","input":"speech","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_4,'word_order',8,'Persian English and speak I','کلمات را مرتب کن.',1,CAST('{"mode":"word_order","tokens":["I","speak","Persian","and","English"],"input":"tap_tokens","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_4,'listen',9,'I’m Leila. I’m from Turkey. I live in London.','به اطلاعات تازه گوش کن.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT()),
      (v_l_4,'speak',10,'با کارت یک فرد تازه، معرفی کوتاه بساز.','این بار اطلاعات مال تو نیست؛ مستقل ترکیب کن.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"نقش لیلا را بازی کن: اهل ترکیه است، در لندن زندگی می‌کند و ترکی و انگلیسی صحبت می‌کند.","accepted_intents":["I’m Leila. I’m from Turkey. I live in London. I speak Turkish and English.","My name is Leila. I’m from Turkey. I live in London. I speak Turkish and English."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_4,'meaning_choice',11,'Do you ___ English?','ساخت سوال را دوباره بازیابی کن.',1,CAST('{"mode":"sentence_blank","options":["speak","speaks","live"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT()),
      (v_l_4,'speak',12,'از یک دانشجوی تازه درباره زبانش بپرس.','سوال را بدون الگوی روی صفحه بساز.',1,CAST('{"mode":"recall_hidden","cue_fa":"از یک دانشجوی تازه درباره زبانش بپرس.","accepted":["Do you speak English?","What languages do you speak?"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT());
    INSERT INTO lesson_learning_units (lesson_id,learning_unit_id,learning_role,is_target,exposure_count,evidence_activity_ids,metadata) VALUES
      (v_l_1,v_u_1,'new',1,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_1,v_u_2,'new',1,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_1,v_u_3,'new',1,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_1,v_u_4,'new',1,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_1,v_u_5,'new',0,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_1,v_u_6,'new',0,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_1,v_u_7,'new',0,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_1,v_u_8,'new',0,1,JSON_ARRAY(),JSON_OBJECT('series',4)),
      (v_l_2,v_u_1,'new',1,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_2,v_u_2,'new',1,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_2,v_u_3,'new',1,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_2,v_u_4,'new',1,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_2,v_u_5,'new',0,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_2,v_u_6,'new',0,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_2,v_u_7,'new',0,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_2,v_u_8,'new',0,1,JSON_ARRAY(),JSON_OBJECT('series',4)),
      (v_l_3,v_u_1,'review',1,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_3,v_u_2,'review',1,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_3,v_u_3,'review',1,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_3,v_u_4,'review',1,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_3,v_u_5,'review',0,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_3,v_u_6,'review',0,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_3,v_u_7,'review',0,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_3,v_u_8,'review',0,1,JSON_ARRAY(),JSON_OBJECT('series',4)),
      (v_l_4,v_u_1,'mastery',1,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_4,v_u_2,'mastery',1,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_4,v_u_3,'mastery',1,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_4,v_u_4,'mastery',1,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_4,v_u_5,'mastery',0,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_4,v_u_6,'mastery',0,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_4,v_u_7,'mastery',0,1,JSON_ARRAY(),JSON_OBJECT('series',4)),(v_l_4,v_u_8,'mastery',0,1,JSON_ARRAY(),JSON_OBJECT('series',4));
    SELECT id INTO v_ev1 FROM activities WHERE lesson_id=v_l_3 AND JSON_UNQUOTE(JSON_EXTRACT(config,'$.mode'))='scenario_transfer' ORDER BY sort_order LIMIT 1;
    SELECT id INTO v_ev2 FROM activities WHERE lesson_id=v_l_3 AND activity_type='pronunciation' ORDER BY sort_order LIMIT 1;
    SELECT id INTO v_ev3 FROM activities WHERE lesson_id=v_l_4 AND JSON_UNQUOTE(JSON_EXTRACT(config,'$.mode'))='scenario_transfer' ORDER BY sort_order LIMIT 1;
    UPDATE review_obligations SET status='fulfilled',fulfilled_chapter_id=v_chapter,evidence_activity_id=v_ev1,metadata=JSON_OBJECT('evidence','retrieval_transfer','series',4) WHERE course_id=v_course AND due_series=4 AND status='due' AND learning_unit_id NOT IN (SELECT id FROM learning_units WHERE course_id=v_course AND unit_type='pronunciation');
    UPDATE review_obligations SET status='fulfilled',fulfilled_chapter_id=v_chapter,evidence_activity_id=COALESCE(v_ev2,v_ev3),metadata=JSON_OBJECT('evidence','pronunciation_or_mastery','series',4) WHERE course_id=v_course AND due_series=4 AND status='due' AND learning_unit_id IN (SELECT id FROM learning_units WHERE course_id=v_course AND unit_type='pronunciation');
    INSERT INTO review_obligations (course_id,learning_unit_id,origin_chapter_id,due_series,spacing_offset,status,metadata)
      SELECT v_course,x.unit_id,v_chapter,4+x.off,x.off,'due',JSON_OBJECT('sourceSeries',4) FROM (
        SELECT v_u_1 unit_id,1 off UNION ALL SELECT v_u_1 unit_id,2 off UNION ALL SELECT v_u_1 unit_id,4 off UNION ALL SELECT v_u_1 unit_id,8 off UNION ALL SELECT v_u_1 unit_id,16 off UNION ALL
        SELECT v_u_2 unit_id,1 off UNION ALL SELECT v_u_2 unit_id,2 off UNION ALL SELECT v_u_2 unit_id,4 off UNION ALL SELECT v_u_2 unit_id,8 off UNION ALL SELECT v_u_2 unit_id,16 off UNION ALL
        SELECT v_u_3 unit_id,1 off UNION ALL SELECT v_u_3 unit_id,2 off UNION ALL SELECT v_u_3 unit_id,4 off UNION ALL SELECT v_u_3 unit_id,8 off UNION ALL SELECT v_u_3 unit_id,16 off UNION ALL
        SELECT v_u_4 unit_id,1 off UNION ALL SELECT v_u_4 unit_id,2 off UNION ALL SELECT v_u_4 unit_id,4 off UNION ALL SELECT v_u_4 unit_id,8 off UNION ALL SELECT v_u_4 unit_id,16 off UNION ALL
        SELECT v_u_5 unit_id,1 off UNION ALL SELECT v_u_5 unit_id,2 off UNION ALL SELECT v_u_5 unit_id,4 off UNION ALL SELECT v_u_5 unit_id,8 off UNION ALL SELECT v_u_5 unit_id,16 off UNION ALL
        SELECT v_u_6 unit_id,1 off UNION ALL SELECT v_u_6 unit_id,2 off UNION ALL SELECT v_u_6 unit_id,4 off UNION ALL SELECT v_u_6 unit_id,8 off UNION ALL SELECT v_u_6 unit_id,16 off UNION ALL
        SELECT v_u_7 unit_id,1 off UNION ALL SELECT v_u_7 unit_id,2 off UNION ALL SELECT v_u_7 unit_id,4 off UNION ALL SELECT v_u_7 unit_id,8 off UNION ALL SELECT v_u_7 unit_id,16 off UNION ALL
        SELECT v_u_8 unit_id,1 off UNION ALL SELECT v_u_8 unit_id,2 off UNION ALL SELECT v_u_8 unit_id,4 off UNION ALL SELECT v_u_8 unit_id,8 off UNION ALL SELECT v_u_8 unit_id,16 off
      ) x ON DUPLICATE KEY UPDATE due_series=VALUES(due_series);
    UPDATE curriculum_outcomes SET evidence=JSON_ARRAY_APPEND(COALESCE(evidence,JSON_ARRAY()),'$','EN-CH-0004'),status='in_progress' WHERE course_id=v_course AND cefr_level='A1' AND outcome_key IN ('can_do:state_language','grammar:present-simple-do-you','lexical:identity-language','pron:initial-consonant-cluster','listening:key-language-info');
  ELSEIF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='chapter identity not unique'; END IF;
  COMMIT;
END$$
DELIMITER ;
CALL nova_en_v3_s004();
DROP PROCEDURE IF EXISTS nova_en_v3_s004;
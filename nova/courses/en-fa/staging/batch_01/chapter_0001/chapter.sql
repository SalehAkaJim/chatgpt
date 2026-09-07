SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS nova_en_v3_s001;
DELIMITER $$
CREATE PROCEDURE nova_en_v3_s001()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_arman BIGINT UNSIGNED;
  DECLARE v_maya BIGINT UNSIGNED;
  DECLARE v_l_1 BIGINT UNSIGNED;
  DECLARE v_l_2 BIGINT UNSIGNED;
  DECLARE v_l_3 BIGINT UNSIGNED;
  DECLARE v_l_4 BIGINT UNSIGNED;
  DECLARE v_t BIGINT UNSIGNED;
  DECLARE v_a BIGINT UNSIGNED;
  DECLARE v_u_hello BIGINT UNSIGNED;
  DECLARE v_u_goodbye BIGINT UNSIGNED;
  DECLARE v_u_name BIGINT UNSIGNED;
  DECLARE v_u_myname BIGINT UNSIGNED;
  DECLARE v_u_nicemeet BIGINT UNSIGNED;
  DECLARE v_u_howare BIGINT UNSIGNED;
  DECLARE v_u_pron BIGINT UNSIGNED;
  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;

  SELECT MIN(id) INTO v_course FROM courses WHERE learning_language='en' AND base_language='fa';
  IF v_course IS NULL THEN
    INSERT INTO courses (learning_language,base_language,title,title_translation,description,description_translation,status,metadata)
    VALUES ('en','fa','English for Persian Speakers','انگلیسی برای فارسی‌زبان‌ها','Outcome-driven English course from absolute zero.','دوره انگلیسی نتیجه‌محور از صفر مطلق.','active',JSON_OBJECT('contractVersion','3.0.0','freshNativeV3',TRUE));
    SET v_course=LAST_INSERT_ID();
  END IF;

  SELECT MIN(id) INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='A1';
  IF v_level IS NULL THEN
    INSERT INTO levels (course_id,cefr_level,title,title_translation,description,description_translation,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES (v_course,'A1','A1 Foundations','پایه A1','Absolute-beginner survival English.','انگلیسی پایه برای نیازهای فوری و تعامل‌های ساده.',1,2,1,'active',JSON_OBJECT('completionMode','dynamic_outcome_mastery'));
    SET v_level=LAST_INSERT_ID();
  END IF;

  SELECT MIN(id) INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1;
  IF v_module IS NULL THEN
    INSERT INTO modules (level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES (v_level,'First Connections','اولین ارتباط‌ها','Greetings, identity and first interactions.','سلام، معرفی و اولین تعامل‌های روزمره.','👋',1,2,1,'active',JSON_OBJECT('dynamic',TRUE));
    SET v_module=LAST_INSERT_ID();
  END IF;

  SELECT MIN(id) INTO v_arman FROM characters WHERE course_id=v_course AND name='Arman';
  IF v_arman IS NULL THEN
    INSERT INTO characters (course_id,name,gender,voice_key,profile,metadata) VALUES (v_course,'Arman','male','arman',JSON_OBJECT('role','learner','origin','Iran'),JSON_OBJECT('course','en-fa'));
    SET v_arman=LAST_INSERT_ID();
  END IF;
  SELECT MIN(id) INTO v_maya FROM characters WHERE course_id=v_course AND name='Maya';
  IF v_maya IS NULL THEN
    INSERT INTO characters (course_id,name,gender,voice_key,profile,metadata) VALUES (v_course,'Maya','female','maya',JSON_OBJECT('role','guide','city','London'),JSON_OBJECT('course','en-fa'));
    SET v_maya=LAST_INSERT_ID();
  END IF;

  SELECT MIN(id) INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters (module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES (v_module,'Hello, I’m Arman','سلام، من آرمانم','Arman meets Maya after arriving in London and learns to greet, say his name and close a first conversation.','آرمان پس از رسیدن به لندن با مایا آشنا می‌شود و سلام کردن، گفتن نام و پایان دادن به یک گفت‌وگوی اول را یاد می‌گیرد.',4,1,1,1,'validated',JSON_OBJECT('series',1,'contractVersion','3.0.0','level','A1','storyline','london_new_start'));
    SET v_chapter=LAST_INSERT_ID();

    INSERT INTO learning_units (course_id,unit_type,unit_key,display_form,translation,description_fa,cefr_level,difficulty,data,metadata) VALUES
    (v_course,'word_sense','en:a1:hello:greeting','hello','سلام','سلام رایج و خنثی برای شروع تعامل','A1',1,JSON_OBJECT('pos','interjection','sense','greeting'),JSON_OBJECT('series',1)),
    (v_course,'word_sense','en:a1:goodbye:parting','goodbye','خداحافظ','عبارت خنثی برای پایان تعامل','A1',1,JSON_OBJECT('pos','interjection','sense','parting'),JSON_OBJECT('series',1)),
    (v_course,'word_sense','en:a1:name:person-name','name','نام','نام یک شخص در معرفی','A1',1,JSON_OBJECT('pos','noun','sense','personal_name'),JSON_OBJECT('series',1)),
    (v_course,'chunk','en:a1:my-name-is','My name is ...','اسم من ... است','الگوی پایه برای گفتن نام','A1',1,JSON_OBJECT('slots',JSON_ARRAY('name')) ,JSON_OBJECT('series',1)),
    (v_course,'chunk','en:a1:nice-to-meet-you','Nice to meet you.','از آشنایی با شما خوشحالم.','عبارت ثابت و طبیعی پس از معرفی','A1',1,JSON_OBJECT('register','neutral'),JSON_OBJECT('series',1)),
    (v_course,'chunk','en:a1:how-are-you','How are you?','حالت چطور است؟','پرسش رایج درباره حال طرف مقابل','A1',1,JSON_OBJECT('function','greeting_followup'),JSON_OBJECT('series',1)),
    (v_course,'pronunciation','en:a1:pron:hello-stress','hello — stress on second syllable',NULL,'تاکید واژه hello روی هجای دوم است.','A1',1,JSON_OBJECT('target','basic_word_stress','word','hello'),JSON_OBJECT('series',1));
    SELECT id INTO v_u_hello FROM learning_units WHERE course_id=v_course AND unit_key='en:a1:hello:greeting';
    SELECT id INTO v_u_goodbye FROM learning_units WHERE course_id=v_course AND unit_key='en:a1:goodbye:parting';
    SELECT id INTO v_u_name FROM learning_units WHERE course_id=v_course AND unit_key='en:a1:name:person-name';
    SELECT id INTO v_u_myname FROM learning_units WHERE course_id=v_course AND unit_key='en:a1:my-name-is';
    SELECT id INTO v_u_nicemeet FROM learning_units WHERE course_id=v_course AND unit_key='en:a1:nice-to-meet-you';
    SELECT id INTO v_u_howare FROM learning_units WHERE course_id=v_course AND unit_key='en:a1:how-are-you';
    SELECT id INTO v_u_pron FROM learning_units WHERE course_id=v_course AND unit_key='en:a1:pron:hello-stress';

    INSERT INTO curriculum_outcomes (course_id,cefr_level,outcome_key,outcome_type,title,description_fa,required,status,evidence,metadata) VALUES
    (v_course,'A1','can_do:greet_part','can_do','Greet and part','زبان‌آموز بتواند سلام و خداحافظی پایه را در موقعیت تازه به کار ببرد.',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('seriesStarted',1)),
    (v_course,'A1','can_do:introduce_name','can_do','Say your name','زبان‌آموز بتواند نام خود را با یک الگوی طبیعی بگوید.',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('seriesStarted',1)),
    (v_course,'A1','reading:short_identity','reading','Read a short identity message','زبان‌آموز بتواند نام را از یک پیام بسیار کوتاه انگلیسی پیدا کند.',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('seriesStarted',1)),
    (v_course,'A1','pron:basic_word_stress','pronunciation','Notice basic word stress','زبان‌آموز محل تاکید یک واژه بسیار آشنا را تشخیص دهد و تقلید کند.',1,'in_progress',JSON_ARRAY(),JSON_OBJECT('seriesStarted',1));

    INSERT INTO lessons (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
    VALUES (v_chapter,v_maya,v_arman,'A First Hello','اولین سلام','Maya greets Arman at the station.','مایا در ایستگاه به آرمان سلام می‌کند.','story','london_new_start',1,1,420,1,'validated',JSON_OBJECT('pedagogicalRole','exposure')); SET v_l_1=LAST_INSERT_ID();
    INSERT INTO turns (lesson_id,character_id,sort_order,role,text,translation,difficulty,speech_target,speech_alternatives,tokens,metadata) VALUES
    (v_l_1,v_maya,1,'character','Hello!','سلام!',1,NULL,NULL,JSON_ARRAY(JSON_OBJECT('surface','Hello','lemma','hello','pos','interjection')),JSON_OBJECT('unit','en:a1:hello:greeting')),
    (v_l_1,v_arman,2,'learner','Hello!','سلام!',1,'Hello!',JSON_ARRAY('Hello!','Hi!'),JSON_ARRAY(JSON_OBJECT('surface','Hello','lemma','hello','pos','interjection')),JSON_OBJECT('unit','en:a1:hello:greeting')),
    (v_l_1,v_maya,3,'character','I’m Maya.','من مایا هستم.',1,NULL,NULL,JSON_ARRAY(JSON_OBJECT('surface','I’m','lemma','be','pos','verb'),JSON_OBJECT('surface','Maya','lemma','maya','pos','proper_noun')),JSON_OBJECT()),
    (v_l_1,v_arman,4,'learner','I’m Arman.','من آرمان هستم.',1,'I’m Arman.',JSON_ARRAY('I’m Arman.','My name is Arman.'),JSON_ARRAY(JSON_OBJECT('surface','I’m','lemma','be','pos','verb'),JSON_OBJECT('surface','Arman','lemma','arman','pos','proper_noun')),JSON_OBJECT()),
    (v_l_1,v_maya,5,'character','Nice to meet you.','از آشنایی با تو خوشحالم.',1,NULL,NULL,JSON_ARRAY(JSON_OBJECT('surface','Nice','lemma','nice','pos','adjective'),JSON_OBJECT('surface','to','lemma','to','pos','infinitive_marker'),JSON_OBJECT('surface','meet','lemma','meet','pos','verb'),JSON_OBJECT('surface','you','lemma','you','pos','pronoun')),JSON_OBJECT('unit','en:a1:nice-to-meet-you')),
    (v_l_1,v_arman,6,'learner','Nice to meet you too.','من هم از آشنایی با تو خوشحالم.',1,'Nice to meet you too.',JSON_ARRAY('Nice to meet you too.','Nice to meet you.'),JSON_ARRAY(JSON_OBJECT('surface','Nice','lemma','nice','pos','adjective'),JSON_OBJECT('surface','to','lemma','to','pos','infinitive_marker'),JSON_OBJECT('surface','meet','lemma','meet','pos','verb'),JSON_OBJECT('surface','you','lemma','you','pos','pronoun'),JSON_OBJECT('surface','too','lemma','too','pos','adverb')),JSON_OBJECT()),
    (v_l_1,v_maya,7,'character','Welcome to London.','به لندن خوش آمدی.',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
    (v_l_1,v_arman,8,'learner','Thank you.','ممنون.',1,'Thank you.',JSON_ARRAY('Thank you.','Thanks.'),JSON_ARRAY(),JSON_OBJECT());
    INSERT INTO activities (lesson_id,activity_type,sort_order,turn_id,prompt,instruction,difficulty,config,metadata) VALUES
    (v_l_1,'listen',1,NULL,'Hello!','اول فقط گوش کن.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT('phase','exposure')),
    (v_l_1,'chunk',2,NULL,'Hello','معنی، موقعیت استفاده و صدا را ببین.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:hello:greeting","translation_fa":"سلام","input":"none","scored":false}' AS JSON),JSON_OBJECT('phase','guided')),
    (v_l_1,'pronunciation',3,NULL,'hello','به تاکید هجای دوم دقت کن و تقلید کن.',1,CAST('{"mode":"sound_notice","target":"basic_word_stress","stress_syllable":2,"input":"speech","scored":false}' AS JSON),JSON_OBJECT('phase','pronunciation')),
    (v_l_1,'speak',4,NULL,'Hello!','متن را با صدای بلند بگو.',1,CAST('{"mode":"repeat_visible","accepted":["Hello!","Hi!"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','guided_production')),
    (v_l_1,'listen',5,NULL,'Nice to meet you.','گوش کن و بعد متن را ببین.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT('phase','exposure')),
    (v_l_1,'chunk',6,NULL,'Nice to meet you.','این عبارت را یک تکه یاد بگیر؛ آن را کلمه‌به‌کلمه ترجمه نکن.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:nice-to-meet-you","translation_fa":"از آشنایی با شما خوشحالم.","input":"none","scored":false}' AS JSON),JSON_OBJECT('phase','guided')),
    (v_l_1,'speak',7,NULL,'در اولین دیدار سلام کن.','بدون دیدن جواب پاسخ بده.',1,CAST('{"mode":"recall_hidden","cue_fa":"در اولین دیدار سلام کن.","accepted":["Hello!","Hi!"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','recall')),
    (v_l_1,'meaning_choice',8,NULL,'___!','گزینه درست برای سلام را انتخاب کن.',1,CAST('{"mode":"sentence_blank","options":["Goodbye","Hello","Thanks"],"answer_index":1,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('phase','controlled')),
    (v_l_1,'reading',9,NULL,'Maya: Hello! I’m Maya.','متن کوتاه را بخوان و نام را پیدا کن.',1,CAST('{"mode":"reading_input","text":"Maya: Hello! I’m Maya.","input":"none","scored":false}' AS JSON),JSON_OBJECT('phase','reading')),
    (v_l_1,'reading_comprehension',10,NULL,'What is her name?','نام را از متن انتخاب کن.',1,CAST('{"mode":"reading_inference","options":["Maya","Arman","London"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('phase','reading')),
    (v_l_1,'speak',11,NULL,'یک نفر جدید به تو نزدیک می‌شود. شروع گفت‌وگو را طبیعی انجام بده.','پاسخ را با صدا بگو.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"یک نفر جدید به تو نزدیک می‌شود. شروع گفت‌وگو را طبیعی انجام بده.","accepted_intents":["Hello!","Hi!"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','transfer')),
    (v_l_1,'speak',12,NULL,'مایا می‌گوید Nice to meet you. پاسخ مناسب بده.','پاسخ را با صدا بگو.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"مایا می‌گوید Nice to meet you. پاسخ مناسب بده.","accepted_intents":["Nice to meet you too.","Nice to meet you."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','transfer'));

    INSERT INTO lessons (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
    VALUES (v_chapter,v_maya,v_arman,'My Name Is Arman','اسم من آرمان است','Arman practices saying and recognizing names.','آرمان گفتن و تشخیص نام را تمرین می‌کند.','story','london_new_start',2,1,440,2,'validated',JSON_OBJECT('pedagogicalRole','explicit_form')); SET v_l_2=LAST_INSERT_ID();
    INSERT INTO turns (lesson_id,character_id,sort_order,role,text,translation,difficulty,speech_target,speech_alternatives,tokens,metadata) VALUES
    (v_l_2,v_maya,1,'character','What’s your name?','اسمت چیست؟',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
    (v_l_2,v_arman,2,'learner','My name is Arman.','اسم من آرمان است.',1,'My name is Arman.',JSON_ARRAY('My name is Arman.','I’m Arman.'),JSON_ARRAY(),JSON_OBJECT('unit','en:a1:my-name-is')),
    (v_l_2,v_maya,3,'character','Arman. Nice to meet you.','آرمان. از آشنایی با تو خوشحالم.',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
    (v_l_2,v_arman,4,'learner','Nice to meet you too.','من هم از آشنایی با تو خوشحالم.',1,'Nice to meet you too.',JSON_ARRAY('Nice to meet you too.','Nice to meet you.'),JSON_ARRAY(),JSON_OBJECT()),
    (v_l_2,v_maya,5,'character','Is your name Arman?','اسمت آرمان است؟',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
    (v_l_2,v_arman,6,'learner','Yes, I’m Arman.','بله، من آرمان هستم.',1,'Yes, I’m Arman.',JSON_ARRAY('Yes, I’m Arman.','Yes. My name is Arman.'),JSON_ARRAY(),JSON_OBJECT()),
    (v_l_2,v_maya,7,'character','Great.','عالی.',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
    (v_l_2,v_arman,8,'learner','Thank you.','ممنون.',1,'Thank you.',JSON_ARRAY('Thank you.','Thanks.'),JSON_ARRAY(),JSON_OBJECT());
    INSERT INTO activities (lesson_id,activity_type,sort_order,turn_id,prompt,instruction,difficulty,config,metadata) VALUES
    (v_l_2,'listen',1,NULL,'What’s your name?','اول فقط گوش کن.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT('phase','exposure')),
    (v_l_2,'chunk',2,NULL,'My name is ...','این الگو را برای گفتن نام یاد بگیر.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:my-name-is","translation_fa":"اسم من ... است","input":"none","scored":false}' AS JSON),JSON_OBJECT('phase','guided')),
    (v_l_2,'reading_comprehension',3,NULL,'My name is Arman.','نکته را بخوان: my یعنی «مال من» و اینجا My name یعنی «اسم من».',1,CAST('{"mode":"micro_grammar","explanation_fa":"در عبارت My name is Arman، بخش My name یعنی اسم من و is نام را به معرفی وصل می‌کند. فعلا کل الگو را یک تکه استفاده کن.","input":"none","scored":false}' AS JSON),JSON_OBJECT('phase','explicit')),
    (v_l_2,'speak',4,NULL,'My name is Arman.','با صدای بلند تکرار کن.',1,CAST('{"mode":"repeat_visible","accepted":["My name is Arman.","I’m Arman."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','guided_production')),
    (v_l_2,'meaning_choice',5,NULL,'My ___ is Arman.','گزینه درست را انتخاب کن.',1,CAST('{"mode":"sentence_blank","options":["hello","name","goodbye"],"answer_index":1,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('phase','controlled')),
    (v_l_2,'word_order',6,NULL,'My name is Arman','واژه‌ها را مرتب کن.',1,CAST('{"mode":"tap_tokens","tokens":["Arman","name","My","is"],"answer":["My","name","is","Arman"],"input":"tap_tokens","scored":true}' AS JSON),JSON_OBJECT('phase','controlled')),
    (v_l_2,'speak',7,NULL,'بگو اسمت آرمان است.','بدون دیدن پاسخ بگو.',1,CAST('{"mode":"recall_hidden","cue_fa":"بگو اسمت آرمان است.","accepted":["My name is Arman.","I’m Arman."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','recall')),
    (v_l_2,'reading',8,NULL,'Hello. My name is Maya.','پیام را بخوان.',1,CAST('{"mode":"reading_input","text":"Hello. My name is Maya.","input":"none","scored":false}' AS JSON),JSON_OBJECT('phase','reading')),
    (v_l_2,'reading_comprehension',9,NULL,'Who is the message from?','نام درست را انتخاب کن.',1,CAST('{"mode":"reading_inference","options":["London","Maya","Arman"],"answer_index":1,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('phase','reading')),
    (v_l_2,'pronunciation',10,NULL,'I’m Arman.','به پیوستگی کوتاه I’m دقت کن و جمله را shadow کن.',1,CAST('{"mode":"shadowing","target":"common_contractions","input":"speech","scored":false}' AS JSON),JSON_OBJECT('phase','pronunciation')),
    (v_l_2,'speak',11,NULL,'در پذیرش از تو نامت را می‌پرسند. خودت را معرفی کن.','پاسخ طبیعی بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"در پذیرش از تو نامت را می‌پرسند. خودت را معرفی کن.","accepted_intents":["My name is Arman.","I’m Arman."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','transfer')),
    (v_l_2,'speak',12,NULL,'شخصی می‌پرسد Is your name Arman? تایید کن.','پاسخ طبیعی بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"شخصی می‌پرسد Is your name Arman? تایید کن.","accepted_intents":["Yes, I’m Arman.","Yes. My name is Arman."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','transfer'));

    INSERT INTO lessons (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
    VALUES (v_chapter,v_maya,v_arman,'How Are You?','حالت چطور است؟','The first conversation continues with a simple wellbeing exchange.','اولین گفت‌وگو با یک احوال‌پرسی ساده ادامه پیدا می‌کند.','story','london_new_start',3,1,450,3,'validated',JSON_OBJECT('pedagogicalRole','retrieval')); SET v_l_3=LAST_INSERT_ID();
    INSERT INTO turns (lesson_id,character_id,sort_order,role,text,translation,difficulty,speech_target,speech_alternatives,tokens,metadata) VALUES
    (v_l_3,v_maya,1,'character','How are you?','حالت چطور است؟',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT('unit','en:a1:how-are-you')),
    (v_l_3,v_arman,2,'learner','I’m good, thanks.','خوبم، ممنون.',1,'I’m good, thanks.',JSON_ARRAY('I’m good, thanks.','I’m fine, thanks.'),JSON_ARRAY(),JSON_OBJECT()),
    (v_l_3,v_maya,3,'character','Good.','خوبه.',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
    (v_l_3,v_arman,4,'learner','And you?','تو چطور؟',1,'And you?',JSON_ARRAY('And you?','How about you?'),JSON_ARRAY(),JSON_OBJECT()),
    (v_l_3,v_maya,5,'character','I’m good, thank you.','خوبم، ممنون.',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
    (v_l_3,v_arman,6,'learner','Great.','عالی.',1,'Great.',JSON_ARRAY('Great.','Good.'),JSON_ARRAY(),JSON_OBJECT()),
    (v_l_3,v_maya,7,'character','Ready?','آماده‌ای؟',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
    (v_l_3,v_arman,8,'learner','Yes.','بله.',1,'Yes.',JSON_ARRAY('Yes.','Yes, I am.'),JSON_ARRAY(),JSON_OBJECT());
    INSERT INTO activities (lesson_id,activity_type,sort_order,turn_id,prompt,instruction,difficulty,config,metadata) VALUES
    (v_l_3,'listen',1,NULL,'How are you?','فقط گوش کن.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT('phase','exposure')),
    (v_l_3,'chunk',2,NULL,'How are you?','این پرسش رایج را یک تکه یاد بگیر.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:how-are-you","translation_fa":"حالت چطور است؟","input":"none","scored":false}' AS JSON),JSON_OBJECT('phase','guided')),
    (v_l_3,'speak',3,NULL,'How are you?','با ریتم طبیعی تکرار کن.',1,CAST('{"mode":"repeat_visible","accepted":["How are you?","How’re you?"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','guided_production')),
    (v_l_3,'reading_comprehension',4,NULL,'How are you? → I’m good, thanks.','این جفت پرسش و پاسخ را به‌عنوان الگوی مکالمه ببین.',1,CAST('{"mode":"micro_grammar","explanation_fa":"How are you? یک پرسش ثابت درباره حال است. پاسخ کوتاه طبیعی می‌تواند I’m good, thanks. یا I’m fine, thanks. باشد.","input":"none","scored":false}' AS JSON),JSON_OBJECT('phase','explicit')),
    (v_l_3,'meaning_choice',5,NULL,'How ___ you?','گزینه درست را انتخاب کن.',1,CAST('{"mode":"sentence_blank","options":["is","are","name"],"answer_index":1,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('phase','controlled')),
    (v_l_3,'speak',6,NULL,'در پاسخ به احوال‌پرسی بگو خوبی و تشکر کن.','بدون دیدن جواب پاسخ بده.',1,CAST('{"mode":"recall_hidden","cue_fa":"در پاسخ به احوال‌پرسی بگو خوبی و تشکر کن.","accepted":["I’m good, thanks.","I’m fine, thanks."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','recall')),
    (v_l_3,'reading',7,NULL,'Maya: Hello, Arman. How are you?','پیام را بخوان.',1,CAST('{"mode":"reading_input","text":"Maya: Hello, Arman. How are you?","input":"none","scored":false}' AS JSON),JSON_OBJECT('phase','reading')),
    (v_l_3,'reading_comprehension',8,NULL,'What does Maya ask about?','معنی کلی را انتخاب کن.',1,CAST('{"mode":"reading_inference","options":["حال آرمان","نام آرمان","خداحافظی"],"answer_index":0,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('phase','reading')),
    (v_l_3,'pronunciation',9,NULL,'How are you?','لحن پرسشی را گوش کن و shadow کن.',1,CAST('{"mode":"stress_rhythm","target":"question_vs_statement_intonation","input":"speech","scored":false}' AS JSON),JSON_OBJECT('phase','pronunciation')),
    (v_l_3,'word_order',10,NULL,'How are you','واژه‌ها را مرتب کن.',1,CAST('{"mode":"tap_tokens","tokens":["you","How","are"],"answer":["How","are","you"],"input":"tap_tokens","scored":true}' AS JSON),JSON_OBJECT('phase','controlled')),
    (v_l_3,'speak',11,NULL,'همکارت صبح از حالت می‌پرسد. پاسخ کوتاه و طبیعی بده.','با صدا پاسخ بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"همکارت صبح از حالت می‌پرسد. پاسخ کوتاه و طبیعی بده.","accepted_intents":["I’m good, thanks.","I’m fine, thank you."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','transfer')),
    (v_l_3,'speak',12,NULL,'بعد از جواب خودت، حال طرف مقابل را هم بپرس.','با صدا پاسخ بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"بعد از جواب خودت، حال طرف مقابل را هم بپرس.","accepted_intents":["And you?","How about you?"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','transfer'));

    INSERT INTO lessons (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
    VALUES (v_chapter,v_maya,v_arman,'See You Soon','به‌زودی می‌بینمت','Arman completes the first interaction and proves he can greet, introduce himself and close politely.','آرمان اولین تعامل را کامل می‌کند و نشان می‌دهد می‌تواند سلام کند، خودش را معرفی کند و مودبانه گفت‌وگو را تمام کند.','story','london_new_start',4,1,480,4,'validated',JSON_OBJECT('pedagogicalRole','mastery','masteryCheck',TRUE)); SET v_l_4=LAST_INSERT_ID();
    INSERT INTO turns (lesson_id,character_id,sort_order,role,text,translation,difficulty,speech_target,speech_alternatives,tokens,metadata) VALUES
    (v_l_4,v_maya,1,'character','Hello again!','دوباره سلام!',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
    (v_l_4,v_arman,2,'learner','Hello!','سلام!',1,'Hello!',JSON_ARRAY('Hello!','Hi!'),JSON_ARRAY(),JSON_OBJECT()),
    (v_l_4,v_maya,3,'character','What’s your name?','اسمت چیست؟',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
    (v_l_4,v_arman,4,'learner','My name is Arman.','اسم من آرمان است.',1,'My name is Arman.',JSON_ARRAY('My name is Arman.','I’m Arman.'),JSON_ARRAY(),JSON_OBJECT()),
    (v_l_4,v_maya,5,'character','Nice to meet you, Arman.','آرمان، از آشنایی با تو خوشحالم.',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT()),
    (v_l_4,v_arman,6,'learner','Nice to meet you too.','من هم از آشنایی با تو خوشحالم.',1,'Nice to meet you too.',JSON_ARRAY('Nice to meet you too.','Nice to meet you.'),JSON_ARRAY(),JSON_OBJECT()),
    (v_l_4,v_maya,7,'character','Goodbye for now.','فعلا خداحافظ.',1,NULL,NULL,JSON_ARRAY(),JSON_OBJECT('unit','en:a1:goodbye:parting')),
    (v_l_4,v_arman,8,'learner','Goodbye!','خداحافظ!',1,'Goodbye!',JSON_ARRAY('Goodbye!','Bye!'),JSON_ARRAY(),JSON_OBJECT('unit','en:a1:goodbye:parting'));
    INSERT INTO activities (lesson_id,activity_type,sort_order,turn_id,prompt,instruction,difficulty,config,metadata) VALUES
    (v_l_4,'listen',1,NULL,'Hello again!','فقط گوش کن.',1,CAST('{"mode":"audio_first","input":"none","scored":false}' AS JSON),JSON_OBJECT('phase','exposure')),
    (v_l_4,'chunk',2,NULL,'Goodbye','معنی و کاربرد را ببین.',1,CAST('{"mode":"chunk_teach","unit_key":"en:a1:goodbye:parting","translation_fa":"خداحافظ","input":"none","scored":false}' AS JSON),JSON_OBJECT('phase','guided')),
    (v_l_4,'speak',3,NULL,'Goodbye!','با صدای بلند تکرار کن.',1,CAST('{"mode":"repeat_visible","accepted":["Goodbye!","Bye!"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','guided_production')),
    (v_l_4,'speak',4,NULL,'بدون متن سلام کن.','از حافظه بگو.',1,CAST('{"mode":"recall_hidden","cue_fa":"بدون متن سلام کن.","accepted":["Hello!","Hi!"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','recall')),
    (v_l_4,'speak',5,NULL,'بدون متن نامت را بگو.','از حافظه بگو.',1,CAST('{"mode":"recall_hidden","cue_fa":"بدون متن نامت را بگو.","accepted":["My name is Arman.","I’m Arman."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','recall')),
    (v_l_4,'meaning_choice',6,NULL,'___! See you later.','گزینه طبیعی برای پایان گفت‌وگو را انتخاب کن.',1,CAST('{"mode":"sentence_blank","options":["Hello","Name","Goodbye"],"answer_index":2,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('phase','controlled')),
    (v_l_4,'reading',7,NULL,'Hi! My name is Maya. Nice to meet you.','پیام کوتاه را بخوان.',1,CAST('{"mode":"reading_input","text":"Hi! My name is Maya. Nice to meet you.","input":"none","scored":false}' AS JSON),JSON_OBJECT('phase','reading')),
    (v_l_4,'reading_comprehension',8,NULL,'Which sentence introduces the writer?','جمله معرفی را انتخاب کن.',1,CAST('{"mode":"reading_inference","options":["Nice to meet you.","My name is Maya.","Hi!"],"answer_index":1,"input":"tap_choice","scored":true}' AS JSON),JSON_OBJECT('phase','reading')),
    (v_l_4,'pronunciation',9,NULL,'Hello. Goodbye.','تفاوت تاکید دو واژه را گوش کن و shadow کن.',1,CAST('{"mode":"shadowing","target":"basic_word_stress","input":"speech","scored":false}' AS JSON),JSON_OBJECT('phase','pronunciation')),
    (v_l_4,'speak',10,NULL,'در یک کلاس جدید، سلام کن و نامت را بگو.','دو بخش را طبیعی پشت سر هم بگو.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"در یک کلاس جدید، سلام کن و نامت را بگو.","accepted_intents":["Hello! My name is Arman.","Hi! I’m Arman."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','mastery')),
    (v_l_4,'speak',11,NULL,'شخص تازه‌ای خودش را معرفی می‌کند. با عبارت مناسب از آشنایی ابراز خوشحالی کن.','با صدا پاسخ بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"شخص تازه‌ای خودش را معرفی می‌کند. با عبارت مناسب از آشنایی ابراز خوشحالی کن.","accepted_intents":["Nice to meet you.","Nice to meet you too."],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','mastery')),
    (v_l_4,'speak',12,NULL,'گفت‌وگو تمام شده است. مودبانه خداحافظی کن.','با صدا پاسخ بده.',1,CAST('{"mode":"scenario_transfer","scenario_fa":"گفت‌وگو تمام شده است. مودبانه خداحافظی کن.","accepted_intents":["Goodbye!","Bye!"],"input":"speech","scored":true}' AS JSON),JSON_OBJECT('phase','mastery'));

    INSERT INTO lesson_learning_units (lesson_id,learning_unit_id,learning_role,is_target,exposure_count,metadata) VALUES
    (v_l_1,v_u_hello,'new',1,4,JSON_OBJECT()),(v_l_1,v_u_nicemeet,'new',1,3,JSON_OBJECT()),(v_l_1,v_u_pron,'new',1,2,JSON_OBJECT()),
    (v_l_2,v_u_name,'new',1,3,JSON_OBJECT()),(v_l_2,v_u_myname,'new',1,5,JSON_OBJECT()),(v_l_2,v_u_nicemeet,'review',1,2,JSON_OBJECT()),
    (v_l_3,v_u_howare,'new',1,5,JSON_OBJECT()),(v_l_3,v_u_hello,'review',1,1,JSON_OBJECT()),
    (v_l_4,v_u_goodbye,'new',1,4,JSON_OBJECT()),(v_l_4,v_u_hello,'mastery',1,2,JSON_OBJECT()),(v_l_4,v_u_myname,'mastery',1,3,JSON_OBJECT()),(v_l_4,v_u_nicemeet,'mastery',1,2,JSON_OBJECT());

    INSERT INTO review_obligations (course_id,learning_unit_id,origin_chapter_id,due_series,spacing_offset,status,metadata)
    SELECT v_course,u.id,v_chapter,1+x.off,x.off,'due',JSON_OBJECT('originSeries',1)
    FROM learning_units u JOIN (SELECT 1 off UNION ALL SELECT 2 UNION ALL SELECT 4 UNION ALL SELECT 8 UNION ALL SELECT 16) x
    WHERE u.course_id=v_course AND JSON_EXTRACT(u.metadata,'$.series')=1;
  END IF;
  COMMIT;
END$$
DELIMITER ;
CALL nova_en_v3_s001();
DROP PROCEDURE IF EXISTS nova_en_v3_s001;

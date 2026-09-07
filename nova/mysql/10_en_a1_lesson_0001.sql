-- Generated from canonical Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0001
-- sourceHash: 49a5cffa1956a83f6c0527e30227f3d87fd62fb4afd6895a079dc33323d2b529
SET NAMES utf8mb4;
START TRANSACTION;

INSERT INTO courses (course_key,learning_language,base_language,title,title_translation,description,status,metadata)
VALUES ('en-fa','en','fa','English','انگلیسی','آموزش انگلیسی برای فارسی‌زبان‌ها از صفر مطلق','active','{"englishBaseline":"General American"}')
ON DUPLICATE KEY UPDATE title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),status=VALUES(status),metadata=VALUES(metadata);
SET @course_id=(SELECT id FROM courses WHERE course_key='en-fa' LIMIT 1);

INSERT INTO characters (course_id,character_key,name,gender,voice_key,profile,is_active)
VALUES (@course_id,'maya','Maya','female','vexa','{"roleFa":"شخصیت اصلی مکالمه‌های ابتدایی"}',1)
ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;

INSERT INTO lessons (course_id,lesson_key,sort_order,title,title_translation,description,cefr_level,primary_outcome_key,estimated_duration_sec,source_hash,status,metadata)
VALUES (@course_id,'EN-A1-L-0001',1,'Hello! What''s your name?','سلام! اسمت چیه؟','اولین مکالمه کوتاه: سلام کردن و گفتن یا پرسیدن اسم.','A1','A1-INTERACTION-GREET-NAME',420,'49a5cffa1956a83f6c0527e30227f3d87fd62fb4afd6895a079dc33323d2b529','validated','{"outcomeFa":"زبان‌آموز می‌تواند سلام کند، اسم خودش را بگوید و اسم طرف مقابل را بپرسد یا بفهمد.","scenarioFa":"برای اولین بار با مایا آشنا می‌شوی.","prerequisiteOutcomeKeys":[],"curriculum":{"startingKnowledge":"absolute_zero","targetConstructions":[{"key":"EN-CONSTR-IM-NAME","form":"I''m + name","meaningFa":"برای معرفی کوتاه اسم"},{"key":"EN-CONSTR-WHATS-YOUR-NAME","form":"What''s your name?","meaningFa":"برای پرسیدن اسم طرف مقابل"},{"key":"EN-CONSTR-MY-NAME-IS","form":"My name is + name","meaningFa":"برای گفتن اسم"}],"supportLanguage":["Nice to meet you."],"assessmentBoundary":"Support language is not required for scored success in this Lesson."},"pilot":true,"audioRequired":true,"humanEnglishAuditRequired":true}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),cefr_level=VALUES(cefr_level),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE course_id=@course_id AND lesson_key='EN-A1-L-0001' LIMIT 1);
DELETE FROM activities WHERE lesson_id=@lesson_id;
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id;
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,metadata)
VALUES (@course_id,'EN-LEX-HELLO-01','word','hello','hello','interjection','greeting','سلام','nova/audio/lexical/en-fa/43cd0dd00a9bea0c54572e2140190981a5bfaddc71d5cb58e16ee2a1334a3d23.mp3','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-HELLO-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,metadata)
VALUES (@course_id,'EN-LEX-NAME-01','word','name','name','noun','personal_name','اسم','nova/audio/lexical/en-fa/59e6f2bcb4530dddb372d54401b66a7bf735760a788f310a848829fdeae4e303.mp3','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-NAME-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',2,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,metadata)
VALUES (@course_id,'EN-LEX-NICE-TO-MEET-YOU-01','formula','nice to meet you','nice to meet you','formula','first_meeting_politeness','از آشنایی باهات خوشحالم','nova/audio/lexical/en-fa/d01ef577b40f39980f162495b4f0bd598ec7bd90053719547b3b999929d45c03.mp3','{"atomicityRationale":"Conventional fixed social formula; taught and pronounced as one usable unit."}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-NICE-TO-MEET-YOU-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'support',3,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'Hello! I''m Maya.','سلام! من مایا هستم.','nova/audio/turns/en-fa/EN-A1-L-0001/T01.mp3',NULL,NULL,NULL,'{}');
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',NULL,'Hello! I''m Alex.','سلام! من الکس هستم.','nova/audio/turns/en-fa/EN-A1-L-0001/T02.mp3','Hello! I''m Alex.','["Hello! I''m Alex."]',NULL,'{}');
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'What''s your name?','اسمت چیه؟','nova/audio/turns/en-fa/EN-A1-L-0001/T03.mp3',NULL,NULL,NULL,'{}');
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',NULL,'My name is Alex.','اسم من الکسه.','nova/audio/turns/en-fa/EN-A1-L-0001/T04.mp3','My name is Alex.','["My name is Alex."]',NULL,'{}');
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T05',5,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'Nice to meet you, Alex.','از آشنایی باهات خوشحالم، الکس.','nova/audio/turns/en-fa/EN-A1-L-0001/T05.mp3',NULL,NULL,NULL,'{}');
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T06',6,'learner',NULL,'Nice to meet you too.','من هم از آشنایی باهات خوشحالم.','nova/audio/turns/en-fa/EN-A1-L-0001/T06.mp3','Nice to meet you too.','["Nice to meet you too."]',NULL,'{}');

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'dialogue','مکالمه را گوش کن و متن را هم دنبال کن.',NULL,'{"turnKeys":["T01","T02","T03","T04","T05","T06"],"showTranscript":true,"showTranslation":true,"autoplay":false}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'lexical_teach','این دو کلمه اصلی را یاد بگیر.',NULL,'{"lexicalKeys":["EN-LEX-HELLO-01","EN-LEX-NAME-01"]}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'speak','متن را ببین و با صدای بلند بخوان.',NULL,'{"mode":"repeat_visible","sourceTurnKey":"T02","textEn":"Hello! I''m Alex.","acceptedAnswersEn":["Hello! I''m Alex."],"evaluation":"stt"}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'sentence_order','کلمه‌ها را مرتب کن تا جمله درست ساخته شود.',NULL,'{"tokensEn":["Alex.","is","My","name"],"answerTokensEn":["My","name","is","Alex."],"answerEn":"My name is Alex."}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'fill_blank','گزینه درست را برای جای خالی انتخاب کن.',NULL,'{"sentenceEn":"My ___ is Alex.","optionsEn":["name","hello","Maya"],"answerIndex":0}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'comprehension','مکالمه را گوش کن و جواب درست را انتخاب کن.','اسم دختری که اول صحبت می‌کند چیست؟','{"sourceTurnKeys":["T01","T02","T03","T04","T05","T06"],"options":["Maya","Alex"],"answerIndex":0,"transcriptAfterAttempt":true}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A07',7,'speak','این سوال را با صدای بلند بخوان.',NULL,'{"mode":"repeat_visible","sourceTurnKey":"T03","textEn":"What''s your name?","acceptedAnswersEn":["What''s your name?"],"evaluation":"stt"}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A08',8,'speak','این جمله را با صدای بلند بخوان.',NULL,'{"mode":"repeat_visible","sourceTurnKey":"T04","textEn":"My name is Alex.","acceptedAnswersEn":["My name is Alex."],"evaluation":"stt"}','{}');

COMMIT;

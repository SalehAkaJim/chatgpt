-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0002
-- levelKey: A1
-- sourceHash: 82b78bc377b0a9c357b9a4a1d51cfbd64b1fa8c46e1b086d5b9d0b69e07bb4e4
-- courseSourceHash: 09146e3c4ae512c4e36bd64b2ba05ef6df3abac5908d79c982597c81ef6f1374
SET NAMES utf8mb4;
START TRANSACTION;

INSERT INTO courses (course_key,learning_language,base_language,title,title_translation,description,status,metadata)
VALUES ('en-fa','en','fa','English','انگلیسی','آموزش انگلیسی برای فارسی زبان ها از صفر مطلق','active','{"englishBaseline":"General American"}')
ON DUPLICATE KEY UPDATE title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),status=VALUES(status),metadata=VALUES(metadata);
SET @course_id=(SELECT id FROM courses WHERE course_key='en-fa' LIMIT 1);

INSERT INTO levels (course_id,level_key,sort_order,title,title_translation,standard_code,description,status,metadata)
VALUES (@course_id,'A1',1,'A1','A1','CEFR-A1','سطح مقدماتی برای شروع یادگیری انگلیسی از صفر','active','{"framework":"CEFR"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),standard_code=VALUES(standard_code),description=VALUES(description),status=VALUES(status),metadata=VALUES(metadata);

SET @level_id=(SELECT id FROM levels WHERE course_id=@course_id AND level_key='A1' LIMIT 1);

INSERT INTO characters (course_id,character_key,name,gender,voice_key,profile,is_active)
VALUES (@course_id,'maya','Maya','female','vexa','{"roleFa":"شخصیت اصلی مکالمه های ابتدایی"}',1)
ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;

INSERT INTO lessons (level_id,lesson_key,sort_order,title,title_translation,description,primary_outcome_key,estimated_duration_sec,source_hash,status,metadata)
VALUES (@level_id,'EN-A1-L-0002',2,'Meeting someone in class','معارفه در کلاس','در جلسه معارفه، اسمت را می گویی و به آشنایی با یک نفر پاسخ می دهی.','A1-INTERACTION-FIRST-MEETING',420,'82b78bc377b0a9c357b9a4a1d51cfbd64b1fa8c46e1b086d5b9d0b69e07bb4e4','validated','{"outcomeFa":"زبان آموز می تواند خودش را با My name is معرفی کند و به ابراز خوشحالی از آشنایی پاسخ بدهد.","scenarioFa":"در جلسه معارفه یک کلاس، مایا سر صحبت را باز می کند. نقش تو الکس است.","prerequisiteOutcomeKeys":["A1-INTERACTION-GREET-NAME"],"curriculum":{"startingKnowledge":"greeting_and_name","targetConstructions":[{"key":"EN-CONSTR-MY-NAME-IS","form":"My name is + name","meaningFa":"یک روش دیگر برای گفتن اسم خودت"}],"supportLanguage":[],"assessmentBoundary":"Guided responses are supported practice. Independent tasks check name introduction and first-meeting meaning.","transferPlan":{"mode":"same_lesson","intent":"Select an appropriate introduction in response to a teacher, then reuse social interaction in Lesson 0003."}},"pilot":true,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0002' LIMIT 1);
DELETE FROM activities WHERE lesson_id=@lesson_id;
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id;
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-HELLO-01','word','hello','hello','interjection','greeting','سلام','nova/audio/lexical/en-fa/43cd0dd00a9bea0c54572e2140190981a5bfaddc71d5cb58e16ee2a1334a3d23.mp3','966','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-HELLO-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',1,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-NAME-01','word','name','name','noun','personal_name','اسم','nova/audio/lexical/en-fa/59e6f2bcb4530dddb372d54401b66a7bf735760a788f310a848829fdeae4e303.mp3','862','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-NAME-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',2,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-NICE-TO-MEET-YOU-01','formula','nice to meet you',NULL,NULL,NULL,'از آشنایی با تو خوشحالم','nova/audio/lexical/en-fa/d4e96fd625bf3c6be484de0b970071a058d6bdca217f3a10e62c58a395bc0cf4.mp3','1280','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-NICE-TO-MEET-YOU-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',3,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-TOO-01','word','too',NULL,'adverb',NULL,'هم','nova/audio/lexical/en-fa/dee2e3757e14f8888fe5ca701cf64c9a32423518dc3376aa6d0b6ccc4e4dde3e.mp3','914','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-TOO-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'support',4,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'Hello! What''s your name?','سلام! اسمت چیه؟','nova/audio/turns/en-fa/EN-A1-L-0002/T01.mp3','1567',NULL,NULL,NULL,'{}');
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',NULL,'My name is Alex.','اسم من الکس است.','nova/audio/turns/en-fa/EN-A1-L-0002/T02.mp3','1280','My name is Alex.','["My name is Alex."]',NULL,'{}');
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'I''m Maya. Nice to meet you.','من مایا هستم. از آشنایی با تو خوشحالم.','nova/audio/turns/en-fa/EN-A1-L-0002/T03.mp3','1697',NULL,NULL,NULL,'{}');
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',NULL,'Nice to meet you, too.','من هم از آشنایی با تو خوشحالم.','nova/audio/turns/en-fa/EN-A1-L-0002/T04.mp3','1671','Nice to meet you, too.','["Nice to meet you, too."]',NULL,'{}');

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'dialogue','حرف مایا را بخوان و گوش کن، بعد پاسخ آماده را با صدای بلند بازخوانی کن.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'lexical_teach','معنی این عبارت و کلمه را یاد بگیر.',NULL,'{"lexicalKeys":["EN-LEX-NICE-TO-MEET-YOU-01","EN-LEX-TOO-01"],"explanationFa":"My name is Alex و I''m Alex هر دو برای معرفی اسم هستند. too در آخر پاسخ یعنی من هم همین حس را دارم."}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'sentence_order','گوش کن و کلمه ها را به همان ترتیب بچین.',NULL,'{"audioSourceTurnKey":"T02","tokensEn":["is","Alex.","My","name"],"answerTokensEn":["My","name","is","Alex."],"answerEn":"My name is Alex.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'fill_blank','با توجه به موقعیت، گزینه مناسب را انتخاب کن.',NULL,'{"sentenceEn":"My ___ is Alex.","optionsEn":["hello","name","too"],"answerIndex":1}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'comprehension','با توجه به موقعیت، گزینه مناسب را انتخاب کن.','مایا با جمله آخرش چه پیامی می دهد؟','{"sourceTurnKeys":["T03"],"options":["می خواهد خداحافظی کند","اسم الکس را دوباره می پرسد","از آشنایی با الکس خوشحال است"],"answerIndex":2,"transcriptAfterAttempt":true}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'response_choice','با توجه به موقعیت، گزینه مناسب را انتخاب کن.','معلم جدید می خواهد بداند اسمت چیست. کدام پاسخ مناسب است؟','{"optionsEn":["My name is Alex.","What''s your name?","Nice to meet you."],"answerIndex":0}','{"learningDemand":"changed_context","purpose":"Choose an introduction by communicative intent rather than reconstructing an audio model."}');

COMMIT;

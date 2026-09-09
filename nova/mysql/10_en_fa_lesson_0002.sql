-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0002
-- levelKey: A1
-- sourceHash: 77f87ae41082b6e712e533eaab928e73ad93cab5462d49ec40834e183fdbdc4d
-- courseSourceHash: 3e15867126992ac96cdac9e744eaa9dcfd08e5d0bffe8a18dfef4f19ff7d684e
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
VALUES (@course_id,'maya','Maya','female','vexa','{"roleFa":"همکلاسی الکس"}',1)
ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;

INSERT INTO characters (course_id,character_key,name,gender,voice_key,profile,is_active)
VALUES (@course_id,'alex','Alex','male','brent','{"roleFa":"همکلاسی مایا"}',1)
ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;

INSERT INTO characters (course_id,character_key,name,gender,voice_key,profile,is_active)
VALUES (@course_id,'nora','Nora','female','lori','{"roleFa":"همسایه اوون در ساختمان"}',1)
ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;

INSERT INTO characters (course_id,character_key,name,gender,voice_key,profile,is_active)
VALUES (@course_id,'owen','Owen','male','brian','{"roleFa":"همسایه نورا در ساختمان"}',1)
ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;

INSERT INTO characters (course_id,character_key,name,gender,voice_key,profile,is_active)
VALUES (@course_id,'iris','Iris','female','rachel','{"roleFa":"پذیرش مرکز محله؛ نینا را از قبل می شناسد"}',1)
ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;

INSERT INTO characters (course_id,character_key,name,gender,voice_key,profile,is_active)
VALUES (@course_id,'nina','Nina','female','vexa','{"roleFa":"به برنامه های مرکز محله می رود و آیریس را می شناسد"}',1)
ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;

INSERT INTO characters (course_id,character_key,name,gender,voice_key,profile,is_active)
VALUES (@course_id,'leo','Leo','male','adam','{"roleFa":"کتابدار؛ در برنامه های کتابخانه کمک می کند"}',1)
ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;

INSERT INTO characters (course_id,character_key,name,gender,voice_key,profile,is_active)
VALUES (@course_id,'liam','Liam','male','brent','{"roleFa":"مراجعه کننده کتابخانه"}',1)
ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;

INSERT INTO characters (course_id,character_key,name,gender,voice_key,profile,is_active)
VALUES (@course_id,'sara','Sara','female','lori','{"roleFa":"عضو گروه پیاده روی؛ اهل کانادا"}',1)
ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;

INSERT INTO characters (course_id,character_key,name,gender,voice_key,profile,is_active)
VALUES (@course_id,'ruby','Ruby','female','rachel','{"roleFa":"عضو تازه گروه پیاده روی؛ اهل ایران"}',1)
ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;

INSERT INTO characters (course_id,character_key,name,gender,voice_key,profile,is_active)
VALUES (@course_id,'ben','Ben','male','adam','{"roleFa":"کارمند کافه"}',1)
ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;

INSERT INTO characters (course_id,character_key,name,gender,voice_key,profile,is_active)
VALUES (@course_id,'ava','Ava','female','lori','{"roleFa":"مشتری کافه"}',1)
ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;

INSERT INTO lessons (level_id,lesson_key,sort_order,title,title_translation,description,primary_outcome_key,estimated_duration_sec,source_hash,status,metadata)
VALUES (@level_id,'EN-A1-L-0002',2,'Meet your neighbor','با همسایه ات آشنا شو','تازه به ساختمان آمده ای و در راهرو برای اولین بار با نورا، همسایه ات، روبه رو می شوی.','A1-INTERACTION-FIRST-MEETING',420,'77f87ae41082b6e712e533eaab928e73ad93cab5462d49ec40834e183fdbdc4d','validated','{"outcomeFa":"زبان آموز می تواند یک معرفی کوتاه انجام دهد و به عبارت خوشحالی از آشنایی پاسخ مناسب بدهد.","scenarioFa":"در راهروی ساختمان با نورا آشنا می شوی. نقش تو اوون است و باید خودت را معرفی کنی.","prerequisiteOutcomeKeys":["A1-INTERACTION-GREET-NAME"],"curriculum":{"startingKnowledge":"greeting_and_name","targetConstructions":[{"key":"EN-CONSTR-MY-NAME-IS","form":"My name is + name","meaningFa":"یک روش دیگر برای گفتن اسم خودت"}],"supportLanguage":[{"form":"Nice to meet you, too.","meaningFa":"من هم از آشنایی با تو خوشحالم"}],"assessmentBoundary":"Guided dialogue and reconstruction are practice. Choice tasks assess recognition of communicative intent. Final retrieval measures same-session recall of a short learned introduction, not open-ended speaking proficiency.","transferPlan":{"mode":"same_lesson","intent":"Reuse the greeting and name language from Lesson 1 in a different relationship and end with hidden-answer retrieval."},"story":{"arcKey":"EN-A1-NEIGHBORS","sceneKey":"EN-A1-FACTORY-SCENE-0002","learnerRoleKey":"owen","participants":["owen","nora"],"introducedCharacterKeys":["owen","nora"],"relationshipState":"first_meeting","continuesLessonKey":null,"dependsOnLessonKeys":[],"settingFa":"راهروی ساختمان، کنار آسانسور","storyBeatFa":"نورا و اوون برای اولین بار خودشان را معرفی می کنند و با یک پاسخ کوتاه آشنایی را تمام می کنند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0001","activityKeys":["A04","A07"],"learningDemand":"transfer","note":"The learner reuses the greeting and name language from Lesson 1 with a new person and a new introduction pattern."}],"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"factory_test_reference_driven"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0002' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A01','A03','A04','A05','A06','A07');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),6) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04','T05');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),5) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-NAME-01','word','name','name','noun','personal_name','اسم','nova/audio/lexical/en-fa/59e6f2bcb4530dddb372d54401b66a7bf735760a788f310a848829fdeae4e303.mp3','862','{"referenceKey":"EN-REF-F7A6AD8E6587EDA3E40E"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-NAME-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',1,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nora' LIMIT 1),'Hi! I''m Nora. What''s your name?','سلام! من نورا هستم. اسمت چیه؟','nova/audio/turns/en-fa/EN-A1-L-0002/T01.mp3','2089',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'My name is Owen.','اسم من اوون است.','nova/audio/turns/en-fa/EN-A1-L-0002/T02.mp3','1097','My name is Owen.','["My name is Owen."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nora' LIMIT 1),'Nice to meet you, Owen.','اوون، از آشنایی باهات خوشحالم.','nova/audio/turns/en-fa/EN-A1-L-0002/T03.mp3','1332',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'Nice to meet you, too.','من هم از آشنایی باهات خوشحالم.','nova/audio/turns/en-fa/EN-A1-L-0002/T04.mp3','1515','Nice to meet you, too.','["Nice to meet you, too."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T05',5,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'Hi! My name is Owen.','سلام! اسم من اوون است.','nova/audio/turns/en-fa/EN-A1-L-0002/T05.mp3','1488','Hi! My name is Owen.','["Hi! My name is Owen.","Hi! I''m Owen."]',NULL,'{"usage":"retrieval_model_after_help"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'dialogue','به نورا گوش کن و جواب اوون را با صدای بلند بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',2,'sentence_order','جمله را گوش کن و کلمه ها را به همان ترتیب بچین.',NULL,'{"audioSourceTurnKey":"T02","tokensEn":["Owen.","name","My","is"],"answerTokensEn":["My","name","is","Owen."],"answerEn":"My name is Owen.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"درست چیدی؛ این یک روش طبیعی برای معرفی اسم است.","retryFa":"دوباره گوش کن؛ جمله با My name شروع می شود."}}','{"evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',3,'response_choice','پاسخ مناسب را انتخاب کن.','نورا اسم تو را می پرسد. در نقش اوون چه می گویی؟','{"optionsEn":["My name is Owen.","What''s your name?","Nice to meet you."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ این جمله اسم خودت را می گوید.","این جمله دوباره اسم نورا را می پرسد، نه اینکه خودت را معرفی کنی.","این عبارت برای بعد از معرفی است."],"correctFa":"My name is Owen یعنی اسم من اوون است."}}','{"evidenceKind":"recognition_or_selection","learningDemand":"transfer"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',4,'comprehension','به جمله نورا گوش کن و معنی موقعیت را انتخاب کن.','نورا با جمله آخرش چه پیامی می دهد؟','{"sourceTurnKeys":["T03"],"options":["از آشنایی با اوون خوشحال است","می خواهد اسم اوون را دوباره بپرسد","می خواهد خداحافظی کند"],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است؛ Nice to meet you برای ابراز خوشحالی از آشنایی است.","در این جمله سوالی درباره اسم وجود ندارد.","این عبارت برای آشنایی است، نه خداحافظی."],"correctFa":"Nice to meet you یعنی از آشنایی باهات خوشحالم."}}','{"evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',5,'response_choice','پاسخ طبیعی را انتخاب کن.','نورا می گوید از آشنایی با تو خوشحال است. می خواهی بگویی تو هم همین حس را داری.','{"optionsEn":["Nice to meet you, too.","My name is Owen.","What''s your name?"],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ too اینجا یعنی تو هم همین حس را داری.","اسم خودت را قبلا گفته ای؛ الان باید به عبارت آشنایی پاسخ بدهی.","این سوال دوباره درباره اسم طرف مقابل است."],"correctFa":"Nice to meet you, too یک پاسخ طبیعی در این موقعیت است."}}','{"evidenceKind":"recognition_or_selection","learningDemand":"changed_context"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A07',6,'speak','این بار جواب انگلیسی را نمی بینی. خودت جمله را بگو یا بنویس.','اوون هستی. به همسایه تازه ات سلام کن و اسمت را بگو.','{"mode":"retrieval","textEn":"Hi! My name is Owen.","acceptedAnswersEn":["Hi! My name is Owen.","Hi! I''m Owen."],"sourceTurnKey":"T05","showAnswerTextBeforeAttempt":false,"hintFa":"اول سلام کوتاه، بعد یکی از دو الگوی معرفی اسم را استفاده کن.","feedback":{"correctFa":"زبان درس قبل را در یک آشنایی تازه دوباره به کار بردی.","retryFa":"با Hi شروع کن و بعد اسمت را معرفی کن."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session bounded recall and transfer of taught introduction patterns; not open-ended speaking proficiency."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

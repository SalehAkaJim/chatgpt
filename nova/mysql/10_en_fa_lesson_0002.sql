-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0002
-- levelKey: A1
-- sourceHash: 5304e043d668dc193e0a54a6fdd528acfe5574fba3b784920cde109169c0e059
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
VALUES (@level_id,'EN-A1-L-0002',2,'Meeting a neighbor','آشنایی با همسایه','تازه به ساختمان آمده ای. نورا همسایه ات است و برای اولین بار با هم آشنا می شوید.','A1-INTERACTION-FIRST-MEETING',420,'5304e043d668dc193e0a54a6fdd528acfe5574fba3b784920cde109169c0e059','validated','{"outcomeFa":"زبان آموز می تواند خودش را با My name is معرفی کند و به ابراز خوشحالی از آشنایی پاسخ بدهد.","scenarioFa":"تازه به ساختمان آمده ای. نورا همسایه ات است و برای اولین بار با هم آشنا می شوید. نقش تو اوون است.","prerequisiteOutcomeKeys":["A1-INTERACTION-GREET-NAME"],"curriculum":{"startingKnowledge":"greeting_and_name","targetConstructions":[{"key":"EN-CONSTR-MY-NAME-IS","form":"My name is + name","meaningFa":"یک روش دیگر برای گفتن اسم خودت"}],"supportLanguage":[],"assessmentBoundary":"Guided speech and audio reconstruction are practice. Choice tasks assess recognition/selection. Final hidden-answer retrieval records first attempt and help separately; exact text matching cannot certify open-ended language ability or pronunciation.","transferPlan":{"mode":"same_lesson","intent":"End with meaning-cued recall without displayed English. Continue delayed review in later stories; this does not prove long-term retention."},"story":{"arcKey":"EN-A1-NEIGHBORS","sceneKey":"EN-A1-SCENE-0002","learnerRoleKey":"owen","participants":["owen","nora"],"introducedCharacterKeys":["owen","nora"],"relationshipState":"first_meeting","continuesLessonKey":null,"dependsOnLessonKeys":[],"settingFa":"راهروی ساختمان، اولین آشنایی","storyBeatFa":"اوون با همسایه اش نورا آشنا می شود."},"reviewLinks":[{"lessonKey":"EN-A1-L-0001","activityKeys":["A04","A07"],"learningDemand":"transfer","note":"Recombine the earlier greeting and name patterns for the played neighbor role; first-meeting response is practiced separately."}],"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0002' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A01','A02','A03','A04','A05','A06','A07');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),7) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04','T05');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),5) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

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
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',4,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nora' LIMIT 1),'Hello! What''s your name?','سلام! اسمت چیه؟','nova/audio/turns/en-fa/EN-A1-L-0002/T01.mp3','1436',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'My name is Owen.','اسم من اوون است.','nova/audio/turns/en-fa/EN-A1-L-0002/T02.mp3','1097','My name is Owen.','["My name is Owen."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nora' LIMIT 1),'I''m Nora. Nice to meet you.','من نورا هستم. از آشنایی با تو خوشحالم.','nova/audio/turns/en-fa/EN-A1-L-0002/T03.mp3','1802',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'Nice to meet you, too.','من هم از آشنایی با تو خوشحالم.','nova/audio/turns/en-fa/EN-A1-L-0002/T04.mp3','1515','Nice to meet you, too.','["Nice to meet you, too."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T05',5,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'Hello! My name is Owen.','سلام! اسم من اوون است.','nova/audio/turns/en-fa/EN-A1-L-0002/T05.mp3','1488','Hello! My name is Owen.','["Hello! My name is Owen."]',NULL,'{"usage":"retrieval_model_after_help"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'dialogue','حرف نورا را گوش کن و پاسخ اوون را با صدای بلند بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'lexical_teach','معنی این عبارت و کلمه را یاد بگیر.',NULL,'{"lexicalKeys":["EN-LEX-NICE-TO-MEET-YOU-01","EN-LEX-TOO-01"],"explanationFa":"My name is Owen و I''m Owen هر دو برای معرفی اسم هستند. too در آخر پاسخ یعنی من هم همین حس را دارم."}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'sentence_order','گوش کن و کلمه ها را به همان ترتیب بچین.',NULL,'{"audioSourceTurnKey":"T02","tokensEn":["is","Owen.","My","name"],"answerTokensEn":["My","name","is","Owen."],"answerEn":"My name is Owen.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"ترتیب شنیده شده را ساختی. معنی جمله: اسم من اوون است.","retryFa":"یک بار دیگر صدا را پخش کن. ترتیب را از شنیدن جمله پیدا کن؛ معنی جمله: اسم من اوون است."}}','{"evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','به موقعیت توجه کن و پاسخ مناسب را انتخاب کن.','نورا اسم تو را می پرسد. در نقش اوون کدام پاسخ را می دهی؟','{"optionsEn":["My name is Owen.","What''s your name?","Nice to meet you."],"answerIndex":0,"feedback":{"optionsFa":["این جمله اسم اوون را به نورا می گوید.","این یک سوال درباره اسم طرف مقابل است؛ الان باید اسم خودت را بگویی.","این جمله احساس خوشحالی از آشنایی را می رساند و اسم تو را نمی گوید."],"correctFa":"این جمله اسم اوون را به نورا می گوید."}}','{"evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'comprehension','با توجه به موقعیت، گزینه مناسب را انتخاب کن.','نورا با جمله آخرش چه پیامی می دهد؟','{"sourceTurnKeys":["T03"],"options":["می خواهد خداحافظی کند","اسم اوون را دوباره می پرسد","از آشنایی با اوون خوشحال است"],"answerIndex":2,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["Nice to meet you برای آشنایی است، نه خداحافظی.","نورا این بار اسمش را می گوید و از آشنایی خوشحال است؛ سوالی درباره اسم اوون ندارد.","Nice to meet you یعنی از آشنایی خوشحالم."],"correctFa":"Nice to meet you یعنی از آشنایی خوشحالم."}}','{"evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'response_choice','به موقعیت توجه کن و پاسخ مناسب را انتخاب کن.','نورا می گوید از آشنایی با تو خوشحال است. می خواهی بگویی تو هم همین حس را داری.','{"optionsEn":["Nice to meet you, too.","What''s your name?","My name is Owen."],"answerIndex":0,"feedback":{"optionsFa":["too یعنی هم؛ این پاسخ احساس مشابه تو را نشان می دهد.","اسمتان را گفته اید؛ الان پاسخ به خوشحالی از آشنایی لازم است.","معرفی اسم پاسخی به احساس خوشحالی طرف مقابل نیست."],"correctFa":"too یعنی هم؛ این پاسخ احساس مشابه تو را نشان می دهد."}}','{"learningDemand":"changed_context","purpose":"Choose an introduction by communicative intent rather than reconstructing an audio model.","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A07',7,'speak','این بار پاسخ آماده نداری. خودت جمله را بگو یا بنویس.','اوون هستی. همسایه نامش را گفته؛ حالا با سلام و معرفی اسم خودت جواب بده.','{"mode":"retrieval","textEn":"Hello! My name is Owen.","acceptedAnswersEn":["Hello! My name is Owen.","Hello! I''m Owen.","Hello! I am Owen."],"sourceTurnKey":"T05","showAnswerTextBeforeAttempt":false,"hintFa":"یک سلام و بعد یکی از دو الگوی معرفی اسم را به کار ببر.","feedback":{"correctFa":"پاسخت با یکی از الگوهای این تمرین هماهنگ است.","retryFa":"یک سلام و بعد یکی از دو الگوی معرفی اسم را به کار ببر."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session bounded pattern recall; not open-ended proficiency or pronunciation assessment."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

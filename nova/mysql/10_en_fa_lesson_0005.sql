-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0005
-- levelKey: A1
-- sourceHash: 3496de88fd4d9d292d68af68fc96fdbf7f4509c9798c29ada72725fce2f814da
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
VALUES (@level_id,'EN-A1-L-0005',5,'Where are you from?','اهل کجایی؟','به یک گروه پیاده روی پیوسته ای. پیش از حرکت، سارا سر صحبت را باز می کند تا با تو آشنا شود.','A1-INTERACTION-COUNTRY',420,'3496de88fd4d9d292d68af68fc96fdbf7f4509c9798c29ada72725fce2f814da','validated','{"outcomeFa":"می توانی بگویی اهل کجایی و همین اطلاعات را درباره طرف مقابل بفهمی.","scenarioFa":"به یک گروه پیاده روی پیوسته ای. پیش از حرکت، سارا سر صحبت را باز می کند تا با تو آشنا شود. نقش تو روبی است.","prerequisiteOutcomeKeys":["A1-INTERACTION-FIRST-MEETING","A1-INTERACTION-ASK-REPEAT"],"curriculum":{"startingKnowledge":"early_a1_after_greetings","targetConstructions":[{"key":"EN-CONSTR-FROM-COUNTRY","form":"I''m from + country","meaningFa":"گفتن اهل کدام کشور بودن"},{"key":"EN-CONSTR-ASK-COUNTRY","form":"Where are you from?","meaningFa":"پرسیدن اهل کجا بودن"}],"supportLanguage":[],"assessmentBoundary":"Guided speech and audio reconstruction are practice. Choice tasks assess recognition/selection. Final hidden-answer retrieval records first attempt and help separately; exact text matching cannot certify open-ended language ability or pronunciation.","transferPlan":{"mode":"same_lesson","intent":"End with meaning-cued recall without displayed English. Continue delayed review in later stories; this does not prove long-term retention."},"story":{"arcKey":"EN-A1-WALKING-GROUP","sceneKey":"EN-A1-SCENE-0005","learnerRoleKey":"ruby","participants":["ruby","sara"],"introducedCharacterKeys":["ruby","sara"],"relationshipState":"first_meeting","continuesLessonKey":null,"dependsOnLessonKeys":[],"settingFa":"پارک، پیش از شروع پیاده روی گروهی","storyBeatFa":"روبی و سارا درباره اهل کجا بودن حرف می زنند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0001","activityKeys":["A06"],"learningDemand":"recognition","note":"Distinguish a country question from a name question."},{"lessonKey":"EN-A1-L-0003","activityKeys":["A06"],"learningDemand":"recognition","note":"Distinguish country from wellbeing."}],"pedagogyVersion":2},"pilot":false,"batchKey":"EN-A1-STORY-10-01","audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0005' LIMIT 1);
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
VALUES (@course_id,'EN-LEX-FROM-01','word','from',NULL,'preposition',NULL,'از؛ برای گفتن اهل کجا بودن','nova/audio/lexical/en-fa/c73460368f89c9ebf80328e1861477e02a70b3d04ad20d3034215711aec69fb8.mp3','835','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-FROM-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-IRAN-01','word','Iran',NULL,'proper noun',NULL,'ایران','nova/audio/lexical/en-fa/1aaee1ffb0e51a711b96952772e15350cdb3ff645bb3ba9afa58fc9378f5e61c.mp3','835','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-IRAN-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',2,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-CANADA-01','word','Canada',NULL,'proper noun',NULL,'کانادا','nova/audio/lexical/en-fa/341071e147051276c7a36279b1ddc4302987475d3be14fa36db16719570cab72.mp3','862','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-CANADA-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',3,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-NAME-01','word','name','name','noun','personal_name','اسم','nova/audio/lexical/en-fa/59e6f2bcb4530dddb372d54401b66a7bf735760a788f310a848829fdeae4e303.mp3','862','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-NAME-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',4,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-NICE-01','word','nice',NULL,'adjective',NULL,'خوب؛ برای واکنش دوستانه','nova/audio/lexical/en-fa/39a5452db7e10fb665bc6764c7aa0cf3fae310ea1b00f4bb16f1ae79e6084b7e.mp3','835','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-NICE-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'support',5,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='sara' LIMIT 1),'Where are you from?','اهل کجایی؟','nova/audio/turns/en-fa/EN-A1-L-0005/T01.mp3','1253',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ruby' LIMIT 1),'I''m from Iran.','اهل ایرانم.','nova/audio/turns/en-fa/EN-A1-L-0005/T02.mp3','1384','I''m from Iran.','["I''m from Iran."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='sara' LIMIT 1),'I''m from Canada.','من اهل کانادا هستم.','nova/audio/turns/en-fa/EN-A1-L-0005/T03.mp3','1253',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ruby' LIMIT 1),'Nice!','چه خوب!','nova/audio/turns/en-fa/EN-A1-L-0005/T04.mp3','783','Nice!','["Nice!"]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T05',5,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ruby' LIMIT 1),'Where are you from?','اهل کجایی؟','nova/audio/turns/en-fa/EN-A1-L-0005/T05.mp3','1149','Where are you from?','["Where are you from?"]',NULL,'{"usage":"retrieval_model_after_help"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'lexical_teach','معنی و صدای این کلمه ها را یاد بگیر.',NULL,'{"lexicalKeys":["EN-LEX-FROM-01","EN-LEX-IRAN-01","EN-LEX-CANADA-01","EN-LEX-NICE-01"],"explanationFa":"Where are you from? یعنی اهل کجایی؟ در I''m from Iran بعد از from نام کشور می آید. در این داستان روبی اهل ایران است. Nice! فقط یک واکنش دوستانه است."}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','حرف سارا را گوش کن و پاسخ روبی را با صدای بلند بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'sentence_order','گوش کن و کلمه ها را به همان ترتیب بچین.',NULL,'{"audioSourceTurnKey":"T02","tokensEn":["from","Iran.","I''m"],"answerTokensEn":["I''m","from","Iran."],"answerEn":"I''m from Iran.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"ترتیب شنیده شده را ساختی. معنی جمله: اهل ایرانم.","retryFa":"یک بار دیگر صدا را پخش کن. ترتیب را از شنیدن جمله پیدا کن؛ معنی جمله: اهل ایرانم."}}','{"evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','به موقعیت توجه کن و پاسخ مناسب را انتخاب کن.','این بار جمله ای را انتخاب کن که از زبان سارا، اهل کانادا، درست باشد.','{"optionsEn":["I''m from Canada.","I''m from Iran.","Where are you from?"],"answerIndex":0,"feedback":{"optionsFa":["در نقش سارا، بعد از from کشور کانادا را می گویی.","ایران کشور روبی است؛ این سوال از زبان سارا پاسخ می خواهد.","این جمله کشور طرف مقابل را می پرسد؛ کشور سارا را بیان نمی کند."],"correctFa":"در نقش سارا، بعد از from کشور کانادا را می گویی."}}','{"evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'comprehension','گوش کن و با توجه به چیزی که شنیدی پاسخ بده.','سارا درباره خودش چه می گوید؟','{"sourceTurnKeys":["T03"],"options":["ایران","کانادا"],"answerIndex":1,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["ایران کشور روبی است. به صدای سارا توجه کن.","سارا می گوید از کاناداست."],"correctFa":"سارا می گوید از کاناداست."}}','{"learningDemand":"recognition","purpose":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'response_choice','با توجه به موقعیت، گزینه مناسب را انتخاب کن.','سارا از تو می پرسد اهل کجایی. در نقش روبی چه پاسخی می دهی؟','{"optionsEn":["I''m from Iran.","I''m from Canada.","My name is Ruby."],"answerIndex":0,"feedback":{"optionsFa":["روبی اهل ایران است؛ با from کشورش را می گوید.","کانادا کشور سارا است؛ الان از زبان روبی پاسخ می دهی.","این جمله اسم را می گوید؛ سوال درباره کشور است."],"correctFa":"روبی اهل ایران است؛ با from کشورش را می گوید."}}','{"learningDemand":"changed_context","purpose":"changed_context","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A07',7,'speak','این بار پاسخ آماده نداری. خودت جمله را بگو یا بنویس.','روبی هستی. کشور خودت را گفته ای؛ حالا از سارا بپرس اهل کجاست.','{"mode":"retrieval","textEn":"Where are you from?","acceptedAnswersEn":["Where are you from?"],"sourceTurnKey":"T05","showAnswerTextBeforeAttempt":false,"hintFa":"الگویی را به کار ببر که درباره اهل کجا بودن می پرسد.","feedback":{"correctFa":"پاسخت با یکی از الگوهای این تمرین هماهنگ است.","retryFa":"الگویی را به کار ببر که درباره اهل کجا بودن می پرسد."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session bounded pattern recall; not open-ended proficiency or pronunciation assessment."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

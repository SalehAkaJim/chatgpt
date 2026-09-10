-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0128
-- levelKey: A1
-- sourceHash: a64709a8da0a29799e9148e2365703194bf2b822c0f2ddae2618424e3e8a4029
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
VALUES (@level_id,'EN-A1-L-0128',128,'That guy is Sam','آن مرد سم است','با guy در گفت‌وگوی خودمانی به یک مرد اشاره کن.','EN-A1-OUTCOME-0128',420,'a64709a8da0a29799e9148e2365703194bf2b822c0f2ddae2618424e3e8a4029','validated','{"outcomeFa":"guy را در معنی خودمانی «مرد» در دو جمله کوتاه به کار ببری.","scenarioFa":"آوا و بن در کافه منتظر دوستانشان هستند و آوا دو نفر را از روی جای ایستادنشان شناسایی می‌کند.","prerequisiteOutcomeKeys":["EN-A1-OUTCOME-0127"],"curriculum":{"startingKnowledge":"early_a1_spoken_core_and_recent_review","targetConstructions":[{"key":"EN-CONSTR-0128-GUY","form":"That guy is Sam","meaningFa":"اشاره خودمانی به یک مرد"}],"supportLanguage":[{"form":"Who is that?","meaningFa":"آن کیست؟"},{"form":"And the guy by the door?","meaningFa":"مرد کنار در چطور؟"}],"assessmentBoundary":"Only the bounded informal noun sense of guy meaning a man is assessed.","transferPlan":{"mode":"same_lesson","intent":"Reuse guy with a second familiar location cue."},"story":{"arcKey":"EN-A1-CAFE","sceneKey":"EN-A1-FACTORY-SCENE-0128","learnerRoleKey":"ava","participants":["ben","ava"],"introducedCharacterKeys":[],"relationshipState":"already_known","dependsOnLessonKeys":["EN-A1-L-0123"],"continuesLessonKey":"EN-A1-L-0123","settingFa":"کافه، نزدیک ورودی","storyBeatFa":"آوا و بن در کافه منتظر دوستانشان هستند و آوا دو نفر را از روی جای ایستادنشان شناسایی می‌کند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0123","activityKeys":["A02"],"learningDemand":"retrieval","note":"Returning story arc is spaced by 5 Lessons and the played role changes from the prior scene."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0128","specHash":"6b74f794219510a33ea0d87426c8552a8ed49f101b26be9228b6bca1d728b254","grammarTargetKeys":[],"reviewLexicalLemmas":[],"usageFallbacks":[{"query":"that guy is sam","rationale":"Bounded target construction for the intended noun sense of guy."},{"query":"that guy is leo","rationale":"Changed-context learner response preserving the same bounded target sense."},{"query":"the guy by the door","rationale":"Natural target-bearing follow-up frame."}],"noNewGrammarReason":"Lexical-focus Lesson using familiar A1 sentence patterns; no new grammar is claimed."},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing","lessonArchetype":"listening_focus"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0128' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A01','A02','A03','A04','A05','A06');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),6) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),4) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-GUY-01','word','guy','guy','noun','113f1e45-481d-5fb1-a2de-17725ecbf628','مرد','nova/audio/lexical/en-fa/f4e88978dd976922a50efec5b06d4d50a0ec7249a7ddcecfbcbd7224da3c111f.mp3','783','{"referenceKey":"EN-REF-5EECAB606336BC5B2F9C"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-GUY-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ben' LIMIT 1),'Who is that?','آن کیست؟','nova/audio/turns/en-fa/EN-A1-L-0128/T01.mp3','1201',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ava' LIMIT 1),'That guy is Sam.','آن مرد سم است.','nova/audio/turns/en-fa/EN-A1-L-0128/T02.mp3','1201','That guy is Sam.','["That guy is Sam."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ben' LIMIT 1),'And the guy by the door?','مرد کنار در چطور؟','nova/audio/turns/en-fa/EN-A1-L-0128/T03.mp3','1384',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ava' LIMIT 1),'That guy is Leo.','آن مرد لیو است.','nova/audio/turns/en-fa/EN-A1-L-0128/T04.mp3','1280','That guy is Leo.','["That guy is Leo."]',NULL,'{"usage":"changed_context_transfer"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'response_choice','معنی guy را در این درس پیدا کن.','guy اینجا چه معنی‌ای دارد؟','{"options":["مرد","دست","ساعت"],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این معنی هدف درس نیست.","این گزینه با موقعیت جور نیست."],"correctFa":"مرد"}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','حرف شخصیت مقابل را گوش کن و جواب نقش خودت را بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','بخش اول گفت‌وگو را گوش کن.','آوا می‌گوید سم کدام فرد است؟','{"sourceTurnKeys":["T01","T02"],"options":["آن مرد.","آن بچه.","آن معلم."],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است.","این گفته نشد.","این با گفت‌وگو جور نیست."],"correctFa":"آن مرد."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","skillFocus":"listening"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','جمله درست را انتخاب کن.','آن مرد سم است.','{"optionsEn":["That guy is Sam.","That child is Sam.","That friend is Sam."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله سم را یک کودک معرفی می‌کند.","این جمله سم را با عنوان دوست معرفی می‌کند، نه با guy."],"correctFa":"That guy is Sam."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"That child is Sam.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما child به کودک اشاره می‌کند و معنی خودمانی guy را نمی‌رساند."},{"option":"That friend is Sam.","grammatical":true,"natural":true,"contrastReasonFa":"جمله در موقعیت اشاره به یک فرد قابل استفاده است، اما friend رابطه دوستی را می‌گوید نه guy."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','جواب موقعیت دوم را انتخاب کن.','مرد کنار در چطور؟','{"optionsEn":["That guy is Leo.","Leo is outside.","Leo is my friend."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله فقط محل لیو را می‌گوید.","این جمله فقط رابطه دوستی را بیان می‌کند."],"correctFa":"آن مرد لیو است."}}','{"learningDemand":"transfer","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"Leo is outside.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما فقط موقعیت مکانی لیو را می‌گوید و او را با guy معرفی نمی‌کند."},{"option":"Leo is my friend.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما رابطه دوستی را بیان می‌کند و پاسخ شناسایی با guy نیست."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'speak','جواب انگلیسی پنهان است؛ خودت بگو.','آوا هستی. بگو: آن مرد لیو است.','{"mode":"retrieval","textEn":"That guy is Leo.","acceptedAnswersEn":["That guy is Leo."],"sourceTurnKey":"T04","showAnswerTextBeforeAttempt":false,"hintFa":"از guy برای معنی هدف این درس استفاده کن.","feedback":{"correctFa":"درست است؛ guy را در موقعیت دوم بازیابی کردی.","retryFa":"جمله کوتاه را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session bounded retrieval in a changed controlled context."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

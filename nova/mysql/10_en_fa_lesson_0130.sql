-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0130
-- levelKey: A1
-- sourceHash: 0d85867e11d8db800a2a739031e3310a31a3fdf73154b584bc04e3089d10a97f
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
VALUES (@level_id,'EN-A1-L-0130',130,'My mind is clear now','حالا ذهنم روشن است','با mind درباره وضعیت ذهنی ساده حرف بزن.','EN-A1-OUTCOME-0130',420,'0d85867e11d8db800a2a739031e3310a31a3fdf73154b584bc04e3089d10a97f','validated','{"outcomeFa":"mind را به معنی «ذهن» در دو جمله کوتاه به کار ببری.","scenarioFa":"لیام و لیو در کتابخانه بعد از مرور برنامه امتحان درباره تمرکز و سؤال‌هایشان حرف می‌زنند.","prerequisiteOutcomeKeys":["EN-A1-OUTCOME-0129"],"curriculum":{"startingKnowledge":"early_a1_spoken_core_and_recent_review","targetConstructions":[{"key":"EN-CONSTR-0130-MIND","form":"My mind is clear now","meaningFa":"توصیف ساده وضعیت ذهن"}],"supportLanguage":[{"form":"Are you ready?","meaningFa":"آماده‌ای؟"},{"form":"And now?","meaningFa":"حالا چطور؟"}],"assessmentBoundary":"Only the bounded noun sense of mind referring to thoughts and thinking is assessed.","transferPlan":{"mode":"same_lesson","intent":"Reuse mind in a second simple mental-state description."},"story":{"arcKey":"EN-A1-LIBRARY","sceneKey":"EN-A1-FACTORY-SCENE-0130","learnerRoleKey":"leo","participants":["liam","leo"],"introducedCharacterKeys":[],"relationshipState":"already_known","dependsOnLessonKeys":["EN-A1-L-0125"],"continuesLessonKey":"EN-A1-L-0125","settingFa":"کتابخانه، میز مطالعه","storyBeatFa":"لیام و لیو در کتابخانه بعد از مرور برنامه امتحان درباره تمرکز و سؤال‌هایشان حرف می‌زنند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0125","activityKeys":["A02"],"learningDemand":"retrieval","note":"Returning story arc is spaced by 5 Lessons and the played role changes from the prior scene."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0130","specHash":"29bcd85a4f33aaa23889a1862735c5d0aed76498392abc92c180408fa3918c22","grammarTargetKeys":[],"reviewLexicalLemmas":[],"usageFallbacks":[{"query":"my mind is clear now","rationale":"Bounded target construction for the intended noun sense of mind."},{"query":"my mind is full of questions","rationale":"Natural target-bearing learner response in the first guided exchange."},{"query":"and now","rationale":"Short transfer prompt supporting the changed mental-state description."}],"noNewGrammarReason":"Lexical-focus Lesson using familiar A1 sentence patterns; no new grammar is claimed."},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing","lessonArchetype":"story_task"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0130' LIMIT 1);
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
VALUES (@course_id,'EN-LEX-MIND-01','word','mind','mind','noun','699910bc-4b6c-5b7b-82c4-ba086e49affe','ذهن','nova/audio/lexical/en-fa/9c2ccd222375932496b200f206ee12db469a58719a621ac56ce3d6f5f2a764b1.mp3','966','{"referenceKey":"EN-REF-34B22C25F41CD3FAC8AB"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-MIND-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='liam' LIMIT 1),'Are you ready?','آماده‌ای؟','nova/audio/turns/en-fa/EN-A1-L-0130/T01.mp3','1071',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='leo' LIMIT 1),'My mind is full of questions.','ذهنم پر از سؤال است.','nova/audio/turns/en-fa/EN-A1-L-0130/T02.mp3','1697','My mind is full of questions.','["My mind is full of questions."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='liam' LIMIT 1),'And now?','حالا چطور؟','nova/audio/turns/en-fa/EN-A1-L-0130/T03.mp3','862',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='leo' LIMIT 1),'My mind is clear now.','حالا ذهنم روشن است.','nova/audio/turns/en-fa/EN-A1-L-0130/T04.mp3','1515','My mind is clear now.','["My mind is clear now."]',NULL,'{"usage":"changed_context_transfer"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'response_choice','معنی mind را در این درس پیدا کن.','mind اینجا چه معنی‌ای دارد؟','{"options":["ذهن","دست","پیام"],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این معنی هدف درس نیست.","این گزینه با موقعیت جور نیست."],"correctFa":"ذهن"}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','حرف شخصیت مقابل را گوش کن و جواب نقش خودت را بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','بخش اول گفت‌وگو را گوش کن.','لیو اول درباره ذهنش چه می‌گوید؟','{"sourceTurnKeys":["T01","T02"],"options":["پر از سؤال است.","خالی از سؤال است.","خواب است."],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است.","این گفته نشد.","این با گفت‌وگو جور نیست."],"correctFa":"پر از سؤال است."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","skillFocus":"listening"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','جمله درست را انتخاب کن.','ذهنم پر از سؤال است.','{"optionsEn":["My mind is full of questions.","My bag is full of books.","My room is full of people."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله درباره کیف و کتاب‌هاست.","این جمله درباره اتاق و آدم‌هاست."],"correctFa":"My mind is full of questions."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"My bag is full of books.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما درباره محتوای کیف است و وضعیت ذهن را بیان نمی‌کند."},{"option":"My room is full of people.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما درباره اتاق است و معنی mind در این درس را نمی‌رساند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','جواب موقعیت دوم را انتخاب کن.','حالا چطور؟','{"optionsEn":["My mind is clear now.","My table is clear now.","The room is clear now."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله درباره میز است.","این جمله درباره اتاق است."],"correctFa":"حالا ذهنم روشن است."}}','{"learningDemand":"transfer","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"My table is clear now.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما clear را برای میز به کار می‌برد و درباره وضعیت ذهنی نیست."},{"option":"The room is clear now.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما درباره اتاق است و پاسخ مورد نظر با mind را نمی‌سازد."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'speak','جواب انگلیسی پنهان است؛ خودت بگو.','لیو هستی. بگو: حالا ذهنم روشن است.','{"mode":"retrieval","textEn":"My mind is clear now.","acceptedAnswersEn":["My mind is clear now."],"sourceTurnKey":"T04","showAnswerTextBeforeAttempt":false,"hintFa":"از mind برای معنی هدف این درس استفاده کن.","feedback":{"correctFa":"درست است؛ mind را در موقعیت دوم بازیابی کردی.","retryFa":"جمله کوتاه را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session bounded retrieval in a changed controlled context."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

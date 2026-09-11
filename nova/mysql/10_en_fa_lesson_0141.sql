-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0141
-- levelKey: A1
-- sourceHash: 0adae919502c609e9ee2c4459c3c435d1c1aeaf70590aa96bcffe806a27d64c8
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
VALUES (@level_id,'EN-A1-L-0141',141,'Say you are late','بگو دیر رسیده‌ای','با late و فعل be بگو کسی دیر رسیده است.','EN-A1-OUTCOME-0141',420,'0adae919502c609e9ee2c4459c3c435d1c1aeaf70590aa96bcffe806a27d64c8','validated','{"outcomeFa":"late را به معنی «دیر» در جمله‌های کوتاه با فعل be به کار ببری.","scenarioFa":"اوون و نورا در ادامه داستان همسایه ها درباره موضوع این درس گفت‌وگو می‌کنند.","prerequisiteOutcomeKeys":["EN-A1-OUTCOME-0140"],"curriculum":{"startingKnowledge":"early_a1_spoken_core_and_recent_review","targetConstructions":[{"key":"EN-CONSTR-0141-LATE","form":"I am late.","meaningFa":"جمله خبری ساده با be برای گفتن دیر بودن"}],"supportLanguage":[{"form":"Are you here?","meaningFa":"رسیدی؟"},{"form":"Is Ava late too?","meaningFa":"آوا هم دیر کرده؟"}],"assessmentBoundary":"Only late in the selected reference sense is assessed as the new lexical target; pay is review only.","transferPlan":{"mode":"same_lesson","intent":"Reuse the target in a second short context, then reactivate due lexical item pay."},"story":{"arcKey":"EN-A1-NEIGHBORS","sceneKey":"EN-A1-FACTORY-SCENE-0141","learnerRoleKey":"owen","participants":["nora","owen"],"introducedCharacterKeys":[],"relationshipState":"already_known","dependsOnLessonKeys":["EN-A1-L-0088"],"continuesLessonKey":"EN-A1-L-0088","settingFa":"ساختمان، کنار در ورودی","storyBeatFa":"اوون و نورا در ادامه داستان همسایه ها درباره موضوع این درس گفت‌وگو می‌کنند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0132","activityKeys":["A08"],"learningDemand":"recognition","note":"Due lexical review: pay is reactivated without a new-target claim."},{"lessonKey":"EN-A1-L-0088","activityKeys":["A02"],"learningDemand":"retrieval","note":"Canonical همسایه ها story returns after the required spacing and the played learner role rotates."},{"lessonKey":"EN-A1-L-0131","activityKeys":["A11"],"learningDemand":"retrieval","note":"Spaced learner retrieval of hour inside its required +3..+10 window."},{"lessonKey":"EN-A1-L-0051","activityKeys":["A12"],"learningDemand":"recognition","note":"Legacy 40-84 backlog review reactivates work without making it a new target."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0141","specHash":"9a2642ca6adbf1c3cdc7cf31599b7ef7075dab18603c1a8c12350a6f052a1c88","grammarTargetKeys":["CEFRJ-GRAM-58"],"reviewLexicalLemmas":["pay","work"],"usageFallbacks":[{"query":"I am late","rationale":"Natural short target use for the selected lexical sense and grammar."},{"query":"Is Ava late too","rationale":"Natural support-language question using late with be and too; explicit usage fallback for the committed lesson turn."},{"query":"She is late too","rationale":"Changed-information same-lesson transfer preserving the selected sense."}]},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing","lessonArchetype":"lexical_context"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0141' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A01','A02','A03','A04','A05','A06','A07','A08','A09','A10','A11','A12');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),12) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),4) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-LATE-01','word','late','late','adjective','3897d479-131e-57b8-be19-654fc004451d','دیر','nova/audio/lexical/en-fa/3355582fe32108c7de3bc69c35972399bfc7b975c2d09625836f7577e0b818e4.mp3','966','{"referenceKey":"EN-REF-242CD12A12451F88F86E"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-LATE-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-WORK-01','word','work','work','noun','activity','فعالیت، کار','nova/audio/lexical/en-fa/9db7283777cbc5d3a98417fc7c26cf7ae6855ecb99f9fb144f20419c53b581d9.mp3','835','{"referenceKey":"EN-REF-707276E9B50E98A64FDC"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-WORK-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',2,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nora' LIMIT 1),'Are you here?','رسیدی؟','nova/audio/turns/en-fa/EN-A1-L-0141/T01.mp3','966',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'Yes, but I am late.','بله، اما دیر رسیدم.','nova/audio/turns/en-fa/EN-A1-L-0141/T02.mp3','1436','Yes, but I am late.','["Yes, but I am late."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nora' LIMIT 1),'Is Ava late too?','آوا هم دیر کرده؟','nova/audio/turns/en-fa/EN-A1-L-0141/T03.mp3','1332',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'Yes, she is late too.','بله، او هم دیر کرده است.','nova/audio/turns/en-fa/EN-A1-L-0141/T04.mp3','1619','Yes, she is late too.','["Yes, she is late too."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'response_choice','معنی late را پیدا کن.','late','{"options":["دیر","زود","آماده"],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «دیر» دقیقاً پاسخ این تمرین است.","«زود» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«آماده» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"دیر"}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','گفت‌وگو را از ابتدا دنبال کن و پاسخ نقش خودت را بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','بخش اول گفت‌وگو را دوباره گوش کن.','کدام جمله در گفت‌وگو گفته شد؟','{"sourceTurnKeys":["T01","T02"],"options":["Yes, but I am late.","I am early.","I am ready."],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است؛ «Yes, but I am late.» دقیقاً پاسخ این تمرین است.","«I am early.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«I am ready.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"بله، اما دیر رسیدم."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","skillFocus":"listening","distractorAudit":{"reviewerType":"model","items":[{"option":"I am early.","grammatical":true,"natural":true,"contrastReasonFa":"معنی یا اطلاعات جمله فرق دارد."},{"option":"I am ready.","grammatical":true,"natural":true,"contrastReasonFa":"معنی یا اطلاعات جمله فرق دارد."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','جمله درست را انتخاب کن.','من دیر رسیده‌ام.','{"optionsEn":["I am late.","I am early.","I am ready."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «I am late.» دقیقاً پاسخ این تمرین است.","«I am early.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«I am ready.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"I am late."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"I am early.","grammatical":true,"natural":true,"contrastReasonFa":"معنی هدف را عوض می‌کند."},{"option":"I am ready.","grammatical":true,"natural":true,"contrastReasonFa":"معنی هدف را عوض می‌کند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','برای موقعیت دوم پاسخ درست را انتخاب کن.','او هم دیر کرده است.','{"optionsEn":["She is late too.","She is early too.","She is ready too."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «She is late too.» دقیقاً پاسخ این تمرین است.","«She is early too.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«She is ready too.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"She is late too."}}','{"learningDemand":"transfer","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"She is early too.","grammatical":true,"natural":true,"contrastReasonFa":"اطلاعات هدف را عوض می‌کند."},{"option":"She is ready too.","grammatical":true,"natural":true,"contrastReasonFa":"اطلاعات هدف را عوض می‌کند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'sentence_order','پاسخ اول را دوباره گوش کن و جمله را مرتب کن.',NULL,'{"audioSourceTurnKey":"T02","tokensEn":["late.","am","I","but","Yes,"],"answerTokensEn":["Yes,","but","I","am","late."],"answerEn":"Yes, but I am late.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"درست چیدی.","retryFa":"دوباره به پاسخ گوش کن و ترتیب جمله را بساز."}}','{"learningDemand":"supported_reconstruction","evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A07',7,'speak','پاسخ انگلیسی پنهان است؛ خودت بگو.','در نقش خودت بگو: بله، او هم دیر کرده است.','{"mode":"retrieval","textEn":"Yes, she is late too.","acceptedAnswersEn":["Yes, she is late too."],"sourceTurnKey":"T04","showAnswerTextBeforeAttempt":false,"hintFa":"از late یا ساخت هدف این درس استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"پاسخ دوم گفت‌وگو را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"The supplying dialogue is already exposed in A02."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A08',8,'response_choice','یک واژه قدیمی را مرور کن.','الان می‌توانم پرداخت کنم.','{"optionsEn":["I can pay now.","I can wait now.","I am late now."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «I can pay now.» دقیقاً پاسخ این تمرین است.","«I can wait now.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«I am late now.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"I can pay now."}}','{"learningDemand":"review","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"I can wait now.","grammatical":true,"natural":true,"contrastReasonFa":"این گزینه از نظر دستوری طبیعی است اما معنی یا اطلاعات هدف را عوض می‌کند."},{"option":"I am late now.","grammatical":true,"natural":true,"contrastReasonFa":"این گزینه از نظر دستوری طبیعی است اما معنی یا اطلاعات هدف را عوض می‌کند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A09',9,'response_choice','پاسخ درست را در یک موقعیت تازه انتخاب کن.','او دیر رسیده است.','{"optionsEn":["He is late.","He is early.","He is ready."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «He is late.» دقیقاً پاسخ این تمرین است.","«He is early.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«He is ready.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"He is late."}}','{"learningDemand":"transfer","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"He is early.","grammatical":true,"natural":true,"contrastReasonFa":"این گزینه از نظر دستوری درست است اما معنی هدف را عوض می‌کند."},{"option":"He is ready.","grammatical":true,"natural":true,"contrastReasonFa":"این گزینه از نظر دستوری درست است اما معنی هدف را عوض می‌کند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A10',10,'speak','پاسخ اول را بدون دیدن متن دوباره بگو.','بله، اما دیر رسیدم.','{"mode":"retrieval","textEn":"Yes, but I am late.","acceptedAnswersEn":["Yes, but I am late."],"sourceTurnKey":"T02","showAnswerTextBeforeAttempt":false,"hintFa":"از late یا ساخت هدف این درس استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"پاسخ اول گفت‌وگو را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"The exact supplying turn is already exposed in A02."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A11',11,'speak','یک جمله از درس‌های قبلی را از حافظه بازیابی کن.','مرور فاصله‌دار: «یک ساعت طول می‌کشد.» را به انگلیسی بگو.','{"mode":"retrieval","textEn":"It takes an hour.","acceptedAnswersEn":["It takes an hour."],"showAnswerTextBeforeAttempt":false,"hintFa":"از hour استفاده کن.","feedback":{"correctFa":"درست است؛ واژه قدیمی را دوباره از حافظه بازیابی کردی.","retryFa":"جمله کوتاه قبلی را از حافظه دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Spaced retrieval of a previously taught bounded target."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A12',12,'lexical_teach','واژه قدیمی work را یک بار مرور کن.',NULL,'{"lexicalKeys":["EN-LEX-WORK-01"]}','{"learningDemand":"review","evidenceKind":"review_exposure"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

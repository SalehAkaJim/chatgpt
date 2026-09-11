-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0144
-- levelKey: A1
-- sourceHash: fa260c8cc3660a15423de065c3b32f8cdd82aa351ef1b3860d4a5f855588f387
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
VALUES (@level_id,'EN-A1-L-0144',144,'Ask for the reason','دلیل را بپرس','با reason درباره دلیل یک اتفاق پرسش کن.','EN-A1-OUTCOME-0144',420,'fa260c8cc3660a15423de065c3b32f8cdd82aa351ef1b3860d4a5f855588f387','validated','{"outcomeFa":"reason را به معنی «دلیل» در یک پرسش کوتاه با be به کار ببری.","scenarioFa":"بن و آوا در ادامه داستان کافه درباره موضوع این درس گفت‌وگو می‌کنند.","prerequisiteOutcomeKeys":["EN-A1-OUTCOME-0143"],"curriculum":{"startingKnowledge":"early_a1_spoken_core_and_recent_review","targetConstructions":[{"key":"EN-CONSTR-0144-REASON","form":"Is this the reason?","meaningFa":"پرسش بله یا خیر با be برای پرسیدن درباره دلیل"}],"supportLanguage":[{"form":"The meeting is later today.","meaningFa":"جلسه امروز دیرتر است."},{"form":"No. The room is full.","meaningFa":"نه. اتاق پر است."}],"assessmentBoundary":"Only reason in the selected reference sense is assessed as the new lexical target; problem is review only.","transferPlan":{"mode":"same_lesson","intent":"Reuse the target in a second short context, then reactivate due lexical item problem."},"story":{"arcKey":"EN-A1-CAFE","sceneKey":"EN-A1-FACTORY-SCENE-0144","learnerRoleKey":"ben","participants":["ava","ben"],"introducedCharacterKeys":[],"relationshipState":"already_known","dependsOnLessonKeys":["EN-A1-L-0138"],"continuesLessonKey":"EN-A1-L-0138","settingFa":"کافه، کنار پیشخوان","storyBeatFa":"بن و آوا در ادامه داستان کافه درباره موضوع این درس گفت‌وگو می‌کنند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0133","activityKeys":["A08"],"learningDemand":"recognition","note":"Due lexical review: problem is reactivated without a new-target claim."},{"lessonKey":"EN-A1-L-0138","activityKeys":["A02"],"learningDemand":"retrieval","note":"Canonical کافه story returns after the required spacing and the played learner role rotates."},{"lessonKey":"EN-A1-L-0134","activityKeys":["A11"],"learningDemand":"retrieval","note":"Spaced learner retrieval of pretty inside its required +3..+10 window."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0144","specHash":"19451e7f5d995fd80a532069d1a13e819840fe2b3efe00974aefc345bf944db4","grammarTargetKeys":[],"noNewGrammarReason":"This lesson introduces no new grammar; it reuses the previously introduced interrogative be pattern to practice the new lexical target reason.","reviewLexicalLemmas":["problem"],"usageFallbacks":[{"query":"Is this the reason","rationale":"Natural short target use for the selected lexical sense and previously exposed interrogative be pattern."},{"query":"Is that the reason","rationale":"Changed-information same-lesson transfer preserving the selected sense."}]},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing","lessonArchetype":"functional_exchange"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0144' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A01','A02','A03','A04','A05','A06','A07','A08','A09','A10','A11');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),11) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),4) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-REASON-01','word','reason','reason','noun','12a23740-e3b5-53d7-85a3-61d49b6139eb','دلیل','nova/audio/lexical/en-fa/385a5d038694cb52438eeef8f4d21142cf1434e78501333ebaf5586814a6a977.mp3','914','{"referenceKey":"EN-REF-AC01B235A288B0F57DBB"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-REASON-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ava' LIMIT 1),'The meeting is later today.','جلسه امروز دیرتر است.','nova/audio/turns/en-fa/EN-A1-L-0144/T01.mp3','1567',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ben' LIMIT 1),'Is this the reason?','این دلیلش است؟','nova/audio/turns/en-fa/EN-A1-L-0144/T02.mp3','1071','Is this the reason?','["Is this the reason?"]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ava' LIMIT 1),'No. The room is full.','نه. اتاق پر است.','nova/audio/turns/en-fa/EN-A1-L-0144/T03.mp3','1384',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ben' LIMIT 1),'Is that the reason?','آن دلیلش است؟','nova/audio/turns/en-fa/EN-A1-L-0144/T04.mp3','1280','Is that the reason?','["Is that the reason?"]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'response_choice','معنی reason را پیدا کن.','reason','{"options":["دلیل","پاسخ","اتاق"],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «دلیل» دقیقاً پاسخ این تمرین است.","«پاسخ» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«اتاق» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"دلیل"}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','گفت‌وگو را از ابتدا دنبال کن و پاسخ نقش خودت را بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','بخش اول گفت‌وگو را دوباره گوش کن.','کدام جمله در گفت‌وگو گفته شد؟','{"sourceTurnKeys":["T01","T02"],"options":["Is this the reason?","Is this the answer?","Is this the room?"],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است؛ «Is this the reason?» دقیقاً پاسخ این تمرین است.","«Is this the answer?» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«Is this the room?» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"این دلیلش است؟"}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","skillFocus":"listening","distractorAudit":{"reviewerType":"model","items":[{"option":"Is this the answer?","grammatical":true,"natural":true,"contrastReasonFa":"معنی یا اطلاعات جمله فرق دارد."},{"option":"Is this the room?","grammatical":true,"natural":true,"contrastReasonFa":"معنی یا اطلاعات جمله فرق دارد."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','جمله درست را انتخاب کن.','این دلیلش است؟','{"optionsEn":["Is this the reason?","Is this the answer?","Is this the room?"],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «Is this the reason?» دقیقاً پاسخ این تمرین است.","«Is this the answer?» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«Is this the room?» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"Is this the reason?"}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"Is this the answer?","grammatical":true,"natural":true,"contrastReasonFa":"معنی هدف را عوض می‌کند."},{"option":"Is this the room?","grammatical":true,"natural":true,"contrastReasonFa":"معنی هدف را عوض می‌کند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','برای موقعیت دوم پاسخ درست را انتخاب کن.','آن دلیلش است؟','{"optionsEn":["Is that the reason?","Is that the answer?","Is that the room?"],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «Is that the reason?» دقیقاً پاسخ این تمرین است.","«Is that the answer?» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«Is that the room?» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"Is that the reason?"}}','{"learningDemand":"transfer","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"Is that the answer?","grammatical":true,"natural":true,"contrastReasonFa":"اطلاعات هدف را عوض می‌کند."},{"option":"Is that the room?","grammatical":true,"natural":true,"contrastReasonFa":"اطلاعات هدف را عوض می‌کند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'sentence_order','پاسخ اول را دوباره گوش کن و جمله را مرتب کن.',NULL,'{"audioSourceTurnKey":"T02","tokensEn":["reason?","the","this","Is"],"answerTokensEn":["Is","this","the","reason?"],"answerEn":"Is this the reason?","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"درست چیدی.","retryFa":"دوباره به پاسخ گوش کن و ترتیب جمله را بساز."}}','{"learningDemand":"supported_reconstruction","evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A07',7,'speak','پاسخ انگلیسی پنهان است؛ خودت بگو.','در نقش خودت بگو: آن دلیلش است؟','{"mode":"retrieval","textEn":"Is that the reason?","acceptedAnswersEn":["Is that the reason?"],"sourceTurnKey":"T04","showAnswerTextBeforeAttempt":false,"hintFa":"از reason یا ساخت هدف این درس استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"پاسخ دوم گفت‌وگو را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"The supplying dialogue is already exposed in A02."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A08',8,'response_choice','یک واژه قدیمی را مرور کن.','این مشکل است؟','{"optionsEn":["Is this the problem?","Is this the reason?","This is late."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «Is this the problem?» دقیقاً پاسخ این تمرین است.","«Is this the reason?» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«This is late.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"Is this the problem?"}}','{"learningDemand":"review","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"Is this the reason?","grammatical":true,"natural":true,"contrastReasonFa":"این گزینه از نظر دستوری طبیعی است اما معنی یا اطلاعات هدف را عوض می‌کند."},{"option":"This is late.","grammatical":true,"natural":true,"contrastReasonFa":"این گزینه از نظر دستوری طبیعی است اما معنی یا اطلاعات هدف را عوض می‌کند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A09',9,'response_choice','پاسخ درست را در یک موقعیت تازه انتخاب کن.','دلیل را می‌دانم.','{"optionsEn":["I know the reason.","I know the answer.","I know the room."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «I know the reason.» دقیقاً پاسخ این تمرین است.","«I know the answer.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«I know the room.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"I know the reason."}}','{"learningDemand":"transfer","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"I know the answer.","grammatical":true,"natural":true,"contrastReasonFa":"این گزینه از نظر دستوری درست است اما معنی هدف را عوض می‌کند."},{"option":"I know the room.","grammatical":true,"natural":true,"contrastReasonFa":"این گزینه از نظر دستوری درست است اما معنی هدف را عوض می‌کند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A10',10,'speak','پاسخ اول را بدون دیدن متن دوباره بگو.','این دلیلش است؟','{"mode":"retrieval","textEn":"Is this the reason?","acceptedAnswersEn":["Is this the reason?"],"sourceTurnKey":"T02","showAnswerTextBeforeAttempt":false,"hintFa":"از reason یا ساخت هدف این درس استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"پاسخ اول گفت‌وگو را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"The exact supplying turn is already exposed in A02."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A11',11,'speak','یک جمله از درس‌های قبلی را از حافظه بازیابی کن.','مرور فاصله‌دار: «آبی زیبا به نظر می‌رسد.» را به انگلیسی بگو.','{"mode":"retrieval","textEn":"The blue one looks pretty.","acceptedAnswersEn":["The blue one looks pretty."],"showAnswerTextBeforeAttempt":false,"hintFa":"از pretty استفاده کن.","feedback":{"correctFa":"درست است؛ واژه قدیمی را دوباره از حافظه بازیابی کردی.","retryFa":"جمله کوتاه قبلی را از حافظه دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Spaced retrieval of a previously taught bounded target."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

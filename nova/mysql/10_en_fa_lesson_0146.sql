-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0146
-- levelKey: A1
-- sourceHash: 189870e0e5010a9c96ab8805037a8bf21048c79a92ed1e6ed0be80fd23c53a32
-- courseSourceHash: 0844b2550b04500e66abf83eb518159538f3aea9754b06ba03e44072b0a673a1
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
VALUES (@level_id,'EN-A1-L-0146',146,'Say there is a plan','بگو یک برنامه وجود دارد','با plan و there is درباره یک برنامه موجود حرف بزن.','EN-A1-OUTCOME-0146',420,'189870e0e5010a9c96ab8805037a8bf21048c79a92ed1e6ed0be80fd23c53a32','validated','{"outcomeFa":"plan را به معنی «برنامه» در جمله‌های ساده با there is به کار ببری.","scenarioFa":"در کتابخانه، نزدیک میز اطلاعات، لیو می‌گوید «برای امروز چه داریم؟» و لیام پاسخ می‌دهد «برای امروز یک برنامه داریم.»","prerequisiteOutcomeKeys":["EN-A1-OUTCOME-0145"],"curriculum":{"startingKnowledge":"early_a1_spoken_core_and_recent_review","targetConstructions":[{"key":"EN-CONSTR-0146-PLAN","form":"There is a plan for today.","meaningFa":"there is برای گفتن وجود داشتن یک برنامه"}],"supportLanguage":[{"form":"What do we have for today?","meaningFa":"برای امروز چه داریم؟"},{"form":"And for tomorrow?","meaningFa":"و برای فردا؟"}],"assessmentBoundary":"Only plan in the selected reference sense is assessed as the new lexical target; make is review only.","transferPlan":{"mode":"same_lesson","intent":"Reuse the target in a second short context, then reactivate legacy lexical item make."},"story":{"arcKey":"EN-A1-LIBRARY","sceneKey":"EN-A1-FACTORY-SCENE-0146","learnerRoleKey":"liam","participants":["leo","liam"],"introducedCharacterKeys":[],"relationshipState":"already_known","dependsOnLessonKeys":["EN-A1-L-0140"],"continuesLessonKey":"EN-A1-L-0140","settingFa":"کتابخانه، نزدیک میز اطلاعات","storyBeatFa":"لیو با «برای امروز چه داریم؟» گفت‌وگو را شروع می‌کند، لیام می‌گوید «برای امروز یک برنامه داریم.»؛ بعد لیو می‌گوید «و برای فردا؟» و لیام با «برای فردا هم یک برنامه هست.» پاسخ می‌دهد."},"reviewLinks":[{"lessonKey":"EN-A1-L-0041","activityKeys":["A08"],"learningDemand":"recognition","note":"Legacy review: make is reactivated without a new-target claim."},{"lessonKey":"EN-A1-L-0140","activityKeys":["A02"],"learningDemand":"retrieval","note":"Canonical کتابخانه story returns after the required spacing and the played learner role rotates."},{"lessonKey":"EN-A1-L-0136","activityKeys":["A11"],"learningDemand":"retrieval","note":"Spaced learner retrieval of idea inside its required +3..+10 window."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0146","specHash":"681d13a9c28382a5a7713fb90e739130f3023fcb3ac2dd4ff70e2ed26059a67d","grammarTargetKeys":["CEFRJ-GRAM-146"],"reviewLexicalLemmas":["make"],"usageFallbacks":[{"query":"There is a plan for today","rationale":"Natural short target use for the selected lexical sense and grammar."},{"query":"There is a plan for tomorrow too","rationale":"Changed-information same-lesson transfer preserving the selected sense."}]},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing","lessonArchetype":"review_recombination"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0146' LIMIT 1);
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
VALUES (@course_id,'EN-LEX-PLAN-01','word','plan','plan','noun','f5b0e619-e1bc-5000-8250-73be4b9ae88d','برنامه','nova/audio/lexical/en-fa/3c623902bbf8b8b017d57afd61deb359adfb9e9ced928f799948e2a41d37f6a0.mp3','966','{"referenceKey":"EN-REF-79C0C6E6180932A0CEED"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-PLAN-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-MAKE-01','word','make','make','verb','engage_in','انجام دادن','nova/audio/lexical/en-fa/c3783e6363e0b622e7e28558826e7c1645e149ba32fd2894db8d0324711e15ed.mp3','731','{"referenceKey":"EN-REF-39C6EB767664D6211984"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-MAKE-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',2,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='leo' LIMIT 1),'What do we have for today?','برای امروز چه داریم؟','nova/audio/turns/en-fa/EN-A1-L-0146/T01.mp3','1488',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='liam' LIMIT 1),'There is a plan for today.','برای امروز یک برنامه داریم.','nova/audio/turns/en-fa/EN-A1-L-0146/T02.mp3','1802','There is a plan for today.','["There is a plan for today."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='leo' LIMIT 1),'And for tomorrow?','و برای فردا؟','nova/audio/turns/en-fa/EN-A1-L-0146/T03.mp3','1201',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='liam' LIMIT 1),'There is a plan for tomorrow too.','برای فردا هم یک برنامه هست.','nova/audio/turns/en-fa/EN-A1-L-0146/T04.mp3','2089','There is a plan for tomorrow too.','["There is a plan for tomorrow too."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'response_choice','معنی plan را پیدا کن.','plan','{"options":["برنامه","مشکل","اتاق"],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «برنامه» دقیقاً پاسخ این تمرین است.","«مشکل» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«اتاق» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"برنامه"}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','گفت‌وگو را از ابتدا دنبال کن و پاسخ نقش خودت را بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','بخش اول گفت‌وگو را دوباره گوش کن.','کدام جمله در گفت‌وگو گفته شد؟','{"sourceTurnKeys":["T01","T02"],"options":["There is a plan for today.","There is a meeting today.","There is a problem today."],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است؛ «There is a plan for today.» دقیقاً پاسخ این تمرین است.","«There is a meeting today.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«There is a problem today.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"برای امروز یک برنامه داریم."},"practiceOnly":true}','{"learningDemand":"recognition","evidenceKind":"practice_only","skillFocus":"listening","distractorAudit":{"reviewerType":"model","items":[{"option":"There is a meeting today.","grammatical":true,"natural":true,"contrastReasonFa":"معنی یا اطلاعات جمله فرق دارد."},{"option":"There is a problem today.","grammatical":true,"natural":true,"contrastReasonFa":"معنی یا اطلاعات جمله فرق دارد."}]},"qualityV3PracticeReason":"duplicate_exact_target_sentence"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','جمله درست را انتخاب کن.','برای امروز یک برنامه داریم.','{"optionsEn":["There is a plan for today.","There is a meeting today.","There is a problem today."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «There is a plan for today.» دقیقاً پاسخ این تمرین است.","«There is a meeting today.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«There is a problem today.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"There is a plan for today."},"practiceOnly":true}','{"learningDemand":"recognition","evidenceKind":"practice_only","distractorAudit":{"reviewerType":"model","items":[{"option":"There is a meeting today.","grammatical":true,"natural":true,"contrastReasonFa":"معنی هدف را عوض می‌کند."},{"option":"There is a problem today.","grammatical":true,"natural":true,"contrastReasonFa":"معنی هدف را عوض می‌کند."}]},"qualityV3PracticeReason":"duplicate_exact_target_sentence"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','برای موقعیت دوم پاسخ درست را انتخاب کن.','برای فردا هم یک برنامه هست.','{"optionsEn":["There is a plan for tomorrow too.","There is a meeting tomorrow too.","There is a problem tomorrow too."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «There is a plan for tomorrow too.» دقیقاً پاسخ این تمرین است.","«There is a meeting tomorrow too.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«There is a problem tomorrow too.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"There is a plan for tomorrow too."},"practiceOnly":true}','{"learningDemand":"transfer","evidenceKind":"practice_only","distractorAudit":{"reviewerType":"model","items":[{"option":"There is a meeting tomorrow too.","grammatical":true,"natural":true,"contrastReasonFa":"اطلاعات هدف را عوض می‌کند."},{"option":"There is a problem tomorrow too.","grammatical":true,"natural":true,"contrastReasonFa":"اطلاعات هدف را عوض می‌کند."}]},"qualityV3PracticeReason":"duplicate_exact_target_sentence"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'sentence_order','پاسخ اول را دوباره گوش کن و جمله را مرتب کن.',NULL,'{"audioSourceTurnKey":"T02","tokensEn":["today.","for","plan","a","is","There"],"answerTokensEn":["There","is","a","plan","for","today."],"answerEn":"There is a plan for today.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"درست چیدی.","retryFa":"دوباره به پاسخ گوش کن و ترتیب جمله را بساز."}}','{"learningDemand":"supported_reconstruction","evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A07',7,'speak','پاسخ انگلیسی پنهان است؛ خودت بگو.','در نقش خودت بگو: برای فردا هم یک برنامه هست.','{"mode":"retrieval","textEn":"There is a plan for tomorrow too.","acceptedAnswersEn":["There is a plan for tomorrow too."],"sourceTurnKey":"T04","showAnswerTextBeforeAttempt":false,"hintFa":"از plan یا ساخت هدف این درس استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"پاسخ دوم گفت‌وگو را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"The supplying dialogue is already exposed in A02."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A08',8,'response_choice','یک واژه قدیمی را مرور کن.','این کار را انجام می‌دهم.','{"optionsEn":["I make the call.","I take the call.","I miss the call."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «I make the call.» دقیقاً پاسخ این تمرین است.","«I take the call.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«I miss the call.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"I make the call."}}','{"learningDemand":"review","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"I take the call.","grammatical":true,"natural":true,"contrastReasonFa":"این گزینه معنی دیگری دارد و واژه مرور هدف را به کار نمی‌برد."},{"option":"I miss the call.","grammatical":true,"natural":true,"contrastReasonFa":"این گزینه معنی دیگری دارد و واژه مرور هدف را به کار نمی‌برد."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A09',9,'response_choice','پاسخ درست را در یک موقعیت تازه انتخاب کن.','این برنامه ساده است.','{"optionsEn":["This plan is simple.","This meeting is simple.","This problem is simple."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «This plan is simple.» دقیقاً پاسخ این تمرین است.","«This meeting is simple.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«This problem is simple.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"This plan is simple."}}','{"learningDemand":"transfer","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"This meeting is simple.","grammatical":true,"natural":true,"contrastReasonFa":"این گزینه از نظر دستوری درست است اما معنی هدف را عوض می‌کند."},{"option":"This problem is simple.","grammatical":true,"natural":true,"contrastReasonFa":"این گزینه از نظر دستوری درست است اما معنی هدف را عوض می‌کند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A10',10,'speak','پاسخ اول را بدون دیدن متن دوباره بگو.','برای امروز یک برنامه داریم.','{"mode":"retrieval","textEn":"There is a plan for today.","acceptedAnswersEn":["There is a plan for today."],"sourceTurnKey":"T02","showAnswerTextBeforeAttempt":false,"hintFa":"از plan یا ساخت هدف این درس استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"پاسخ اول گفت‌وگو را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"The exact supplying turn is already exposed in A02."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A11',11,'speak','یک جمله از درس‌های قبلی را از حافظه بازیابی کن.','مرور فاصله‌دار: «بله. ایده خوبی است.» را به انگلیسی بگو.','{"mode":"retrieval","textEn":"Yes. It is a good idea.","acceptedAnswersEn":["Yes. It is a good idea.","Yes. It''s a good idea."],"showAnswerTextBeforeAttempt":false,"hintFa":"از idea استفاده کن.","feedback":{"correctFa":"درست است؛ واژه قدیمی را دوباره از حافظه بازیابی کردی.","retryFa":"جمله کوتاه قبلی را از حافظه دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Spaced retrieval of a previously taught bounded target."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

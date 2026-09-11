-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0143
-- levelKey: A1
-- sourceHash: ade283321a055c343017716007d68cbc5fb80a949f8f97286669d1954f343314
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
VALUES (@level_id,'EN-A1-L-0143',143,'Ask the price and buy','قیمت را بپرس و خرید کن','با buy درباره خرید حرف بزن و با How much قیمت را بپرس.','EN-A1-OUTCOME-0143',420,'ade283321a055c343017716007d68cbc5fb80a949f8f97286669d1954f343314','validated','{"outcomeFa":"buy را به معنی «خریدن» به کار ببری و قیمت را با How much بپرسی.","scenarioFa":"در مرکز آموزشی، کنار تقویم، الکس می‌گوید «این دفتر را دوست داری؟» و مایا پاسخ می‌دهد «بله. قیمتش چقدر است؟»","prerequisiteOutcomeKeys":["EN-A1-OUTCOME-0142"],"curriculum":{"startingKnowledge":"early_a1_spoken_core_and_recent_review","targetConstructions":[{"key":"EN-CONSTR-0143-BUY","form":"How much is it?","meaningFa":"پرسش با How much برای پرسیدن قیمت"}],"supportLanguage":[{"form":"Do you like this notebook?","meaningFa":"این دفتر را دوست داری؟"},{"form":"It is five euros.","meaningFa":"پنج یورو است."}],"assessmentBoundary":"Only buy in the selected reference sense is assessed as the new lexical target; pay is review only.","transferPlan":{"mode":"same_lesson","intent":"Reuse the target in a second short context, then reactivate due lexical item pay."},"story":{"arcKey":"EN-A1-CLASSMATES","sceneKey":"EN-A1-FACTORY-SCENE-0143","learnerRoleKey":"maya","participants":["alex","maya"],"introducedCharacterKeys":[],"relationshipState":"already_known","dependsOnLessonKeys":["EN-A1-L-0137"],"continuesLessonKey":"EN-A1-L-0137","settingFa":"مرکز آموزشی، کنار تقویم","storyBeatFa":"الکس با «این دفتر را دوست داری؟» گفت‌وگو را شروع می‌کند، مایا می‌گوید «بله. قیمتش چقدر است؟»؛ بعد الکس می‌گوید «پنج یورو است.» و مایا با «عالی است. می‌خواهم آن را بخرم.» پاسخ می‌دهد."},"reviewLinks":[{"lessonKey":"EN-A1-L-0132","activityKeys":["A08"],"learningDemand":"recognition","note":"Due lexical review: pay is reactivated without a new-target claim."},{"lessonKey":"EN-A1-L-0137","activityKeys":["A02"],"learningDemand":"retrieval","note":"Canonical همکلاسی ها story returns after the required spacing and the played learner role rotates."},{"lessonKey":"EN-A1-L-0133","activityKeys":["A11"],"learningDemand":"retrieval","note":"Spaced learner retrieval of problem inside its required +3..+10 window."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0143","specHash":"18f1582c64ec9f8349d7e7808c280a7106df200497ca3a2b8eb9126ce1dc6ed6","grammarTargetKeys":["CEFRJ-GRAM-247"],"reviewLexicalLemmas":["pay"],"usageFallbacks":[{"query":"I want to buy it","rationale":"Natural short target use for the selected lexical sense and grammar."},{"query":"How much is it","rationale":"Changed-information same-lesson transfer preserving the selected sense."}]},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing","lessonArchetype":"functional_exchange"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0143' LIMIT 1);
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
VALUES (@course_id,'EN-LEX-BUY-01','word','buy','buy','verb','77958d70-a0e1-5358-bbbb-010ae689213f','خریدن','nova/audio/lexical/en-fa/85e811a5494c4464ac2d78ad9fe6f92c5bd81bd9809c10facb66cced3ae9f00a.mp3','783','{"referenceKey":"EN-REF-C211A6110CA02B9D7502"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-BUY-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='alex' LIMIT 1),'Do you like this notebook?','این دفتر را دوست داری؟','nova/audio/turns/en-fa/EN-A1-L-0143/T01.mp3','1488',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'Yes. How much is it?','بله. قیمتش چقدر است؟','nova/audio/turns/en-fa/EN-A1-L-0143/T02.mp3','1436','Yes. How much is it?','["Yes. How much is it?"]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='alex' LIMIT 1),'It is five euros.','پنج یورو است.','nova/audio/turns/en-fa/EN-A1-L-0143/T03.mp3','1515',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'Great. I want to buy it.','عالی است. می‌خواهم آن را بخرم.','nova/audio/turns/en-fa/EN-A1-L-0143/T04.mp3','1515','Great. I want to buy it.','["Great. I want to buy it."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'response_choice','معنی buy را پیدا کن.','buy','{"options":["خریدن","فروختن","دیدن"],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «خریدن» دقیقاً پاسخ این تمرین است.","«فروختن» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«دیدن» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"خریدن"}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','گفت‌وگو را از ابتدا دنبال کن و پاسخ نقش خودت را بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','بخش اول گفت‌وگو را دوباره گوش کن.','کدام جمله در گفت‌وگو گفته شد؟','{"sourceTurnKeys":["T01","T02"],"options":["Yes. How much is it?","I want to sell it.","I want to see it."],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است؛ «Yes. How much is it?» دقیقاً پاسخ این تمرین است.","«I want to sell it.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«I want to see it.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"بله. قیمتش چقدر است؟"},"practiceOnly":true}','{"learningDemand":"recognition","evidenceKind":"practice_only","skillFocus":"listening","distractorAudit":{"reviewerType":"model","items":[{"option":"I want to sell it.","grammatical":true,"natural":true,"contrastReasonFa":"معنی یا اطلاعات جمله فرق دارد."},{"option":"I want to see it.","grammatical":true,"natural":true,"contrastReasonFa":"معنی یا اطلاعات جمله فرق دارد."}]},"qualityV3PracticeReason":"duplicate_exact_target_sentence"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','جمله درست را انتخاب کن.','می‌خواهم آن را بخرم.','{"optionsEn":["I want to buy it.","I want to sell it.","I want to see it."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «I want to buy it.» دقیقاً پاسخ این تمرین است.","«I want to sell it.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«I want to see it.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"I want to buy it."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"I want to sell it.","grammatical":true,"natural":true,"contrastReasonFa":"معنی هدف را عوض می‌کند."},{"option":"I want to see it.","grammatical":true,"natural":true,"contrastReasonFa":"معنی هدف را عوض می‌کند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','برای موقعیت دوم پاسخ درست را انتخاب کن.','قیمتش چقدر است؟','{"optionsEn":["How much is it?","How old is it?","Where is it?"],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «How much is it?» دقیقاً پاسخ این تمرین است.","«How old is it?» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«Where is it?» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"How much is it?"}}','{"learningDemand":"transfer","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"How old is it?","grammatical":true,"natural":true,"contrastReasonFa":"اطلاعات هدف را عوض می‌کند."},{"option":"Where is it?","grammatical":true,"natural":true,"contrastReasonFa":"اطلاعات هدف را عوض می‌کند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'sentence_order','پاسخ اول را دوباره گوش کن و جمله را مرتب کن.',NULL,'{"audioSourceTurnKey":"T02","tokensEn":["it?","is","much","How","Yes."],"answerTokensEn":["Yes.","How","much","is","it?"],"answerEn":"Yes. How much is it?","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"درست چیدی.","retryFa":"دوباره به پاسخ گوش کن و ترتیب جمله را بساز."}}','{"learningDemand":"supported_reconstruction","evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A07',7,'speak','پاسخ انگلیسی پنهان است؛ خودت بگو.','در نقش خودت بگو: عالی است. می‌خواهم آن را بخرم.','{"mode":"retrieval","textEn":"Great. I want to buy it.","acceptedAnswersEn":["Great. I want to buy it."],"sourceTurnKey":"T04","showAnswerTextBeforeAttempt":false,"hintFa":"از buy یا ساخت هدف این درس استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"پاسخ دوم گفت‌وگو را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"The supplying dialogue is already exposed in A02."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A08',8,'response_choice','یک واژه قدیمی را مرور کن.','می‌توانم الان پرداخت کنم.','{"optionsEn":["I can pay now.","I can buy tomorrow.","I like the price."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «I can pay now.» دقیقاً پاسخ این تمرین است.","«I can buy tomorrow.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«I like the price.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"I can pay now."}}','{"learningDemand":"review","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"I can buy tomorrow.","grammatical":true,"natural":true,"contrastReasonFa":"این گزینه از نظر دستوری طبیعی است اما معنی یا اطلاعات هدف را عوض می‌کند."},{"option":"I like the price.","grammatical":true,"natural":true,"contrastReasonFa":"این گزینه از نظر دستوری طبیعی است اما معنی یا اطلاعات هدف را عوض می‌کند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A09',9,'response_choice','پاسخ درست را در یک موقعیت تازه انتخاب کن.','می‌خواهم یک کتاب بخرم.','{"optionsEn":["I want to buy a book.","I want to sell a book.","I want to read a book."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ «I want to buy a book.» دقیقاً پاسخ این تمرین است.","«I want to sell a book.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد.","«I want to read a book.» از نظر معنی یا اطلاعات با پاسخ هدف این تمرین فرق دارد."],"correctFa":"I want to buy a book."}}','{"learningDemand":"transfer","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"I want to sell a book.","grammatical":true,"natural":true,"contrastReasonFa":"این گزینه از نظر دستوری درست است اما معنی هدف را عوض می‌کند."},{"option":"I want to read a book.","grammatical":true,"natural":true,"contrastReasonFa":"این گزینه از نظر دستوری درست است اما معنی هدف را عوض می‌کند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A10',10,'speak','پاسخ اول را بدون دیدن متن دوباره بگو.','بله. قیمتش چقدر است؟','{"mode":"retrieval","textEn":"Yes. How much is it?","acceptedAnswersEn":["Yes. How much is it?"],"sourceTurnKey":"T02","showAnswerTextBeforeAttempt":false,"hintFa":"از buy یا ساخت هدف این درس استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"پاسخ اول گفت‌وگو را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"The exact supplying turn is already exposed in A02."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A11',11,'speak','یک جمله از درس‌های قبلی را از حافظه بازیابی کن.','مرور فاصله‌دار: «بله. مشکل کوچک است.» را به انگلیسی بگو.','{"mode":"retrieval","textEn":"Yes. The problem is small.","acceptedAnswersEn":["Yes. The problem is small."],"showAnswerTextBeforeAttempt":false,"hintFa":"از problem استفاده کن.","feedback":{"correctFa":"درست است؛ واژه قدیمی را دوباره از حافظه بازیابی کردی.","retryFa":"جمله کوتاه قبلی را از حافظه دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Spaced retrieval of a previously taught bounded target."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

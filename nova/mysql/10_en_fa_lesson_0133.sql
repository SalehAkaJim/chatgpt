-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0133
-- levelKey: A1
-- sourceHash: 5704955fa269ce8981d7c4ea99eede14a97b8a0bd18c1cb67454fdfb1c78e696
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
VALUES (@level_id,'EN-A1-L-0133',133,'The problem is small','مشکل کوچک است','با problem در یک موقعیت ساده و کاربردی حرف بزن.','EN-A1-OUTCOME-0133',420,'5704955fa269ce8981d7c4ea99eede14a97b8a0bd18c1cb67454fdfb1c78e696','validated','{"outcomeFa":"problem را به معنی «مشکل» در دو جمله کوتاه و طبیعی به کار ببری.","scenarioFa":"آوا و بن در کافه درباره مشکل کوچکی در سفارش و راه‌حل ساده آن حرف می‌زنند.","prerequisiteOutcomeKeys":["EN-A1-OUTCOME-0132"],"curriculum":{"startingKnowledge":"early_a1_spoken_core_and_recent_review","targetConstructions":[{"key":"EN-CONSTR-0133-PROBLEM","form":"The problem is small","meaningFa":"توصیف ساده یک مشکل"}],"supportLanguage":[{"form":"Is there a problem?","meaningFa":"مشکلی هست؟"},{"form":"And this one?","meaningFa":"این یکی چطور؟"}],"assessmentBoundary":"Only the bounded noun sense of problem represented by reference EN-REF-1319241A7CB143D65116 is assessed.","transferPlan":{"mode":"same_lesson","intent":"Reuse problem in a second controlled context after guided exposure."},"story":{"arcKey":"EN-A1-CAFE","sceneKey":"EN-A1-FACTORY-SCENE-0133","learnerRoleKey":"ben","participants":["ava","ben"],"introducedCharacterKeys":[],"relationshipState":"already_known","dependsOnLessonKeys":["EN-A1-L-0128"],"continuesLessonKey":"EN-A1-L-0128","settingFa":"کافه، کنار پیشخوان","storyBeatFa":"آوا و بن در کافه درباره مشکل کوچکی در سفارش و راه‌حل ساده آن حرف می‌زنند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0128","activityKeys":["A08"],"learningDemand":"recognition","note":"Returning story arc is spaced by 5 Lessons; the played learner role switches from the previous scene."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0133","specHash":"4bbced746e40e8c1bc34434cb014d0c3ea1ca92cd6852bd77eabcd49fb66354a","grammarTargetKeys":["CEFRJ-GRAM-58"],"reviewLexicalLemmas":[],"usageFallbacks":[{"query":"the problem is small","rationale":"Bounded generated usage for the intended problem target and selected A1 construction."},{"query":"yes the problem is small","rationale":"Explicit naturalness fallback for the complete learner-turn target collocation generated from ‘Yes. The problem is small.’"},{"query":"this problem is easy","rationale":"Bounded generated usage for the intended problem target and selected A1 construction."},{"query":"is there a problem","rationale":"Bounded generated usage for the intended problem target and selected A1 construction."}]},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing","lessonArchetype":"lexical_context"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0133' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A01','A02','A03','A04','A05','A06','A07','A08');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),8) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),4) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-PROBLEM-01','word','problem','problem','noun','ff268e5c-e123-5643-839c-3c262fdadec7','مشکل','nova/audio/lexical/en-fa/a0b341680164356c618c0301d45c2caa596bda9542f1a0783fec6d60940dde7e.mp3','1018','{"referenceKey":"EN-REF-1319241A7CB143D65116"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-PROBLEM-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ava' LIMIT 1),'Is there a problem?','مشکلی هست؟','nova/audio/turns/en-fa/EN-A1-L-0133/T01.mp3','1253',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ben' LIMIT 1),'Yes. The problem is small.','بله. مشکل کوچک است.','nova/audio/turns/en-fa/EN-A1-L-0133/T02.mp3','1697','Yes. The problem is small.','["Yes. The problem is small."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ava' LIMIT 1),'And this one?','این یکی چطور؟','nova/audio/turns/en-fa/EN-A1-L-0133/T03.mp3','1071',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ben' LIMIT 1),'This problem is easy.','این مشکل آسان است.','nova/audio/turns/en-fa/EN-A1-L-0133/T04.mp3','1332','This problem is easy.','["This problem is easy."]',NULL,'{"usage":"changed_context_transfer"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'response_choice','معنی problem را در این درس پیدا کن.','problem اینجا چه معنی‌ای دارد؟','{"options":["مشکل","پاسخ","سفارش"],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این معنی هدف این درس نیست.","این گزینه با موقعیت درس جور نیست."],"correctFa":"مشکل"}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','حرف شخصیت مقابل را گوش کن و جواب نقش خودت را بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','بخش اول گفت‌وگو را دوباره گوش کن.','کدام جمله با پاسخ نقش تو در بخش اول یکی است؟','{"sourceTurnKeys":["T01","T02"],"options":["Yes. The problem is small.","The problem is big.","The order is small."],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است.","این جمله اندازه مشکل را برعکس پاسخ بخش اول می‌گوید.","این جمله به سفارش اشاره می‌کند، نه پاسخ بخش اول درباره مشکل."],"correctFa":"بله. مشکل کوچک است."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","skillFocus":"listening","distractorAudit":{"reviewerType":"model","items":[{"option":"The problem is big.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما اندازه مشکل را برخلاف پاسخ شنیده‌شده بزرگ می‌گوید."},{"option":"The order is small.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما موضوع را از مشکل به سفارش تغییر می‌دهد."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','جمله درست را انتخاب کن.','مشکل کوچک است.','{"optionsEn":["The problem is small.","The problem is big.","The order is small."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله طبیعی است، اما معنی هدف را نمی‌رساند.","این جمله طبیعی است، اما با معنی فارسی فرق دارد."],"correctFa":"The problem is small."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"The problem is big.","grammatical":true,"natural":true,"contrastReasonFa":"جمله از نظر انگلیسی طبیعی است، اما پاسخ معنایی هدف نیست."},{"option":"The order is small.","grammatical":true,"natural":true,"contrastReasonFa":"جمله از نظر انگلیسی طبیعی است، اما با پیام فارسی هدف فرق دارد."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','جواب موقعیت دوم را انتخاب کن.','این مشکل آسان است.','{"optionsEn":["This problem is easy.","This problem is new.","This order is easy."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله طبیعی است، اما معنی دیگری را می‌رساند.","این جمله طبیعی است، اما پاسخ موقعیت دوم نیست."],"correctFa":"This problem is easy."},"practiceOnly":true}','{"learningDemand":"transfer","evidenceKind":"practice_only","distractorAudit":{"reviewerType":"model","items":[{"option":"This problem is new.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما معنی هدف را تغییر می‌دهد."},{"option":"This order is easy.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما پاسخ درست این موقعیت نیست."}]},"qualityV3PracticeReason":"duplicate_exact_target_sentence"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'sentence_order','پاسخ اول را دوباره گوش کن و جمله را مرتب کن.',NULL,'{"audioSourceTurnKey":"T02","tokensEn":["small.","is","problem","The","Yes."],"answerTokensEn":["Yes.","The","problem","is","small."],"answerEn":"Yes. The problem is small.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"درست چیدی.","retryFa":"دوباره به صدای همان پاسخ گوش کن."}}','{"learningDemand":"supported_reconstruction","evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A07',7,'speak','جواب انگلیسی پنهان است؛ خودت بگو.','در نقش خودت بگو: این مشکل آسان است.','{"mode":"retrieval","textEn":"This problem is easy.","acceptedAnswersEn":["This problem is easy."],"sourceTurnKey":"T04","showAnswerTextBeforeAttempt":false,"hintFa":"از problem استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"جمله کوتاه را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session bounded retrieval after the supplying dialogue has already been exposed."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A08',8,'response_choice','یک نکته از داستان قبلی این شخصیت‌ها را مرور کن.','آن مرد بن است.','{"optionsEn":["That guy is Ben.","That guy is Sam.","That man is Sam."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله طبیعی است، اما با مرور هدف فرق دارد.","این جمله طبیعی است، اما پاسخ دقیق نیست."],"correctFa":"That guy is Ben."}}','{"learningDemand":"review","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"That guy is Sam.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما معنی مرورشده را تغییر می‌دهد."},{"option":"That man is Sam.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما پاسخ دقیق متن فارسی نیست."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0135
-- levelKey: A1
-- sourceHash: a46e316a6168da7ae61a7066be513695ec29cac8f8cf84bc7272bca1f71a2bf4
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
VALUES (@level_id,'EN-A1-L-0135',135,'I remember it well','خوب یادم هست','با remember درباره چیزی که به یاد داری حرف بزن.','EN-A1-OUTCOME-0135',420,'a46e316a6168da7ae61a7066be513695ec29cac8f8cf84bc7272bca1f71a2bf4','validated','{"outcomeFa":"remember را به معنی «به یاد داشتن» در دو جمله کوتاه و طبیعی به کار ببری.","scenarioFa":"لیام و لیو در کتابخانه درباره زمان جلسه قبلی و یک اسم آشنا حرف می‌زنند.","prerequisiteOutcomeKeys":["EN-A1-OUTCOME-0134"],"curriculum":{"startingKnowledge":"early_a1_spoken_core_and_recent_review","targetConstructions":[{"key":"EN-CONSTR-0135-REMEMBER","form":"I remember it well","meaningFa":"گفتن اینکه چیزی را خوب به یاد داری"}],"supportLanguage":[{"form":"How well do you remember it?","meaningFa":"چقدر خوب یادت هست؟"},{"form":"And the name?","meaningFa":"اسم چطور؟"}],"assessmentBoundary":"Only the bounded recall-from-memory sense of remember represented by EN-REF-126A30548A074DD19C19 is assessed.","transferPlan":{"mode":"same_lesson","intent":"Reuse remember with a second familiar memory target after guided exposure, then complete spaced retrieval of previously exposed Lessons 125-130."},"story":{"arcKey":"EN-A1-LIBRARY","sceneKey":"EN-A1-FACTORY-SCENE-0135","learnerRoleKey":"liam","participants":["leo","liam"],"introducedCharacterKeys":[],"relationshipState":"already_known","dependsOnLessonKeys":["EN-A1-L-0130"],"continuesLessonKey":"EN-A1-L-0130","settingFa":"کتابخانه، میز مطالعه","storyBeatFa":"لیام و لیو در کتابخانه درباره زمان جلسه قبلی و یک اسم آشنا حرف می‌زنند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0130","activityKeys":["A08","A10"],"learningDemand":"retrieval","note":"Returning story arc is spaced by 5 Lessons; the played learner role switches from the previous scene."},{"lessonKey":"EN-A1-L-0125","activityKeys":["A09"],"learningDemand":"retrieval","note":"Spaced retrieval of information inside the required +3..+10 window."},{"lessonKey":"EN-A1-L-0126","activityKeys":["A11"],"learningDemand":"retrieval","note":"Spaced retrieval of ago inside the required +3..+10 window."},{"lessonKey":"EN-A1-L-0127","activityKeys":["A12"],"learningDemand":"retrieval","note":"Spaced retrieval of talk inside the required +3..+10 window."},{"lessonKey":"EN-A1-L-0128","activityKeys":["A13"],"learningDemand":"retrieval","note":"Spaced retrieval of guy inside the required +3..+10 window."},{"lessonKey":"EN-A1-L-0129","activityKeys":["A14"],"learningDemand":"retrieval","note":"Spaced retrieval of hand inside the required +3..+10 window."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0135","specHash":"f10a732939f730a3a2fb31fec23a0b88fbe77e9c26829e0d0e587edd35ad35f8","grammarTargetKeys":["CEFRJ-GRAM-247"],"reviewLexicalLemmas":["information","mind"],"usageFallbacks":[{"query":"i remember it well","rationale":"Bounded target use of remember."},{"query":"how well do you remember it","rationale":"Natural How + adverb question containing the target verb."},{"query":"i remember the name too","rationale":"Changed-context retrieval of the same target sense."}]},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing","lessonArchetype":"grammar_pattern"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0135' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A02','A01','A03','A04','A05','A06','A07','A08','A09','A10','A11','A12','A13','A14');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),14) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),4) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-REMEMBER-01','word','remember','remember','verb','c51ad296-3598-5f78-a220-f428b02f7304','به یاد داشتن','nova/audio/lexical/en-fa/b6a71bdf89b2c00693f3e79413374fa899149ce1707b94d8d641e6e123eefb80.mp3','1097','{"referenceKey":"EN-REF-126A30548A074DD19C19"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-REMEMBER-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-INFORMATION-01','word','information','information','noun','61dc04c9-bb4a-5f4d-9aa2-c8edcf65fee7','اطلاعات','nova/audio/lexical/en-fa/e850294884a8bba9ea27d74dc0872070f63b332c1eb8d73c843480d29fc4e492.mp3','1071','{"referenceKey":"EN-REF-9853AFC7B0713F407C02"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-INFORMATION-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',2,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-MIND-01','word','mind','mind','noun','699910bc-4b6c-5b7b-82c4-ba086e49affe','ذهن','nova/audio/lexical/en-fa/9c2ccd222375932496b200f206ee12db469a58719a621ac56ce3d6f5f2a764b1.mp3','966','{"referenceKey":"EN-REF-34B22C25F41CD3FAC8AB"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-MIND-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',3,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='leo' LIMIT 1),'How well do you remember it?','چقدر خوب یادت هست؟','nova/audio/turns/en-fa/EN-A1-L-0135/T01.mp3','1488',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='liam' LIMIT 1),'I remember it well.','خوب یادم هست.','nova/audio/turns/en-fa/EN-A1-L-0135/T02.mp3','1515','I remember it well.','["I remember it well."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='leo' LIMIT 1),'And the name?','اسم چطور؟','nova/audio/turns/en-fa/EN-A1-L-0135/T03.mp3','1280',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='liam' LIMIT 1),'I remember the name too.','اسم را هم به یاد دارم.','nova/audio/turns/en-fa/EN-A1-L-0135/T04.mp3','1802','I remember the name too.','["I remember the name too."]',NULL,'{"usage":"changed_context_transfer"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',1,'dialogue','حرف شخصیت مقابل را گوش کن و جواب نقش خودت را بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',2,'response_choice','معنی remember را در این درس پیدا کن.','remember اینجا چه معنی‌ای دارد؟','{"options":["به یاد داشتن","فراموش کردن","پرسیدن"],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این معنی برعکس هدف این درس است.","این گزینه فعل دیگری را می‌گوید."],"correctFa":"به یاد داشتن"}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','بخش اول گفت‌وگو را دوباره گوش کن.','کدام جمله با پاسخ نقش تو در بخش اول یکی است؟','{"sourceTurnKeys":["T01","T02"],"options":["I remember it well.","I remember the name too.","I know it is late."],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است.","این جمله مربوط به بخش دوم گفت‌وگو است.","این جمله معنی دیگری دارد و پاسخ شنیده‌شده نیست."],"correctFa":"خوب یادم هست."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","skillFocus":"listening","distractorAudit":{"reviewerType":"model","items":[{"option":"I remember the name too.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما پاسخ بخش دوم گفت‌وگو است نه بخش اول."},{"option":"I know it is late.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما معنی دیگری دارد و پاسخ شنیده‌شده نیست."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','جمله درست را انتخاب کن.','خوب یادم هست.','{"optionsEn":["I remember it well.","I know it is late.","I remember the room."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله طبیعی است، اما معنی هدف را نمی‌رساند.","این جمله طبیعی است، اما چیز دیگری را به یاد می‌آورد."],"correctFa":"I remember it well."},"practiceOnly":true}','{"learningDemand":"recognition","evidenceKind":"practice_only","distractorAudit":{"reviewerType":"model","items":[{"option":"I know it is late.","grammatical":true,"natural":true,"contrastReasonFa":"طبیعی است اما معنی دیگری دارد."},{"option":"I remember the room.","grammatical":true,"natural":true,"contrastReasonFa":"طبیعی است اما هدف معنایی prompt نیست."}]},"qualityV3PracticeReason":"duplicate_exact_target_sentence"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','جواب موقعیت دوم را انتخاب کن.','اسم را هم به یاد دارم.','{"optionsEn":["I remember the name too.","I remember the time too.","I know the name too."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله زمان را به یاد می‌آورد، نه اسم را.","این جمله طبیعی است، اما فعل هدف را تمرین نمی‌کند."],"correctFa":"I remember the name too."},"practiceOnly":true}','{"learningDemand":"transfer","evidenceKind":"practice_only","distractorAudit":{"reviewerType":"model","items":[{"option":"I remember the time too.","grammatical":true,"natural":true,"contrastReasonFa":"هدف حافظه را نگه می‌دارد اما چیز دیگری است."},{"option":"I know the name too.","grammatical":true,"natural":true,"contrastReasonFa":"طبیعی است اما فعل هدف را تمرین نمی‌کند."}]},"qualityV3PracticeReason":"duplicate_exact_target_sentence"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'sentence_order','پاسخ اول را دوباره گوش کن و جمله را مرتب کن.',NULL,'{"audioSourceTurnKey":"T02","tokensEn":["well.","it","remember","I"],"answerTokensEn":["I","remember","it","well."],"answerEn":"I remember it well.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"درست چیدی.","retryFa":"دوباره به صدای همان پاسخ گوش کن."}}','{"learningDemand":"supported_reconstruction","evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A07',7,'speak','جواب انگلیسی پنهان است؛ خودت بگو.','در نقش خودت بگو: اسم را هم به یاد دارم.','{"mode":"retrieval","textEn":"I remember the name too.","acceptedAnswersEn":["I remember the name too."],"sourceTurnKey":"T04","showAnswerTextBeforeAttempt":false,"hintFa":"از remember استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"جمله کوتاه را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session bounded retrieval after the supplying dialogue has already been exposed."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A08',8,'response_choice','یک نکته از داستان قبلی این شخصیت‌ها را مرور کن.','حالا ذهنم روشن است.','{"optionsEn":["My mind is clear now.","My room is clear now.","My plan is clear now."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله اتاق را توصیف می‌کند، نه ذهن را.","این جمله برنامه را توصیف می‌کند، نه ذهن را."],"correctFa":"My mind is clear now."}}','{"learningDemand":"review","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"My room is clear now.","grammatical":true,"natural":true,"contrastReasonFa":"طبیعی است اما room را توصیف می‌کند."},{"option":"My plan is clear now.","grammatical":true,"natural":true,"contrastReasonFa":"طبیعی است اما plan را توصیف می‌کند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A09',9,'speak','یک جمله قدیمی را از حافظه بگو.','بگو: این اطلاعات برای توست.','{"mode":"retrieval","textEn":"This information is for you.","acceptedAnswersEn":["This information is for you."],"showAnswerTextBeforeAttempt":false,"hintFa":"از information استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"جمله را با information دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"review_retrieval","assessmentLimit":"Spaced retrieval of previously exposed Lesson 125 content; no unseen dialogue, audio, or visual context is required."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A10',10,'speak','یک جمله قدیمی دیگر را از حافظه بگو.','بگو: ذهنم پر از سؤال است.','{"mode":"retrieval","textEn":"My mind is full of questions.","acceptedAnswersEn":["My mind is full of questions."],"showAnswerTextBeforeAttempt":false,"hintFa":"از mind استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"جمله را با mind دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"review_retrieval","assessmentLimit":"Spaced retrieval of previously exposed Lesson 130 content; no unseen dialogue, audio, or visual context is required."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A11',11,'speak','یک عبارت زمانی قدیمی را از حافظه بگو.','بگو: دو روز پیش بود.','{"mode":"retrieval","textEn":"It was two days ago.","acceptedAnswersEn":["It was two days ago."],"showAnswerTextBeforeAttempt":false,"hintFa":"از ago استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"عبارت را با ago دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"review_retrieval","assessmentLimit":"Spaced retrieval of previously exposed Lesson 126 content; no unseen dialogue, audio, or visual context is required."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A12',12,'speak','یک جمله قدیمی را از حافظه بگو.','بگو: بعد از کلاس می‌توانیم صحبت کنیم.','{"mode":"retrieval","textEn":"We can talk after class.","acceptedAnswersEn":["We can talk after class."],"showAnswerTextBeforeAttempt":false,"hintFa":"از talk استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"جمله را با talk دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"review_retrieval","assessmentLimit":"Spaced retrieval of previously exposed Lesson 127 content; no unseen dialogue, audio, or visual context is required."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A13',13,'speak','یک جمله قدیمی را از حافظه بگو.','بگو: آن مرد سم است.','{"mode":"retrieval","textEn":"That guy is Sam.","acceptedAnswersEn":["That guy is Sam."],"showAnswerTextBeforeAttempt":false,"hintFa":"از guy استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"جمله را با guy دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"review_retrieval","assessmentLimit":"Spaced retrieval of previously exposed Lesson 128 content; no unseen dialogue, audio, or visual context is required."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A14',14,'speak','یک جمله قدیمی را از حافظه بگو.','بگو: این دست من است.','{"mode":"retrieval","textEn":"This is my hand.","acceptedAnswersEn":["This is my hand."],"showAnswerTextBeforeAttempt":false,"hintFa":"از hand استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"جمله را با hand دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"review_retrieval","assessmentLimit":"Spaced retrieval of previously exposed Lesson 129 content; no unseen dialogue, audio, or visual context is required."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

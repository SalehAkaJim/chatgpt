-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0127
-- levelKey: A1
-- sourceHash: f60d963a4321d15bbe972b6d35b0c83e2bf9de61c230636bec55949f69aefc84
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
VALUES (@level_id,'EN-A1-L-0127',127,'We can talk here','می‌توانیم اینجا صحبت کنیم','با talk درباره صحبت کردن در زمان یا جای مناسب حرف بزن.','EN-A1-OUTCOME-0127',420,'f60d963a4321d15bbe972b6d35b0c83e2bf9de61c230636bec55949f69aefc84','validated','{"outcomeFa":"talk را به معنی «صحبت کردن» در دو جمله کوتاه به کار ببری.","scenarioFa":"مایا و الکس بعد از کلاس دنبال جای مناسبی برای یک گفت‌وگوی کوتاه هستند.","prerequisiteOutcomeKeys":["EN-A1-OUTCOME-0126"],"curriculum":{"startingKnowledge":"early_a1_spoken_core_and_recent_review","targetConstructions":[{"key":"EN-CONSTR-0127-TALK","form":"We can talk here","meaningFa":"پیشنهاد یک زمان یا مکان برای صحبت"}],"supportLanguage":[{"form":"Can we talk now?","meaningFa":"می‌توانیم الان صحبت کنیم؟"},{"form":"And after class?","meaningFa":"بعد از کلاس چطور؟"}],"assessmentBoundary":"Only the bounded A1 verb sense of talk meaning speak/exchange thoughts is assessed.","transferPlan":{"mode":"same_lesson","intent":"Reuse talk in a second familiar time context."},"story":{"arcKey":"EN-A1-CLASSMATES","sceneKey":"EN-A1-FACTORY-SCENE-0127","learnerRoleKey":"alex","participants":["maya","alex"],"introducedCharacterKeys":[],"relationshipState":"already_known","dependsOnLessonKeys":["EN-A1-L-0122"],"continuesLessonKey":"EN-A1-L-0122","settingFa":"مرکز آموزشی، بعد از کلاس","storyBeatFa":"مایا و الکس بعد از کلاس دنبال جای مناسبی برای یک گفت‌وگوی کوتاه هستند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0122","activityKeys":["A02"],"learningDemand":"retrieval","note":"Returning story arc is spaced by 5 Lessons and the played role changes from the prior scene."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0127","specHash":"a680f69b96e38a7a7addac4ab9506fad10c78d5245f306261612867290a5d095","grammarTargetKeys":[],"reviewLexicalLemmas":[],"usageFallbacks":[{"query":"we can talk here","rationale":"Bounded target construction for the intended verb sense of talk."},{"query":"we can talk after class","rationale":"Changed-context learner response preserving the same bounded target sense."},{"query":"yes. we can talk here","rationale":"Natural target-bearing learner response in the first guided exchange."},{"query":"can we talk now","rationale":"Natural A1 question using talk in the same bounded speak/exchange-thoughts sense before the learner responds."},{"query":"and after class","rationale":"Short follow-up prompt supporting the controlled transfer context."}],"noNewGrammarReason":"Lexical-focus Lesson using familiar A1 sentence patterns; no new grammar is claimed."},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing","lessonArchetype":"story_task"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0127' LIMIT 1);
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
VALUES (@course_id,'EN-LEX-TALK-01','word','talk','talk','verb','6ffb9e7c-4ff3-5c2e-bb86-603e86584f42','صحبت کردن','nova/audio/lexical/en-fa/ce6732b142e42223291706dea2fc00595f5d92b38a06970e915e0227f1745945.mp3','731','{"referenceKey":"EN-REF-5BB1D818E803C3AAAD78"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-TALK-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'Can we talk now?','می‌توانیم الان صحبت کنیم؟','nova/audio/turns/en-fa/EN-A1-L-0127/T01.mp3','1253',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='alex' LIMIT 1),'Yes. We can talk here.','بله. می‌توانیم اینجا صحبت کنیم.','nova/audio/turns/en-fa/EN-A1-L-0127/T02.mp3','1906','Yes. We can talk here.','["Yes. We can talk here."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'And after class?','بعد از کلاس چطور؟','nova/audio/turns/en-fa/EN-A1-L-0127/T03.mp3','1332',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='alex' LIMIT 1),'We can talk after class.','می‌توانیم بعد از کلاس صحبت کنیم.','nova/audio/turns/en-fa/EN-A1-L-0127/T04.mp3','1671','We can talk after class.','["We can talk after class."]',NULL,'{"usage":"changed_context_transfer"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'response_choice','معنی talk را در این درس پیدا کن.','talk اینجا چه معنی‌ای دارد؟','{"options":["صحبت کردن","پرداخت کردن","راه رفتن"],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این معنی هدف درس نیست.","این گزینه با موقعیت جور نیست."],"correctFa":"صحبت کردن"}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','حرف شخصیت مقابل را گوش کن و جواب نقش خودت را بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','بخش اول گفت‌وگو را گوش کن.','الکس درباره الان چه می‌گوید؟','{"sourceTurnKeys":["T01","T02"],"options":["می‌توانند اینجا صحبت کنند.","باید به خانه بروند.","کلاس شروع شده."],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است.","این گفته نشد.","این با گفت‌وگو جور نیست."],"correctFa":"می‌توانند اینجا صحبت کنند."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","skillFocus":"listening"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','جمله درست را انتخاب کن.','می‌توانیم اینجا صحبت کنیم.','{"optionsEn":["We can talk here.","We can pay here.","We can walk here."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله درباره پرداخت کردن است.","این جمله درباره راه رفتن است."],"correctFa":"We can talk here."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"We can pay here.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما فعل pay را دارد و به پرداخت کردن اشاره می‌کند نه صحبت کردن."},{"option":"We can walk here.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما فعل walk را دارد و درباره راه رفتن است نه talk."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','جواب موقعیت دوم را انتخاب کن.','بعد از کلاس چطور؟','{"optionsEn":["We can talk after class.","We can leave the class.","The class is here."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله درباره ترک کردن کلاس است.","این جمله فقط جای کلاس را بیان می‌کند."],"correctFa":"می‌توانیم بعد از کلاس صحبت کنیم."},"practiceOnly":true}','{"learningDemand":"transfer","evidenceKind":"practice_only","distractorAudit":{"reviewerType":"model","items":[{"option":"We can leave the class.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما درباره ترک کردن کلاس است و پیشنهاد صحبت بعد از کلاس نیست."},{"option":"The class is here.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما فقط مکان کلاس را می‌گوید و عمل صحبت کردن را بیان نمی‌کند."}]},"qualityV3PracticeReason":"duplicate_exact_target_sentence"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'speak','جواب انگلیسی پنهان است؛ خودت بگو.','الکس هستی. بگو: می‌توانیم بعد از کلاس صحبت کنیم.','{"mode":"retrieval","textEn":"We can talk after class.","acceptedAnswersEn":["We can talk after class."],"sourceTurnKey":"T04","showAnswerTextBeforeAttempt":false,"hintFa":"از talk برای معنی هدف این درس استفاده کن.","feedback":{"correctFa":"درست است؛ talk را در موقعیت دوم بازیابی کردی.","retryFa":"جمله کوتاه را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session bounded retrieval in a changed controlled context."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

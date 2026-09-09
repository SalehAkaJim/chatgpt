-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0035
-- levelKey: A1
-- sourceHash: b068eba14d66b44e872d3dfa6a177e9261afaf454d64049de3f03959cb3fb832
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
VALUES (@level_id,'EN-A1-L-0035',35,'I can help','می‌تونم کمک کنم','این بار در کتابخانه نقش لیو را بازی می‌کنی و با I can help به یک درخواست آشنا جواب مثبت می‌دهی.','A1-INTERACTION-AFFIRM-ABILITY-HELP',420,'b068eba14d66b44e872d3dfa6a177e9261afaf454d64049de3f03959cb3fb832','validated','{"outcomeFa":"زبان‌آموز می‌تواند با I can یک توانایی یا امکان ساده و آشنا را به صورت مثبت بیان کند.","scenarioFa":"لیام کنار قفسه کمک می‌خواهد. نقش تو لیو است و باید بگویی می‌توانی کمک کنی.","prerequisiteOutcomeKeys":["A1-INTERACTION-ASK-HELP","A1-INTERACTION-LIMIT-QUANTITY"],"curriculum":{"startingKnowledge":"early_a1_can_questions_help_and_known_library_language","targetConstructions":[{"key":"EN-CONSTR-I-CAN-HELP","form":"I can help.","meaningFa":"گفتن این که می‌توانی کمک کنی"},{"key":"EN-CONSTR-I-CAN-HELP-NOW","form":"I can help now.","meaningFa":"گفتن این که همین حالا می‌توانی کمک کنی"}],"supportLanguage":[{"form":"Can you help?","meaningFa":"می‌تونی کمک کنی؟"},{"form":"Now?","meaningFa":"الان؟"}],"assessmentBoundary":"The Lesson introduces affirmative can in first-person help statements only. It does not introduce negative can, new object pronouns, or new lexical targets.","transferPlan":{"mode":"same_lesson","intent":"Move from understanding the already familiar Can you help? request to producing affirmative I can help, then add the familiar contextual time word now without treating it as a new lexical target."},"story":{"arcKey":"EN-A1-LIBRARY","sceneKey":"EN-A1-FACTORY-SCENE-0035","learnerRoleKey":"leo","participants":["leo","liam"],"introducedCharacterKeys":[],"relationshipState":"already_known","continuesLessonKey":"EN-A1-L-0029","dependsOnLessonKeys":["EN-A1-L-0029"],"settingFa":"کتابخانه، کنار قفسه بعد از امانت کتاب","storyBeatFa":"لیام برای پیدا کردن بخش بعدی کتابخانه کمک می‌خواهد. این بار نقش لیو را بازی می‌کنی و می‌گویی می‌توانی کمک کنی."},"reviewLinks":[{"lessonKey":"EN-A1-L-0029","activityKeys":["A02"],"learningDemand":"retrieval","note":"The library arc returns after five intervening Lessons and the learner role switches from Liam to Leo."},{"lessonKey":"EN-A1-L-0019","activityKeys":["A05","A06"],"learningDemand":"transfer","note":"The earlier Can you help? request now receives a full affirmative I can help response."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0035","specHash":"ebab276b2802e3f734b88dc324bde3421b47bfa3fd6603b682c8910cf646d752","grammarTargetKeys":["CEFRJ-GRAM-123"],"reviewLexicalLemmas":[],"usageFallbacks":[{"query":"i can help","rationale":"I can help is a canonical early-A1 affirmative can statement and directly answers the previously taught Can you help? request."},{"query":"i can help now","rationale":"I can help now keeps can as the scored grammar target and uses now only as ordinary contextual support, not as a new lexical target."}]},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0035' LIMIT 1);
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
VALUES (@course_id,'EN-LEX-HELP-01','word','help','help','verb','assist','کمک کردن','nova/audio/lexical/en-fa/02c81c6e0365683dc703b06533126e92744afa911cdf1cdfd53e53e5a732966e.mp3','862','{"referenceKey":"EN-REF-76A0FAF42C7FB7906AA5"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-HELP-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',1,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='liam' LIMIT 1),'Can you help?','می‌تونی کمک کنی؟','nova/audio/turns/en-fa/EN-A1-L-0035/T01.mp3','1071',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='leo' LIMIT 1),'Yes. I can help.','بله. می‌تونم کمک کنم.','nova/audio/turns/en-fa/EN-A1-L-0035/T02.mp3','1201','Yes. I can help.','["Yes. I can help."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='liam' LIMIT 1),'Now?','الان؟','nova/audio/turns/en-fa/EN-A1-L-0035/T03.mp3','731',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='leo' LIMIT 1),'I can help now.','الان می‌تونم کمک کنم.','nova/audio/turns/en-fa/EN-A1-L-0035/T04.mp3','1201','I can help now.','["I can help now."]',NULL,'{"usage":"changed_context_transfer"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'response_choice','معنی can را در جواب لیو پیدا کن.','I can help یعنی چی؟','{"options":["می‌تونم کمک کنم","کمک نمی‌کنم","کمک می‌خوای؟"],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ can اینجا توانایی یا امکان انجام کار را می‌گوید.","جمله منفی نیست.","این یک جواب است، نه سؤال."],"correctFa":"I can help یعنی «می‌تونم کمک کنم»."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','درخواست لیام را گوش کن و جواب لیو را بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','گفت‌وگوی اول را گوش کن.','لیو چه جوابی می‌دهد؟','{"sourceTurnKeys":["T01","T02"],"options":["می‌تواند کمک کند","نمی‌تواند کمک کند","فقط یک کتاب می‌خواهد"],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است؛ لیو می‌گوید I can help.","جواب مثبت است.","این موضوع مربوط به اپیزود قبلی کتابخانه بود."],"correctFa":"لیو می‌تواند کمک کند."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","skillFocus":"listening"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'sentence_order','جواب کوتاه لیو را گوش کن و مرتب کن.',NULL,'{"audioSourceTurnKey":"T02","tokensEn":["help.","I","can","Yes."],"answerTokensEn":["Yes.","I","can","help."],"answerEn":"Yes. I can help.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"درست چیدی؛ can بین I و فعل help قرار گرفت.","retryFa":"بعد از Yes. جمله I can help را بساز."}}','{"evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','جواب مناسب را انتخاب کن.','لیام کمک می‌خواهد و تو می‌توانی کمک کنی. چه می‌گویی؟','{"optionsEn":["I can help.","I''m not in room two.","This room is new."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ I can help پاسخ مستقیم به درخواست کمک است.","این جمله درباره مکان است.","این جمله درباره جدید بودن اتاق است."],"correctFa":"I can help. پاسخ مناسب است."}}','{"learningDemand":"transfer","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'speak','جواب انگلیسی پنهان است؛ جمله کامل‌تر را بگو.','لیو هستی. لیام می‌پرسد همین الان می‌تونی کمک کنی. بگو الان می‌تونم کمک کنم.','{"mode":"retrieval","textEn":"I can help now.","acceptedAnswersEn":["I can help now."],"sourceTurnKey":"T04","showAnswerTextBeforeAttempt":false,"hintFa":"با I can help شروع کن و زمان را در آخر اضافه کن.","feedback":{"correctFa":"درست است؛ can را در جواب affirmative به کار بردی.","retryFa":"I + can + help + now را بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session affirmative can statement in a familiar help context."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0004
-- levelKey: A1
-- sourceHash: 2fa26b1af15ccf654b50b50891cda91652dac0c079520d6aaa7479f0def22275
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
VALUES (@level_id,'EN-A1-L-0004',4,'When you miss a question','وقتی حرفی را نمی شنوی','وارد کتابخانه می شوی. لیو، کتابدار، چیزی می پرسد ولی صدای در نمی گذارد درست بشنوی.','A1-INTERACTION-ASK-REPEAT',420,'2fa26b1af15ccf654b50b50891cda91652dac0c079520d6aaa7479f0def22275','validated','{"outcomeFa":"می توانی با یک درخواست کوتاه از طرف مقابل بخواهی حرفش را تکرار کند.","scenarioFa":"وارد کتابخانه می شوی. لیو، کتابدار، چیزی می پرسد ولی صدای در نمی گذارد درست بشنوی. نقش تو لیام است.","prerequisiteOutcomeKeys":["A1-INTERACTION-GREET-STATE-CLOSE"],"curriculum":{"startingKnowledge":"early_a1_after_greetings","targetConstructions":[],"supportLanguage":[],"assessmentBoundary":"Guided speech and audio reconstruction are practice. Choice tasks assess recognition/selection. Final hidden-answer retrieval records first attempt and help separately; exact text matching cannot certify open-ended language ability or pronunciation.","transferPlan":{"mode":"same_lesson","intent":"End with meaning-cued recall without displayed English. Continue delayed review in later stories; this does not prove long-term retention."},"story":{"arcKey":"EN-A1-LIBRARY","sceneKey":"EN-A1-SCENE-0004","learnerRoleKey":"liam","participants":["liam","leo"],"introducedCharacterKeys":["liam","leo"],"relationshipState":"first_meeting","continuesLessonKey":null,"dependsOnLessonKeys":[],"settingFa":"ورودی کتابخانه، کنار در پر سر و صدا","storyBeatFa":"لیام از کتابدار می خواهد سوالش را تکرار کند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0003","activityKeys":["A03"],"learningDemand":"recognition","note":"Recognize the previously taught wellbeing question after a repair."}],"pedagogyVersion":2},"pilot":false,"batchKey":"EN-A1-STORY-10-01","audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0004' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A01','A02','A03','A04','A05');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),5) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04','T05');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),5) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-SORRY-REPEAT-01','word','sorry',NULL,'interjection',NULL,'ببخشید؟ برای درخواست تکرار','nova/audio/lexical/en-fa/bfc7046405d011d37c28b24ec2d2f326c9561858de970903aec9deb955f608fe.mp3','862','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-SORRY-REPEAT-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-HOW-ARE-YOU-01','formula','how are you',NULL,NULL,NULL,'حالت چطوره؟','nova/audio/lexical/en-fa/e5d579f644dc5c98549540f7d446a9096b5d8bc670798180378c5dd6e4e7a8c2.mp3','1201','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-HOW-ARE-YOU-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',2,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-FINE-01','word','fine',NULL,'adjective',NULL,'خوب','nova/audio/lexical/en-fa/22a063aa10484109bb949bc9324213b8d7bfd16e2d54bea7d0648d401a2159bd.mp3','1018','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-FINE-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',3,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-THANKS-01','word','thanks',NULL,'interjection',NULL,'ممنون','nova/audio/lexical/en-fa/3d13b4eef688394fb8632e4f841fdb4d4e678af48061ead840c43c40b55c1c17.mp3','862','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-THANKS-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',4,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='leo' LIMIT 1),'How are you?','حالت چطوره؟','nova/audio/turns/en-fa/EN-A1-L-0004/T01.mp3','966',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='liam' LIMIT 1),'Sorry?','ببخشید؟','nova/audio/turns/en-fa/EN-A1-L-0004/T02.mp3','783','Sorry?','["Sorry?"]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='leo' LIMIT 1),'How are you?','حالت چطوره؟','nova/audio/turns/en-fa/EN-A1-L-0004/T03.mp3','862',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='liam' LIMIT 1),'I''m fine, thanks.','خوبم، ممنون.','nova/audio/turns/en-fa/EN-A1-L-0004/T04.mp3','1436','I''m fine, thanks.','["I''m fine, thanks."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T05',5,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='liam' LIMIT 1),'Sorry?','ببخشید؟','nova/audio/turns/en-fa/EN-A1-L-0004/T05.mp3','835','Sorry?','["Sorry?"]',NULL,'{"usage":"retrieval_model_after_help"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'lexical_teach','معنی و صدای این کلمه ها را یاد بگیر.',NULL,'{"lexicalKeys":["EN-LEX-SORRY-REPEAT-01"],"explanationFa":"وقتی چیزی را درست نمی شنوی، Sorry? را با آهنگ پرسشی می گویی تا طرف مقابل تکرار کند. اینجا از اشتباهی عذرخواهی نمی کنی."}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','حرف لیو را گوش کن و پاسخ لیام را با صدای بلند بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','گوش کن و با توجه به چیزی که شنیدی پاسخ بده.','لیو بعد از درخواست تکرار چه چیزی می پرسد؟','{"sourceTurnKeys":["T03"],"options":["اسم تو را می پرسد","حالت را می پرسد","خداحافظی می کند"],"answerIndex":1,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["در سوال لیو name نیست؛ How are you درباره حال است.","لیو همان سوال احوالپرسی را تکرار می کند.","لیو سوالش را تکرار می کند؛ See you نمی گوید."],"correctFa":"لیو همان سوال احوالپرسی را تکرار می کند."}}','{"learningDemand":"recognition","purpose":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','با توجه به موقعیت، گزینه مناسب را انتخاب کن.','صدای اعلام کتابخانه را درست نمی شنوی. از کتابدار می خواهی حرفش را تکرار کند. چه می گویی؟','{"optionsEn":["See you!","Sorry?","I''m fine, thanks."],"answerIndex":1,"feedback":{"optionsFa":["See you دیدار را تمام می کند و درخواست تکرار نیست.","Sorry? با آهنگ پرسشی از طرف مقابل می خواهد حرفش را تکرار کند.","هنوز حرف را نشنیده ای؛ پاسخ دادن درباره حالت مشکل شنیدن را حل نمی کند."],"correctFa":"Sorry? با آهنگ پرسشی از طرف مقابل می خواهد حرفش را تکرار کند."}}','{"learningDemand":"changed_context","purpose":"Use a repeat request for an unheard announcement, not just the modeled greeting.","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'speak','این بار پاسخ آماده نداری. خودت جمله را بگو یا بنویس.','لیام هستی. این بار کتابدار چیزی درباره اسمت می پرسد، اما نمی شنوی. از او تکرار بخواه.','{"mode":"retrieval","textEn":"Sorry?","acceptedAnswersEn":["Sorry?"],"sourceTurnKey":"T05","showAnswerTextBeforeAttempt":false,"hintFa":"عبارت کوتاه را با آهنگ پرسشی بگو.","feedback":{"correctFa":"پاسخت با یکی از الگوهای این تمرین هماهنگ است.","retryFa":"عبارت کوتاه را با آهنگ پرسشی بگو."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session bounded pattern recall; not open-ended proficiency or pronunciation assessment."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

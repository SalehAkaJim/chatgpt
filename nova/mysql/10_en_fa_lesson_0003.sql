-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0003
-- levelKey: A1
-- sourceHash: 41267756512a3db83bef0e2101e5e70e70aa08e6b0ca472b22fa9e1f2b60bbe1
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
VALUES (@level_id,'EN-A1-L-0003',3,'A quick chat at the community center','یک احوالپرسی کوتاه','برای یک برنامه به مرکز محله آمده ای. آیریس در پذیرش کار می کند و از قبل همدیگر را می شناسید. پیش از رفتن به داخل، احوالپرسی می کنید.','A1-INTERACTION-GREET-STATE-CLOSE',420,'41267756512a3db83bef0e2101e5e70e70aa08e6b0ca472b22fa9e1f2b60bbe1','validated','{"outcomeFa":"زبان آموز می تواند حال طرف مقابل را بپرسد، یک پاسخ کوتاه بدهد و گفت و گو را دوستانه تمام کند.","scenarioFa":"برای یک برنامه به مرکز محله آمده ای. آیریس در پذیرش کار می کند و از قبل همدیگر را می شناسید. پیش از رفتن به داخل، احوالپرسی می کنید. نقش تو نینا است.","prerequisiteOutcomeKeys":["A1-INTERACTION-GREET-NAME","A1-INTERACTION-FIRST-MEETING"],"curriculum":{"startingKnowledge":"greetings_and_introductions","targetConstructions":[{"key":"EN-CONSTR-IM-STATE","form":"I''m + adjective","meaningFa":"گفتن حال خود با همان شروع آشنای معرفی"}],"supportLanguage":["Good! is a supported acknowledgement, not scored mastery."],"assessmentBoundary":"Guided speech and audio reconstruction are practice. Choice tasks assess recognition/selection. Final hidden-answer retrieval records first attempt and help separately; exact text matching cannot certify open-ended language ability or pronunciation.","transferPlan":{"mode":"same_lesson","intent":"End with meaning-cued recall without displayed English. Continue delayed review in later stories; this does not prove long-term retention."},"story":{"arcKey":"EN-A1-COMMUNITY","sceneKey":"EN-A1-SCENE-0003","learnerRoleKey":"nina","participants":["nina","iris"],"introducedCharacterKeys":["nina","iris"],"relationshipState":"already_known","continuesLessonKey":null,"dependsOnLessonKeys":[],"settingFa":"ورودی مرکز محله، پیش از رفتن به برنامه","storyBeatFa":"نینا با آیریس احوالپرسی می کند و بعد به برنامه می رود."},"reviewLinks":[{"lessonKey":"EN-A1-L-0002","activityKeys":["A05"],"learningDemand":"recognition","note":"Distinguish a wellbeing question from the earlier name question."}],"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0003' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A01','A02','A03','A04','A05','A06','A07');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),7) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04','T05','T06','T07');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),7) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-HELLO-01','word','hello','hello','interjection','greeting','سلام','nova/audio/lexical/en-fa/43cd0dd00a9bea0c54572e2140190981a5bfaddc71d5cb58e16ee2a1334a3d23.mp3','966','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-HELLO-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',1,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-NAME-01','word','name','name','noun','personal_name','اسم','nova/audio/lexical/en-fa/59e6f2bcb4530dddb372d54401b66a7bf735760a788f310a848829fdeae4e303.mp3','862','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-NAME-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',2,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-HOW-ARE-YOU-01','formula','how are you',NULL,NULL,NULL,'حالت چطوره؟','nova/audio/lexical/en-fa/e5d579f644dc5c98549540f7d446a9096b5d8bc670798180378c5dd6e4e7a8c2.mp3','1201','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-HOW-ARE-YOU-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',3,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-FINE-01','word','fine',NULL,'adjective',NULL,'خوب','nova/audio/lexical/en-fa/22a063aa10484109bb949bc9324213b8d7bfd16e2d54bea7d0648d401a2159bd.mp3','1018','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-FINE-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',4,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-THANKS-01','word','thanks',NULL,'interjection',NULL,'ممنون','nova/audio/lexical/en-fa/3d13b4eef688394fb8632e4f841fdb4d4e678af48061ead840c43c40b55c1c17.mp3','862','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-THANKS-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',5,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-SEE-YOU-01','formula','see you',NULL,NULL,NULL,'می بینمت؛ فعلا خداحافظ','nova/audio/lexical/en-fa/8853d7cc1554dee9c3d336396b4ecdbbdfb57bed0aa027f45c4efdbb6ce5eaef.mp3','862','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-SEE-YOU-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',6,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-GOOD-01','word','good',NULL,'adjective',NULL,'خوب','nova/audio/lexical/en-fa/8ad8635a0a073a2e1f391c6b261d23952745871bb2b1ed73452ca8a0f182a6fc.mp3','783','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-GOOD-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'support',7,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='iris' LIMIT 1),'Hello, Nina! How are you?','سلام نینا! حالت چطوره؟','nova/audio/turns/en-fa/EN-A1-L-0003/T01.mp3','1802',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nina' LIMIT 1),'I''m fine, thanks. How are you?','خوبم، ممنون. تو چطوری؟','nova/audio/turns/en-fa/EN-A1-L-0003/T02.mp3','1854','I''m fine, thanks. How are you?','["I''m fine, thanks. How are you?"]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='iris' LIMIT 1),'I''m fine, thanks.','خوبم، ممنون.','nova/audio/turns/en-fa/EN-A1-L-0003/T03.mp3','1201',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nina' LIMIT 1),'Good!','خوبه!','nova/audio/turns/en-fa/EN-A1-L-0003/T04.mp3','679','Good!','["Good!"]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T05',5,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='iris' LIMIT 1),'See you!','می بینمت!','nova/audio/turns/en-fa/EN-A1-L-0003/T05.mp3','835',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T06',6,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nina' LIMIT 1),'See you!','می بینمت!','nova/audio/turns/en-fa/EN-A1-L-0003/T06.mp3','835','See you!','["See you!"]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T07',7,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nina' LIMIT 1),'See you!','می بینمت!','nova/audio/turns/en-fa/EN-A1-L-0003/T07.mp3','835','See you!','["See you!"]',NULL,'{"usage":"retrieval_model_after_help"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'dialogue','حرف آیریس را گوش کن و پاسخ نینا را با صدای بلند بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E03","promptTurnKey":"T05","responseTurnKey":"T06","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'lexical_teach','عبارت های احوالپرسی و خداحافظی را مرور کن.',NULL,'{"lexicalKeys":["EN-LEX-HOW-ARE-YOU-01","EN-LEX-FINE-01","EN-LEX-THANKS-01","EN-LEX-SEE-YOU-01"],"explanationFa":"در I''m fine به جای اسم، حالت را می گویی. How are you برای پرسیدن حال است. See you یک خداحافظی دوستانه است."}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'sentence_order','گوش کن و کلمه ها را به همان ترتیب بچین.',NULL,'{"audioSourceTurnKey":"T03","tokensEn":["thanks.","I''m","fine,"],"answerTokensEn":["I''m","fine,","thanks."],"answerEn":"I''m fine, thanks.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"ترتیب شنیده شده را ساختی. معنی جمله: خوبم، ممنون.","retryFa":"یک بار دیگر صدا را پخش کن. ترتیب را از شنیدن جمله پیدا کن؛ معنی جمله: خوبم، ممنون."}}','{"evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','به موقعیت توجه کن و پاسخ مناسب را انتخاب کن.','آیریس حالت را می پرسد. می خواهی بگویی خوب هستی.','{"optionsEn":["I''m fine, thanks.","My name is Nina.","Nice to meet you."],"answerIndex":0,"feedback":{"optionsFa":["fine حال خوب را بیان می کند و thanks تشکر است.","این جمله اسم را می گوید؛ آیریس درباره حالت پرسیده است.","این جمله برای اولین آشنایی است؛ شما همدیگر را می شناسید و احوالپرسی می کنید."],"correctFa":"fine حال خوب را بیان می کند و thanks تشکر است."}}','{"evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'comprehension','با توجه به موقعیت، گزینه مناسب را انتخاب کن.','آیریس در شروع گفت و گو چه چیزی از نینا می پرسد؟','{"sourceTurnKeys":["T01"],"options":["اسمش چیست","حالش چطور است","اهل کجاست"],"answerIndex":1,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["پرسیدن اسم با name است؛ اینجا How are you را می شنوی.","How are you درباره حال طرف مقابل است.","این سوال درباره کشور یا شهر نیست؛ آیریس حال نینا را می پرسد."],"correctFa":"How are you درباره حال طرف مقابل است."}}','{"evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'response_choice','با توجه به موقعیت، گزینه مناسب را انتخاب کن.','وقت احوالپرسی تمام شده و می خواهی به برنامه داخل مرکز بروی. کدام جمله برای جدا شدن مناسب است؟','{"optionsEn":["I''m fine, thanks.","See you!","What''s your name?"],"answerIndex":1,"feedback":{"optionsFa":["این پاسخ احوالپرسی است و رفتن تو را نشان نمی دهد.","See you خداحافظی دوستانه برای پایان دیدار است.","اسمتان را می دانید؛ هدف این موقعیت خداحافظی است."],"correctFa":"See you خداحافظی دوستانه برای پایان دیدار است."}}','{"learningDemand":"changed_context","purpose":"Choose a closing expression before leaving reception.","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A07',7,'speak','این بار پاسخ آماده نداری. خودت جمله را بگو یا بنویس.','نینا هستی. برنامه شروع شده و می خواهی از آیریس جدا شوی. کوتاه خداحافظی کن.','{"mode":"retrieval","textEn":"See you!","acceptedAnswersEn":["See you!"],"sourceTurnKey":"T07","showAnswerTextBeforeAttempt":false,"hintFa":"عبارت خداحافظی دوستانه را به یاد بیاور.","feedback":{"correctFa":"پاسخت با یکی از الگوهای این تمرین هماهنگ است.","retryFa":"عبارت خداحافظی دوستانه را به یاد بیاور."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session bounded pattern recall; not open-ended proficiency or pronunciation assessment."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

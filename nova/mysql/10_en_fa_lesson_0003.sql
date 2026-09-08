-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0003
-- levelKey: A1
-- sourceHash: 2aafd351351c9684151258a119ca40ef2fdd41ea152331693fabf9bdf43f15d5
-- courseSourceHash: 09146e3c4ae512c4e36bd64b2ba05ef6df3abac5908d79c982597c81ef6f1374
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
VALUES (@course_id,'maya','Maya','female','vexa','{"roleFa":"شخصیت اصلی مکالمه های ابتدایی"}',1)
ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;

INSERT INTO lessons (level_id,lesson_key,sort_order,title,title_translation,description,primary_outcome_key,estimated_duration_sec,source_hash,status,metadata)
VALUES (@level_id,'EN-A1-L-0003',3,'A quick chat before class','یک احوالپرسی کوتاه','در راهرو با مایا احوالپرسی می کنی و پیش از رفتن به کلاس خداحافظی می کنی.','A1-INTERACTION-GREET-STATE-CLOSE',420,'2aafd351351c9684151258a119ca40ef2fdd41ea152331693fabf9bdf43f15d5','validated','{"outcomeFa":"زبان آموز می تواند حال طرف مقابل را بپرسد، یک پاسخ کوتاه بدهد و گفت و گو را دوستانه تمام کند.","scenarioFa":"قبل از شروع کلاس، مایا را در راهرو می بینی. نقش تو الکس است.","prerequisiteOutcomeKeys":["A1-INTERACTION-GREET-NAME","A1-INTERACTION-FIRST-MEETING"],"curriculum":{"startingKnowledge":"greetings_and_introductions","targetConstructions":[{"key":"EN-CONSTR-IM-STATE","form":"I''m + adjective","meaningFa":"گفتن حال خود با همان شروع آشنای معرفی"}],"supportLanguage":["Good! is a supported acknowledgement, not scored mastery."],"assessmentBoundary":"Guided speech remains practice. Independent tasks distinguish asking a name, asking about wellbeing, and closing an encounter.","transferPlan":{"mode":"same_lesson","intent":"Use a farewell in the changed context of leaving class; distinguish social functions using previously learned alternatives."}},"pilot":true,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0003' LIMIT 1);
DELETE FROM activities WHERE lesson_id=@lesson_id;
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id;
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

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
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'Hello, Alex! How are you?','سلام الکس! حالت چطوره؟','nova/audio/turns/en-fa/EN-A1-L-0003/T01.mp3','1802',NULL,NULL,NULL,'{}');
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',NULL,'I''m fine, thanks. How are you?','خوبم، ممنون. تو چطوری؟','nova/audio/turns/en-fa/EN-A1-L-0003/T02.mp3','2951','I''m fine, thanks. How are you?','["I''m fine, thanks. How are you?"]',NULL,'{}');
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'I''m fine, thanks.','خوبم، ممنون.','nova/audio/turns/en-fa/EN-A1-L-0003/T03.mp3','1384',NULL,NULL,NULL,'{}');
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',NULL,'Good!','خوبه!','nova/audio/turns/en-fa/EN-A1-L-0003/T04.mp3','679','Good!','["Good!"]',NULL,'{}');
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T05',5,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'See you!','می بینمت!','nova/audio/turns/en-fa/EN-A1-L-0003/T05.mp3','862',NULL,NULL,NULL,'{}');
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T06',6,'learner',NULL,'See you!','می بینمت!','nova/audio/turns/en-fa/EN-A1-L-0003/T06.mp3','966','See you!','["See you!"]',NULL,'{}');

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'dialogue','حرف مایا را بخوان و گوش کن، بعد پاسخ آماده را با صدای بلند بازخوانی کن.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E03","promptTurnKey":"T05","responseTurnKey":"T06","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'lexical_teach','عبارت های احوالپرسی و خداحافظی را مرور کن.',NULL,'{"lexicalKeys":["EN-LEX-HOW-ARE-YOU-01","EN-LEX-FINE-01","EN-LEX-THANKS-01","EN-LEX-SEE-YOU-01"],"explanationFa":"در I''m fine به جای اسم، حالت را می گویی. How are you برای پرسیدن حال است. See you یک خداحافظی دوستانه است."}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'sentence_order','گوش کن و کلمه ها را به همان ترتیب بچین.',NULL,'{"audioSourceTurnKey":"T03","tokensEn":["thanks.","I''m","fine,"],"answerTokensEn":["I''m","fine,","thanks."],"answerEn":"I''m fine, thanks.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'fill_blank','با توجه به موقعیت، گزینه مناسب را انتخاب کن.',NULL,'{"sentenceEn":"I''m ___, thanks.","optionsEn":["name","hello","fine"],"answerIndex":2}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'comprehension','با توجه به موقعیت، گزینه مناسب را انتخاب کن.','مایا در شروع گفت و گو چه چیزی از الکس می پرسد؟','{"sourceTurnKeys":["T01"],"options":["اسمش چیست","حالش چطور است","اهل کجاست"],"answerIndex":1,"transcriptAfterAttempt":true}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'response_choice','با توجه به موقعیت، گزینه مناسب را انتخاب کن.','کلاس تمام شده و می خواهی از دوستت جدا شوی. کدام جمله مناسب است؟','{"optionsEn":["I''m fine, thanks.","See you!","What''s your name?"],"answerIndex":1}','{"learningDemand":"changed_context","purpose":"Choose a farewell for leaving class rather than answering a greeting or name question."}');

COMMIT;

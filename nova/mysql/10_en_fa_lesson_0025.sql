-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0025
-- levelKey: A1
-- sourceHash: 23c5eadf9c254bf0259e5b039b7225a9dd9a0c010ef84d6f4e9d664e274b7f3e
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
VALUES (@level_id,'EN-A1-L-0025',25,'No, I''m not','نه، نیستم','نورا برای آماده کردن دو اتاق فضای مشترک با اوون تماس می گیرد. اوون جای خودش را با یک جواب منفی کوتاه مشخص می کند و بعد برای کمک به نورا آماده می شود.','A1-INTERACTION-NEGATE-LOCATION',420,'23c5eadf9c254bf0259e5b039b7225a9dd9a0c010ef84d6f4e9d664e274b7f3e','validated','{"outcomeFa":"زبان آموز می تواند به یک سوال ساده درباره جای خودش جواب منفی بدهد و با I''m not یک جمله کوتاه منفی بسازد.","scenarioFa":"نورا و اوون برای یک برنامه کوچک ساختمان دو اتاق فضای مشترک را آماده می کنند. نورا از اتاق دو با اوون تماس می گیرد تا بداند او کجاست و آیا می تواند کمک کند. نقش تو اوون است.","prerequisiteOutcomeKeys":["A1-INTERACTION-CHOOSE-ROOM","A1-INTERACTION-ASK-HELP"],"curriculum":{"startingKnowledge":"early_a1_room_labels_help_requests_and_affirmative_self_statements","targetConstructions":[{"key":"EN-CONSTR-I-AM-NOT","form":"I am not","meaningFa":"منفی کردن یک جمله ساده درباره خودت"},{"key":"EN-CONSTR-IM-NOT-IN-PLACE","form":"I''m not in + place.","meaningFa":"گفتن این که در یک جای مشخص نیستی"}],"supportLanguage":[],"assessmentBoundary":"The Lesson introduces not only for a first-person negative response with already-known room labels. It does not teach general negation across persons or tenses.","transferPlan":{"mode":"same_lesson","intent":"Move from recognizing Room one/Room two and asking for help to rejecting an incorrect location and rebuilding the negative sentence with a different room label."},"story":{"arcKey":"EN-A1-NEIGHBORS","sceneKey":"EN-A1-FACTORY-SCENE-0025","learnerRoleKey":"owen","participants":["owen","nora"],"introducedCharacterKeys":[],"relationshipState":"already_known","continuesLessonKey":"EN-A1-L-0019","dependsOnLessonKeys":["EN-A1-L-0019"],"settingFa":"ساختمان، آماده کردن دو اتاق فضای مشترک","storyBeatFa":"نورا و اوون دوباره برای یک کار مشترک ساختمان هماهنگ می شوند؛ این بار نورا اول جای اوون را اشتباه حدس می زند و اوون آن را اصلاح می کند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0019","activityKeys":["A02","A03"],"learningDemand":"retrieval","note":"The neighbor pair returns after five intervening Lessons and the familiar help request appears naturally after the location check."},{"lessonKey":"EN-A1-L-0014","activityKeys":["A04","A05","A06"],"learningDemand":"transfer","note":"Room one and Room two move from choosing a room to correcting an incorrect location guess."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0025","specHash":"233fd7da03439018212e938d814d42080bc134e43837d3243b7d8e61e0211b2b","grammarTargetKeys":["CEFRJ-GRAM-1-1"],"reviewLexicalLemmas":["help","room","one","two"],"usageFallbacks":[{"query":"no i''m not","rationale":"A short No, I''m not. reply is the direct first-person negative answer to the immediately preceding Are you ...? question; the lesson keeps the meaning and discourse function explicit and bounded."},{"query":"i''m not in room","rationale":"I''m not in room + number is a transparent A1 location negation built from the CEFR-J I am not pattern and previously taught room-number components; Naturalness and Generativity gates also test the changed room filler."}]},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0025' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A01','A02','A03','A04','A05','A06');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),6) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04','T05','T06');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),6) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-NOT-01','word','not','not','adverb','negation','نه، نیست','nova/audio/lexical/en-fa/b1c8ba2136442bd5171b620e4431718237d081b13778554a79e0e386bf78270c.mp3','783','{"referenceKey":"EN-REF-84D3F8ECE5F12EF40C83"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-NOT-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-HELP-01','word','help','help','verb','give_assistance','کمک کردن','nova/audio/lexical/en-fa/02c81c6e0365683dc703b06533126e92744afa911cdf1cdfd53e53e5a732966e.mp3','862','{"referenceKey":"EN-REF-76A0FAF42C7FB7906AA5"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-HELP-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',2,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-ROOM-01','word','room','room','noun','building_room','اتاق','nova/audio/lexical/en-fa/4f5cb56209e6eafba4262d207d9da0b2b8ae317fc55e5934616f42bd1adc828a.mp3','835','{"referenceKey":"EN-REF-D8B2B1429B2580871B77"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-ROOM-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',3,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-ONE-01','word','one','one','numeral','cardinal_one','یک','nova/audio/lexical/en-fa/b24f501976c1dc7426f52db7efa5eafe6daa966bc22ff9e07badde7662f33357.mp3','679','{"source":"nova_authored_curriculum_word","referenceGap":true,"referenceGapReason":"The current A1 reference snapshot has no exact production record for the basic cardinal word one."}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-ONE-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',4,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-TWO-01','word','two','two','numeral','cardinal_two','دو','nova/audio/lexical/en-fa/97e8133b6ee7a9f75e86ef00a02ffd9ce4001b52414aa1ee0eb18794b4859acb.mp3','835','{"source":"nova_authored_curriculum_word","referenceGap":true,"referenceGapReason":"The current A1 reference snapshot has no exact production record for the basic cardinal word two."}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-TWO-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',5,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nora' LIMIT 1),'Owen, are you in room two?','اوون، تو اتاق دویی؟','nova/audio/turns/en-fa/EN-A1-L-0025/T01.mp3','1697',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'No, I''m not.','نه، نیستم.','nova/audio/turns/en-fa/EN-A1-L-0025/T02.mp3','1750','No, I''m not.','["No, I''m not."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nora' LIMIT 1),'Can you help in room two?','می تونی تو اتاق دو کمک کنی؟','nova/audio/turns/en-fa/EN-A1-L-0025/T03.mp3','1436',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'Yes.','بله.','nova/audio/turns/en-fa/EN-A1-L-0025/T04.mp3','783','Yes.','["Yes."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T05',5,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'I''m not in room one.','من تو اتاق یک نیستم.','nova/audio/turns/en-fa/EN-A1-L-0025/T05.mp3','1384','I''m not in room one.','["I''m not in room one."]',NULL,'{"usage":"retrieval_model_after_help"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T06',6,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'I''m not in room two.','من تو اتاق دو نیستم.','nova/audio/turns/en-fa/EN-A1-L-0025/T06.mp3','1488','I''m not in room two.','["I''m not in room two."]',NULL,'{"usage":"retrieval_model_after_help"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'lexical_teach','کلمه not و شکل کوتاه I''m not را یاد بگیر.',NULL,'{"lexicalKeys":["EN-LEX-NOT-01"],"explanationFa":"not جمله را منفی می کند. I''m not شکل کوتاه I am not است. وقتی نورا می پرسد Are you in room two? جواب No, I''m not. یعنی نه، نیستم."}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','سوال نورا را گوش کن و جواب اوون را با صدای بلند بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','به سوال اول نورا گوش کن.','نورا فکر می کند اوون در کدام اتاق است؟','{"sourceTurnKeys":["T01"],"options":["اتاق یک","اتاق دو","کافه"],"answerIndex":1,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["نورا room one نمی گوید.","درست است؛ نورا room two را می پرسد.","این سوال درباره کافه نیست."],"correctFa":"نورا می پرسد اوون در اتاق دو است یا نه."}}','{"evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'sentence_order','جمله منفی را گوش کن و بخش ها را مرتب کن.',NULL,'{"audioSourceTurnKey":"T05","tokensEn":["room","I''m","one.","in","not"],"answerTokensEn":["I''m","not","in","room","one."],"answerEn":"I''m not in room one.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"درست چیدی؛ not بعد از I''m آمده و جمله را منفی کرده.","retryFa":"با I''m شروع کن، بعد not را بگذار و جای مورد نظر را در پایان بیاور."}}','{"evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','به یک حدس اشتباه جواب بده.','نورا این بار می پرسد Are you in room one? اما تو آنجا نیستی. اولین جواب طبیعی چیست؟','{"optionsEn":["No, I''m not.","Yes.","Room one, please."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ حدس اشتباه را کوتاه رد می کنی.","Yes یعنی حدس نورا درست است.","این جمله یک اتاق را انتخاب می کند و جواب این سوال نیست."],"correctFa":"No, I''m not. یک جواب کوتاه و طبیعی برای رد کردن حدس نوراست."}}','{"learningDemand":"transfer","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'speak','این بار جمله انگلیسی را نمی بینی. جمله منفی کامل را خودت بساز.','اوون هستی. بگو در اتاق دو نیستی.','{"mode":"retrieval","textEn":"I''m not in room two.","acceptedAnswersEn":["I''m not in room two."],"sourceTurnKey":"T06","showAnswerTextBeforeAttempt":false,"hintFa":"با I''m شروع کن، not را اضافه کن و این بار room two را در پایان بگو.","feedback":{"correctFa":"درست است؛ همان الگوی منفی را با اتاق دیگری دوباره ساختی.","retryFa":"I''m + not + in + room two را بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session first-person location negation with the previously taught one/two room fillers."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

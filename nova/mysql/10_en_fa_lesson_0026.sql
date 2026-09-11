-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0026
-- levelKey: A1
-- sourceHash: a3a207f5fd9eeaaff6d13e5578ba622992c01d9dd8f7781a718e6618dedae421
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
VALUES (@level_id,'EN-A1-L-0026',26,'We are in room two','ما در اتاق دو هستیم','نینا برای برنامه بعدی مرکز محله زمان و اتاق گروه را با آیریس چک می کند و برای اولین بار با We are درباره خودش و بقیه گروه حرف می زند.','A1-INTERACTION-STATE-GROUP-LOCATION',420,'a3a207f5fd9eeaaff6d13e5578ba622992c01d9dd8f7781a718e6618dedae421','validated','{"outcomeFa":"زبان آموز می تواند با We are مکان خودش و یک گروه را در یک اتاق آشنا بیان کند.","scenarioFa":"نینا به پذیرش مرکز محله برگشته تا زمان و اتاق برنامه گروه را چک کند. آیریس زمان و اتاق را یکی یکی می پرسد. نقش تو نینا است.","prerequisiteOutcomeKeys":["A1-INTERACTION-CHOOSE-ROOM","A1-INTERACTION-ASK-TIME"],"curriculum":{"startingKnowledge":"early_a1_room_labels_clock_time_and_first_person_be","targetConstructions":[{"key":"EN-CONSTR-WE-ARE-IN-PLACE","form":"We are in + place.","meaningFa":"گفتن این که تو و یک یا چند نفر دیگر در یک جای مشخص هستید"}],"supportLanguage":["What time?","At six.","Room one?","No."],"assessmentBoundary":"The Lesson introduces only affirmative We are for a familiar room-location statement. It does not teach we/us broadly, other persons of be, or plural noun agreement.","transferPlan":{"mode":"same_lesson","intent":"Review the due At six time response, then move from choosing Room one/Room two to stating a group location with We are and recombine the location frame with the other known room number."},"story":{"arcKey":"EN-A1-COMMUNITY","sceneKey":"EN-A1-FACTORY-SCENE-0026","learnerRoleKey":"nina","participants":["nina","iris"],"introducedCharacterKeys":[],"relationshipState":"already_known","continuesLessonKey":"EN-A1-L-0020","dependsOnLessonKeys":["EN-A1-L-0020"],"settingFa":"مرکز محله، پذیرش قبل از برنامه گروه","storyBeatFa":"نینا بعد از فاصله چند درس دوباره به آیریس سر می زند؛ این بار فقط اتاق را انتخاب نمی کند و زمان و محل حضور گروه را تایید می کند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0016","activityKeys":["A02","A03"],"learningDemand":"retrieval","note":"At six returns after a six-Lesson gap as a real schedule answer rather than a new target."},{"lessonKey":"EN-A1-L-0014","activityKeys":["A02","A04","A05","A06"],"learningDemand":"transfer","note":"Room one/two return after eleven intervening Lessons and move from choosing a label to stating where the group is."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0026","specHash":"4a439dec8682d83acd9bdd343133379465f7d652e1012493c7cdcf3cdff8aca5","grammarTargetKeys":["CEFRJ-GRAM-4"],"reviewLexicalLemmas":["at","six","room","one","two"],"usageFallbacks":[{"query":"we are in room","rationale":"We are in room + number is a transparent early-A1 location statement built from the selected CEFR-J we are pattern, in, and previously taught productive room-number components; the final task changes the room filler to verify recombination."}]},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0026' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A02','A01','A03','A04','A05','A06');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),6) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04','T05','T06');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),6) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-AT-TIME-01','word','at','at','preposition','clock_time_preposition','در؛ برای ساعت مشخص','nova/audio/lexical/en-fa/c9a3acab02b7c84b88591d3b3ad57ff81b211b7b0bd561202723823f1289816b.mp3','731','{"source":"nova_authored_curriculum_word","referenceGap":true,"referenceGapReason":"The current A1 reference snapshot has no exact production record for at in the clock-time use."}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-AT-TIME-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',1,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-SIX-01','word','six','six','numeral','cardinal_six','شش','nova/audio/lexical/en-fa/200c940b2feff6bab7f18c42f264a8f37e858bcd56c006d5ebf1a1450786fc2d.mp3','783','{"source":"nova_authored_curriculum_word","referenceGap":true,"referenceGapReason":"The current A1 reference snapshot has no exact production record for the basic cardinal word six."}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-SIX-01' LIMIT 1);
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
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='iris' LIMIT 1),'What time?','چه ساعتی؟','nova/audio/turns/en-fa/EN-A1-L-0026/T01.mp3','914',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nina' LIMIT 1),'At six.','ساعت شش.','nova/audio/turns/en-fa/EN-A1-L-0026/T02.mp3','783','At six.','["At six."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='iris' LIMIT 1),'Room one?','اتاق یک؟','nova/audio/turns/en-fa/EN-A1-L-0026/T03.mp3','862',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nina' LIMIT 1),'No. We are in room two.','نه. ما در اتاق دو هستیم.','nova/audio/turns/en-fa/EN-A1-L-0026/T04.mp3','1671','No. We are in room two.','["No. We are in room two.","We are in room two.","No. We''re in room two."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T05',5,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nina' LIMIT 1),'We are in room one.','ما در اتاق یک هستیم.','nova/audio/turns/en-fa/EN-A1-L-0026/T05.mp3','1436','We are in room one.','["We are in room one.","We''re in room one."]',NULL,'{"usage":"retrieval_model_after_help"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T06',6,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nina' LIMIT 1),'We are in room two.','ما در اتاق دو هستیم.','nova/audio/turns/en-fa/EN-A1-L-0026/T06.mp3','1384','We are in room two.','["We are in room two.","We''re in room two."]',NULL,'{"usage":"supported_reconstruction_model"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',1,'dialogue','سوال های آیریس را گوش کن و جواب نینا را با صدای بلند بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',2,'response_choice','معنی We are را در جمله پیدا کن.','این جمله چه می گوید؟','{"options":["من و بقیه گروه در اتاق دو هستیم","فقط من در اتاق دو هستم","اتاق دو خالی است"],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ we یعنی من به همراه یک یا چند نفر دیگر.","برای فقط خودت I به کار می رود، نه we.","جمله درباره حضور گروه است، نه خالی بودن اتاق."],"correctFa":"We are اینجا درباره نینا و بقیه گروه حرف می زند."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','به سوال زمان و جواب نینا گوش کن.','برنامه چه ساعتی است؟','{"sourceTurnKeys":["T01","T02"],"options":["ساعت شش","اتاق شش","دوشنبه"],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است؛ At six اینجا زمان را می گوید.","six اینجا شماره اتاق نیست.","در این گفت و گو روز برنامه گفته نمی شود."],"correctFa":"At six یعنی برنامه ساعت شش است."}}','{"learningDemand":"retrieval","evidenceKind":"recognition_or_selection","skillFocus":"listening"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'sentence_order','جمله مکان گروه را گوش کن و بخش ها را مرتب کن.',NULL,'{"audioSourceTurnKey":"T06","tokensEn":["two.","in","We","room","are"],"answerTokensEn":["We","are","in","room","two."],"answerEn":"We are in room two.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"درست چیدی؛ We are اول جمله آمده و بعد مکان گروه را گفتی.","retryFa":"با We شروع کن، بعد are را بگذار و مکان را در پایان بساز."}}','{"evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','همان الگو را با اتاق دیگری بساز.','این بار گروه تو در اتاق یک است. چه می گویی؟','{"optionsEn":["We are in room one.","We are in room two.","Room one, please."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ We are را نگه داشتی و فقط شماره اتاق را عوض کردی.","این جمله هنوز اتاق دو را می گوید.","این فقط یک اتاق را انتخاب می کند؛ مکان گروه را بیان نمی کند."],"correctFa":"We are in room one. همان ساختار را با filler جدید به کار می برد."},"practiceOnly":true}','{"learningDemand":"transfer","evidenceKind":"practice_only","qualityV3PracticeReason":"duplicate_exact_target_sentence"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'speak','جواب انگلیسی را نمی بینی. مکان گروه را خودت بگو.','نینا هستی. این بار برنامه گروه در اتاق یک است. بگو ما در اتاق یک هستیم.','{"mode":"retrieval","textEn":"We are in room one.","acceptedAnswersEn":["We are in room one.","We''re in room one."],"sourceTurnKey":"T05","showAnswerTextBeforeAttempt":false,"hintFa":"با We are شروع کن و بعد in room one را اضافه کن.","feedback":{"correctFa":"درست است؛ We are را با اتاق جدید دوباره ساختی.","retryFa":"We + are + in + room one را بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session affirmative We are location statement with previously taught room one/two fillers."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

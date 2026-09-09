-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0006
-- levelKey: A1
-- sourceHash: 692efa20fed455f693f19d3196058afa4182d5fb9c2ffd2c1d5573246a0d08ec
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
VALUES (@level_id,'EN-A1-L-0006',6,'What''s this?','این چیه؟','الکس دوباره با مایا هم گروه شده و این بار در کلاس اسم چند وسیله روی میز را تمرین می کنند.','A1-INTERACTION-NAME-OBJECT',420,'692efa20fed455f693f19d3196058afa4182d5fb9c2ffd2c1d5573246a0d08ec','validated','{"outcomeFa":"زبان آموز می تواند نام یک وسیله نزدیک را بپرسد و دو وسیله ساده را نام ببرد.","scenarioFa":"جلسه بعدی کلاس است و دوباره با مایا هم گروه شده ای. نقش تو الکس است و وسایل روی میز را نام می بری.","prerequisiteOutcomeKeys":["A1-INTERACTION-GREET-NAME","A1-INTERACTION-COUNTRY"],"curriculum":{"startingKnowledge":"early_a1_after_greetings","targetConstructions":[{"key":"EN-CONSTR-WHATS-THIS","form":"What''s this?","meaningFa":"پرسیدن نام چیزی نزدیک"},{"key":"EN-CONSTR-ITS-A","form":"It''s a + singular noun","meaningFa":"نام بردن یک وسیله ساده"}],"supportLanguage":[{"form":"And this?","meaningFa":"و این یکی؟"}],"assessmentBoundary":"The Lesson teaches two concrete object labels and one simple naming pattern. Final retrieval measures same-session recall for a shown object, not general vocabulary breadth.","transferPlan":{"mode":"same_lesson","intent":"Return to the classmates story after the minimum five-Lesson gap and move their relationship from first meeting to a shared classroom task."},"story":{"arcKey":"EN-A1-CLASSMATES","sceneKey":"EN-A1-FACTORY-SCENE-0006","learnerRoleKey":"alex","participants":["alex","maya"],"introducedCharacterKeys":[],"relationshipState":"already_known","continuesLessonKey":"EN-A1-L-0001","dependsOnLessonKeys":["EN-A1-L-0001"],"settingFa":"کلاس، تمرین دو نفره در جلسه بعدی","storyBeatFa":"الکس و مایا که قبلا آشنا شده اند، این بار در یک تمرین کلاسی با هم کار می کنند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0001","activityKeys":["A04"],"learningDemand":"transfer","note":"The earlier What''s your name? information pattern is contrasted with What''s this? for an object."}],"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"factory_test_story_recurrence"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0006' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A01','A02','A03','A04','A05','A06');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),6) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04','T05');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),5) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-PEN-01','word','pen','pen','noun','writing_tool','خودکار','nova/audio/lexical/en-fa/2aa43bd6c4bd4e96eac4767b4a7dc2e479a4940de9bc83baa3e8b0c315107bd6.mp3','783','{"referenceKey":"EN-REF-E7158161767216455400"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-PEN-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-BOOK-01','word','book','book','noun','physical_book','کتاب','nova/audio/lexical/en-fa/7691e33ffd90b0f3fc0ffe1501d30f48d68893e76bb3d9109d3d8b61a1992b78.mp3','914','{"referenceKey":"EN-REF-6CB64DEA48DE0EFA4185"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-BOOK-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',2,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'What''s this?','این چیه؟','nova/audio/turns/en-fa/EN-A1-L-0006/T01.mp3','1071',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='alex' LIMIT 1),'It''s a pen.','یک خودکاره.','nova/audio/turns/en-fa/EN-A1-L-0006/T02.mp3','1071','It''s a pen.','["It''s a pen."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'And this?','و این یکی؟','nova/audio/turns/en-fa/EN-A1-L-0006/T03.mp3','966',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='alex' LIMIT 1),'It''s a book.','یک کتابه.','nova/audio/turns/en-fa/EN-A1-L-0006/T04.mp3','1071','It''s a book.','["It''s a book."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T05',5,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='alex' LIMIT 1),'It''s a book.','یک کتابه.','nova/audio/turns/en-fa/EN-A1-L-0006/T05.mp3','1071','It''s a book.','["It''s a book."]',NULL,'{"usage":"retrieval_model_after_help"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'lexical_teach','دو وسیله و دو الگوی اصلی این درس را ببین و بشنو.',NULL,'{"lexicalKeys":["EN-LEX-PEN-01","EN-LEX-BOOK-01"],"explanationFa":"pen یعنی خودکار و book یعنی کتاب. برای پرسیدن نام وسیله نزدیک از What''s this? و برای جواب از It''s a و نام وسیله استفاده کن."}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','به مایا گوش کن و جواب الکس را با صدای بلند بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'sentence_order','پاسخ الکس را گوش کن و سه بخش جمله را مرتب کن.',NULL,'{"audioSourceTurnKey":"T04","tokensEn":["book.","It''s","a"],"answerTokensEn":["It''s","a","book."],"answerEn":"It''s a book.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"درست چیدی؛ It''s a قبل از نام وسیله می آید.","retryFa":"دوباره گوش کن؛ جمله با It''s شروع می شود."}}','{"evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','برای وسیله ای که مایا نشان می دهد پاسخ مناسب را انتخاب کن.','مایا یک خودکار نشان داده و می پرسد این چیه؟','{"optionsEn":["It''s a pen.","It''s a book.","I''m from Iran."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ pen همان خودکار است.","book یعنی کتاب، اما وسیله نشان داده شده خودکار است.","این جمله درباره اهل کجا بودن است و به نام وسیله جواب نمی دهد."],"correctFa":"It''s a pen یعنی این یک خودکار است."}}','{"evidenceKind":"recognition_or_selection","learningDemand":"transfer"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'comprehension','به پاسخ الکس گوش کن و وسیله را تشخیص بده.','الکس درباره کدام وسیله حرف می زند؟','{"sourceTurnKeys":["T04"],"options":["کتاب","خودکار","کشور"],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است؛ book یعنی کتاب.","pen یعنی خودکار و در پاسخ قبلی استفاده شد.","این مکالمه درباره وسیله روی میز است."],"correctFa":"It''s a book یعنی این یک کتاب است."}}','{"evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'speak','جواب انگلیسی را نمی بینی. اسم وسیله را با جمله کامل بگو یا بنویس.','مایا یک کتاب نشان می دهد. در نقش الکس بگو این یک کتاب است.','{"mode":"retrieval","textEn":"It''s a book.","acceptedAnswersEn":["It''s a book."],"sourceTurnKey":"T05","showAnswerTextBeforeAttempt":false,"hintFa":"با It''s a شروع کن و بعد نام وسیله را بگو.","feedback":{"correctFa":"الگوی نام بردن یک وسیله را بدون پاسخ آماده استفاده کردی.","retryFa":"It''s a + book را به یاد بیاور."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session bounded recall of one taught object label and naming pattern; not general object vocabulary mastery."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

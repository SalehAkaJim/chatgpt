-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0134
-- levelKey: A1
-- sourceHash: 17dc18a14e536730ddc37b53261bc71a46ebdd94b67108d99d83fafab69a39c7
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
VALUES (@level_id,'EN-A1-L-0134',134,'The blue one looks pretty','آبی زیبا به نظر می‌رسد','با pretty در یک موقعیت ساده و کاربردی حرف بزن.','EN-A1-OUTCOME-0134',420,'17dc18a14e536730ddc37b53261bc71a46ebdd94b67108d99d83fafab69a39c7','validated','{"outcomeFa":"pretty را به معنی «زیبا» در دو جمله کوتاه و طبیعی به کار ببری.","scenarioFa":"نینا و آیریس در مرکز محله برای جشن، بین دو تزیین ساده انتخاب می‌کنند.","prerequisiteOutcomeKeys":["EN-A1-OUTCOME-0133"],"curriculum":{"startingKnowledge":"early_a1_spoken_core_and_recent_review","targetConstructions":[{"key":"EN-CONSTR-0134-PRETTY","form":"The blue one looks pretty","meaningFa":"توصیف ظاهر چیزی با pretty"}],"supportLanguage":[{"form":"Which one do you like?","meaningFa":"کدام را دوست داری؟"},{"form":"And the red one?","meaningFa":"قرمز چطور؟"}],"assessmentBoundary":"Only the bounded adjective sense of pretty represented by reference EN-REF-94E303E18818495BC1AE is assessed.","transferPlan":{"mode":"same_lesson","intent":"Reuse pretty in a second controlled context after guided exposure."},"story":{"arcKey":"EN-A1-COMMUNITY","sceneKey":"EN-A1-FACTORY-SCENE-0134","learnerRoleKey":"nina","participants":["iris","nina"],"introducedCharacterKeys":[],"relationshipState":"already_known","dependsOnLessonKeys":["EN-A1-L-0129"],"continuesLessonKey":"EN-A1-L-0129","settingFa":"مرکز محله، سالن جشن","storyBeatFa":"نینا و آیریس در مرکز محله برای جشن، بین دو تزیین ساده انتخاب می‌کنند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0129","activityKeys":["A08"],"learningDemand":"recognition","note":"Returning story arc is spaced by 5 Lessons; the played learner role switches from the previous scene."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0134","specHash":"fe36cca1733b09c5529c0fc4d28b5ce9b5ddfa557d40b4bbf9f08f67e8f6e687","grammarTargetKeys":["CEFRJ-GRAM-60"],"reviewLexicalLemmas":[],"usageFallbacks":[{"query":"the blue one looks pretty","rationale":"Bounded generated usage for the intended pretty target and selected A1 construction."},{"query":"it looks pretty too","rationale":"Bounded generated usage for the intended pretty target and selected A1 construction."},{"query":"pretty","rationale":"Bounded generated usage for the intended pretty target and selected A1 construction."}]},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing","lessonArchetype":"lexical_context"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0134' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A02','A01','A03','A04','A05','A06','A07','A08');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),8) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),4) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-PRETTY-01','word','pretty','pretty','adjective','d3c2a272-2544-5957-a2be-efaba2a4a844','زیبا','nova/audio/lexical/en-fa/fa938138389fd4dfc4aae6836eb3f67aafff81e4b0d50dcbeb9a61af16a10696.mp3','914','{"referenceKey":"EN-REF-94E303E18818495BC1AE"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-PRETTY-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='iris' LIMIT 1),'Which one do you like?','کدام را دوست داری؟','nova/audio/turns/en-fa/EN-A1-L-0134/T01.mp3','1332',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nina' LIMIT 1),'The blue one looks pretty.','آبی زیبا به نظر می‌رسد.','nova/audio/turns/en-fa/EN-A1-L-0134/T02.mp3','1515','The blue one looks pretty.','["The blue one looks pretty."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='iris' LIMIT 1),'And the red one?','قرمز چطور؟','nova/audio/turns/en-fa/EN-A1-L-0134/T03.mp3','1071',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nina' LIMIT 1),'It looks pretty too.','آن هم زیبا به نظر می‌رسد.','nova/audio/turns/en-fa/EN-A1-L-0134/T04.mp3','1384','It looks pretty too.','["It looks pretty too."]',NULL,'{"usage":"changed_context_transfer"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',1,'dialogue','حرف شخصیت مقابل را گوش کن و جواب نقش خودت را بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',2,'response_choice','معنی pretty را در این درس پیدا کن.','pretty اینجا چه معنی‌ای دارد؟','{"options":["زیبا","گران","بزرگ"],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این معنی هدف این درس نیست.","این گزینه با موقعیت درس جور نیست."],"correctFa":"زیبا"}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','بخش اول گفت‌وگو را دوباره گوش کن.','کدام جمله با پاسخ نقش تو در بخش اول یکی است؟','{"sourceTurnKeys":["T01","T02"],"options":["The blue one looks pretty.","The blue one looks simple.","The red one looks pretty."],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است.","این جمله به‌جای زیبا بودن، ساده بودن گزینه آبی را می‌گوید.","این جمله درباره گزینه قرمز است، نه پاسخ بخش اول."],"correctFa":"آبی زیبا به نظر می‌رسد."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","skillFocus":"listening","distractorAudit":{"reviewerType":"model","items":[{"option":"The blue one looks simple.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما به جای زیبا بودن، ساده بودن گزینه آبی را می‌گوید."},{"option":"The red one looks pretty.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما رنگ را از آبی به قرمز تغییر می‌دهد و پاسخ شنیده‌شده نیست."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','جمله درست را انتخاب کن.','آبی زیبا به نظر می‌رسد.','{"optionsEn":["The blue one looks pretty.","The blue one looks simple.","The red one looks pretty."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله طبیعی است، اما معنی هدف را نمی‌رساند.","این جمله طبیعی است، اما با معنی فارسی فرق دارد."],"correctFa":"The blue one looks pretty."},"practiceOnly":true}','{"learningDemand":"recognition","evidenceKind":"practice_only","distractorAudit":{"reviewerType":"model","items":[{"option":"The blue one looks simple.","grammatical":true,"natural":true,"contrastReasonFa":"جمله از نظر انگلیسی طبیعی است، اما پاسخ معنایی هدف نیست."},{"option":"The red one looks pretty.","grammatical":true,"natural":true,"contrastReasonFa":"جمله از نظر انگلیسی طبیعی است، اما با پیام فارسی هدف فرق دارد."}]},"qualityV3PracticeReason":"duplicate_exact_target_sentence"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','جواب موقعیت دوم را انتخاب کن.','آن هم زیبا به نظر می‌رسد.','{"optionsEn":["It looks pretty too.","It looks simple too.","It looks small too."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله طبیعی است، اما معنی دیگری را می‌رساند.","این جمله طبیعی است، اما پاسخ موقعیت دوم نیست."],"correctFa":"It looks pretty too."},"practiceOnly":true}','{"learningDemand":"transfer","evidenceKind":"practice_only","distractorAudit":{"reviewerType":"model","items":[{"option":"It looks simple too.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما معنی هدف را تغییر می‌دهد."},{"option":"It looks small too.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما پاسخ درست این موقعیت نیست."}]},"qualityV3PracticeReason":"duplicate_exact_target_sentence"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'sentence_order','پاسخ اول را دوباره گوش کن و جمله را مرتب کن.',NULL,'{"audioSourceTurnKey":"T02","tokensEn":["pretty.","looks","one","blue","The"],"answerTokensEn":["The","blue","one","looks","pretty."],"answerEn":"The blue one looks pretty.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"درست چیدی.","retryFa":"دوباره به صدای همان پاسخ گوش کن."}}','{"learningDemand":"supported_reconstruction","evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A07',7,'speak','جواب انگلیسی پنهان است؛ خودت بگو.','در نقش خودت بگو: آن هم زیبا به نظر می‌رسد.','{"mode":"retrieval","textEn":"It looks pretty too.","acceptedAnswersEn":["It looks pretty too."],"sourceTurnKey":"T04","showAnswerTextBeforeAttempt":false,"hintFa":"از pretty استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"جمله کوتاه را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session bounded retrieval after the supplying dialogue has already been exposed."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A08',8,'response_choice','یک نکته از داستان قبلی این شخصیت‌ها را مرور کن.','این دست من است.','{"optionsEn":["This is my hand.","This is my book.","This is my bag."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله طبیعی است، اما با مرور هدف فرق دارد.","این جمله طبیعی است، اما پاسخ دقیق نیست."],"correctFa":"This is my hand."}}','{"learningDemand":"review","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"This is my book.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما معنی مرورشده را تغییر می‌دهد."},{"option":"This is my bag.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما پاسخ دقیق متن فارسی نیست."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

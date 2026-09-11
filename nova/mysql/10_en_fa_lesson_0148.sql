-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0148
-- levelKey: A1
-- sourceHash: 169383cf338cc2f1cbdfed4e77cef54a00151472098744143ba95d168ef97732
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
VALUES (@level_id,'EN-A1-L-0148',148,'Tell someone to bring it','بگو چیزی را بیاورد','با bring یک دستور کوتاه و طبیعی بساز.','EN-A1-OUTCOME-0148',420,'169383cf338cc2f1cbdfed4e77cef54a00151472098744143ba95d168ef97732','validated','{"outcomeFa":"bring را به معنی «آوردن» در دو دستور کوتاه و طبیعی به کار ببری.","scenarioFa":"در ایستگاه اتوبوس، سارا می‌گوید «الان چه چیزی لازم داریم؟» و روبی پاسخ می‌دهد «فرم را بیاور.»","prerequisiteOutcomeKeys":["EN-A1-OUTCOME-0147"],"curriculum":{"startingKnowledge":"early_a1_spoken_core_and_recent_review","targetConstructions":[{"key":"EN-CONSTR-0148-BRING","form":"Bring the form.","meaningFa":"دستور مثبت با فعل bring"}],"supportLanguage":[{"form":"What do we need now?","meaningFa":"الان چه چیزی لازم داریم؟"},{"form":"And the information sheet?","meaningFa":"و برگه اطلاعات؟"}],"assessmentBoundary":"Only bring in the selected reference sense is assessed as the new lexical target; information is review only.","transferPlan":{"mode":"same_lesson","intent":"Reuse the target in a second short context, then reactivate due lexical item information."},"story":{"arcKey":"EN-A1-WALKING-GROUP","sceneKey":"EN-A1-FACTORY-SCENE-0148","learnerRoleKey":"ruby","participants":["sara","ruby"],"introducedCharacterKeys":[],"relationshipState":"already_known","dependsOnLessonKeys":["EN-A1-L-0142"],"continuesLessonKey":"EN-A1-L-0142","settingFa":"ایستگاه اتوبوس","storyBeatFa":"سارا با «الان چه چیزی لازم داریم؟» گفت‌وگو را شروع می‌کند، روبی می‌گوید «فرم را بیاور.»؛ بعد سارا می‌گوید «و برگه اطلاعات؟» و روبی با «برگه اطلاعات را هم بیاور.» پاسخ می‌دهد."},"reviewLinks":[{"lessonKey":"EN-A1-L-0135","activityKeys":["A08"],"learningDemand":"recognition","note":"Due lexical review: information is reactivated without a new-target claim."},{"lessonKey":"EN-A1-L-0142","activityKeys":["A02"],"learningDemand":"retrieval","note":"Canonical گروه پیاده روی story returns after the required spacing and the played learner role rotates."},{"lessonKey":"EN-A1-L-0138","activityKeys":["A11"],"learningDemand":"retrieval","note":"Spaced learner retrieval of move inside its required +3..+10 window."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0148","specHash":"c52370f9ea4f4f266f2ddd0184b623a7f9b7e7b7eac4aca4292fd0071dcca2ed","grammarTargetKeys":["CEFRJ-GRAM-117"],"reviewLexicalLemmas":["information"],"usageFallbacks":[{"query":"Bring the form","rationale":"Natural short target use for the selected lexical sense and grammar."},{"query":"Bring the information sheet too","rationale":"Changed-information same-lesson transfer preserving the selected sense."}]},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing","lessonArchetype":"functional_exchange"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0148' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A01','A02','A03','A04','A05','A06','A07','A08','A09','A10','A11');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),11) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),4) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-BRING-01','word','bring','bring','verb','01a5b4a2-730e-5365-869e-a1871f9b6bcb','آوردن','nova/audio/lexical/en-fa/9c36b452cc975980ceb177b96cd05028692e4809502d7b3d1bdcedfa661d383b.mp3','835','{"referenceKey":"EN-REF-B1F0B9E9B8E7BFBBAB32"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-BRING-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='sara' LIMIT 1),'What do we need now?','الان چه چیزی لازم داریم؟','nova/audio/turns/en-fa/EN-A1-L-0148/T01.mp3','1280',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ruby' LIMIT 1),'Bring the form.','فرم را بیاور.','nova/audio/turns/en-fa/EN-A1-L-0148/T02.mp3','1149','Bring the form.','["Bring the form."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='sara' LIMIT 1),'And the information sheet?','و برگه اطلاعات؟','nova/audio/turns/en-fa/EN-A1-L-0148/T03.mp3','1436',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ruby' LIMIT 1),'Bring the information sheet too.','برگه اطلاعات را هم بیاور.','nova/audio/turns/en-fa/EN-A1-L-0148/T04.mp3','1697','Bring the information sheet too.','["Bring the information sheet too."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'response_choice','معنی bring را پیدا کن.','bring','{"options":["آوردن","بردن","ترک کردن"],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ bring در این درس یعنی آوردن.","«بردن» جهت حرکت دیگری را می‌رساند و پاسخ bring نیست.","«ترک کردن» معنی leave است و با bring فرق دارد."],"correctFa":"آوردن"}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','گفت‌وگو را از ابتدا دنبال کن و پاسخ نقش خودت را بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','بخش اول گفت‌وگو را دوباره گوش کن.','کدام جمله در گفت‌وگو گفته شد؟','{"sourceTurnKeys":["T01","T02"],"options":["Bring the form.","Take the form.","Leave the form."],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است؛ در گفت‌وگو گفته شد فرم را بیاور.","Take the form جهت حرکت متفاوتی دارد و جمله شنیده‌شده نیست.","Leave the form یعنی فرم را همان‌جا بگذار و با گفت‌وگو فرق دارد."],"correctFa":"فرم را بیاور."},"practiceOnly":true}','{"learningDemand":"recognition","evidenceKind":"practice_only","skillFocus":"listening","distractorAudit":{"reviewerType":"model","items":[{"option":"Take the form.","grammatical":true,"natural":true,"contrastReasonFa":"دستور بردن فرم را می‌دهد، نه آوردن آن."},{"option":"Leave the form.","grammatical":true,"natural":true,"contrastReasonFa":"دستور باقی گذاشتن فرم را می‌دهد، نه آوردن آن."}]},"qualityV3PracticeReason":"duplicate_exact_target_sentence"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','جمله درست را انتخاب کن.','فرم را بیاور.','{"optionsEn":["Bring the form.","Take the form.","Leave the form."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ Bring the form دستور آوردن فرم است.","این جمله می‌گوید فرم را ببر و جهت موردنظر را عوض می‌کند.","این جمله می‌گوید فرم را رها کن و هدف موقعیت را نمی‌رساند."],"correctFa":"Bring the form."},"practiceOnly":true}','{"learningDemand":"recognition","evidenceKind":"practice_only","distractorAudit":{"reviewerType":"model","items":[{"option":"Take the form.","grammatical":true,"natural":true,"contrastReasonFa":"جهت بردن را بیان می‌کند، نه آوردن فرم."},{"option":"Leave the form.","grammatical":true,"natural":true,"contrastReasonFa":"باقی گذاشتن فرم را بیان می‌کند، نه آوردن آن."}]},"qualityV3PracticeReason":"duplicate_exact_target_sentence"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','برای موقعیت دوم پاسخ درست را انتخاب کن.','برگه اطلاعات را هم بیاور.','{"optionsEn":["Bring the information sheet too.","Leave the information sheet.","Take the information sheet."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ bring در موقعیت دوم برای برگه اطلاعات به کار رفته است.","این گزینه می‌گوید برگه را همان‌جا بگذار و با درخواست فرق دارد.","این گزینه می‌گوید برگه را ببر و جهت عمل را تغییر می‌دهد."],"correctFa":"Bring the information sheet too."},"practiceOnly":true}','{"learningDemand":"transfer","evidenceKind":"practice_only","distractorAudit":{"reviewerType":"model","items":[{"option":"Leave the information sheet.","grammatical":true,"natural":true,"contrastReasonFa":"باقی گذاشتن برگه را می‌گوید، نه آوردن آن."},{"option":"Take the information sheet.","grammatical":true,"natural":true,"contrastReasonFa":"بردن برگه را می‌گوید و جهت هدف را عوض می‌کند."}]},"qualityV3PracticeReason":"duplicate_exact_target_sentence"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'sentence_order','پاسخ اول را دوباره گوش کن و جمله را مرتب کن.',NULL,'{"audioSourceTurnKey":"T02","tokensEn":["form.","the","Bring"],"answerTokensEn":["Bring","the","form."],"answerEn":"Bring the form.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"درست چیدی.","retryFa":"دوباره به پاسخ گوش کن و ترتیب جمله را بساز."}}','{"learningDemand":"supported_reconstruction","evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A07',7,'speak','پاسخ انگلیسی پنهان است؛ خودت بگو.','در نقش خودت بگو: برگه اطلاعات را هم بیاور.','{"mode":"retrieval","textEn":"Bring the information sheet too.","acceptedAnswersEn":["Bring the information sheet too."],"sourceTurnKey":"T04","showAnswerTextBeforeAttempt":false,"hintFa":"از bring یا ساخت هدف این درس استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"پاسخ دوم گفت‌وگو را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"The supplying dialogue is already exposed in A02."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A08',8,'response_choice','یک واژه قدیمی را مرور کن.','این اطلاعات درست است.','{"optionsEn":["This information is correct.","Bring the form.","The plan is late."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ information در این جمله همان واژه مرورشده است.","این گزینه یک دستور با bring است و معنی اطلاعات را بیان نمی‌کند.","این جمله درباره دیر بودن برنامه است و information در آن نیست."],"correctFa":"This information is correct."}}','{"learningDemand":"review","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"Bring the form.","grammatical":true,"natural":true,"contrastReasonFa":"دستور آوردن فرم است و واژه information را مرور نمی‌کند."},{"option":"The plan is late.","grammatical":true,"natural":true,"contrastReasonFa":"درباره برنامه و دیر بودن است و information را ندارد."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A09',9,'response_choice','bring را در یک موقعیت تازه به کار ببر.','کیف را بیاور.','{"optionsEn":["Bring the bag.","Take the bag.","Leave the bag."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ Bring the bag دستور آوردن کیف است.","Take the bag می‌گوید کیف را ببر و جهت دیگری دارد.","Leave the bag می‌گوید کیف را باقی بگذار و پاسخ هدف نیست."],"correctFa":"Bring the bag."}}','{"learningDemand":"transfer","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"Take the bag.","grammatical":true,"natural":true,"contrastReasonFa":"بردن کیف را بیان می‌کند، نه آوردن آن."},{"option":"Leave the bag.","grammatical":true,"natural":true,"contrastReasonFa":"باقی گذاشتن کیف را بیان می‌کند، نه آوردن آن."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A10',10,'speak','پاسخ اول را بدون دیدن متن دوباره بگو.','فرم را بیاور.','{"mode":"retrieval","textEn":"Bring the form.","acceptedAnswersEn":["Bring the form."],"sourceTurnKey":"T02","showAnswerTextBeforeAttempt":false,"hintFa":"از bring یا ساخت هدف این درس استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"پاسخ اول گفت‌وگو را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"The exact supplying turn is already exposed in A02."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A11',11,'speak','یک جمله از درس‌های قبلی را از حافظه بازیابی کن.','مرور فاصله‌دار: «یک اقدام می‌توانیم انجام بدهیم.» را به انگلیسی بگو.','{"mode":"retrieval","textEn":"There is one move we can make.","acceptedAnswersEn":["There is one move we can make."],"showAnswerTextBeforeAttempt":false,"hintFa":"از move استفاده کن.","feedback":{"correctFa":"درست است؛ واژه قدیمی را دوباره از حافظه بازیابی کردی.","retryFa":"جمله کوتاه قبلی را از حافظه دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Spaced retrieval of a previously taught bounded target."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

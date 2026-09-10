-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0132
-- levelKey: A1
-- sourceHash: d87e73beea2126486a92ad367056f39c9455dd2f23fa51c304262c8124632b2d
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
VALUES (@level_id,'EN-A1-L-0132',132,'The pay is good','حقوق خوب است','با pay درباره حقوق یک کار به شکل ساده حرف بزن و چند واژه قبلی را مرور کن.','EN-A1-OUTCOME-0132',420,'d87e73beea2126486a92ad367056f39c9455dd2f23fa51c304262c8124632b2d','validated','{"outcomeFa":"pay را به معنی «حقوق» در دو جمله کوتاه به کار ببری و واژه‌های قبلی را در یک مرور کنترل‌شده تشخیص بدهی.","scenarioFa":"مایا و الکس در مرکز آموزشی درباره دو کار پاره‌وقت روی تابلو اعلانات حرف می‌زنند.","prerequisiteOutcomeKeys":["EN-A1-OUTCOME-0131"],"curriculum":{"startingKnowledge":"early_a1_spoken_core_and_recent_review","targetConstructions":[{"key":"EN-CONSTR-0132-PAY","form":"The pay is good","meaningFa":"توصیف ساده حقوق یک کار"}],"supportLanguage":[{"form":"Is the pay good?","meaningFa":"حقوق خوب است؟"},{"form":"And at the cafe?","meaningFa":"در کافه چطور؟"}],"assessmentBoundary":"Only the bounded noun sense of pay meaning money received for work is assessed; legacy vocabulary is reviewed without expanding its assessed senses.","transferPlan":{"mode":"same_lesson","intent":"Reuse pay with a second familiar workplace reference, then recognize familiar work/day language in a separate review task."},"story":{"arcKey":"EN-A1-CLASSMATES","sceneKey":"EN-A1-FACTORY-SCENE-0132","learnerRoleKey":"maya","participants":["alex","maya"],"introducedCharacterKeys":[],"relationshipState":"already_known","dependsOnLessonKeys":["EN-A1-L-0127"],"continuesLessonKey":"EN-A1-L-0127","settingFa":"مرکز آموزشی، کنار تابلو اعلانات","storyBeatFa":"مایا و الکس در مرکز آموزشی درباره دو کار پاره‌وقت روی تابلو اعلانات حرف می‌زنند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0127","activityKeys":["A02"],"learningDemand":"retrieval","note":"Returning story arc is spaced by 5 Lessons and the played role changes from the prior scene."},{"lessonKey":"EN-A1-L-0040","activityKeys":["A07"],"learningDemand":"recognition","note":"Legacy backlog review: know is reactivated without becoming a new target."},{"lessonKey":"EN-A1-L-0041","activityKeys":["A07"],"learningDemand":"recognition","note":"Legacy backlog review: make is reactivated without becoming a new target."},{"lessonKey":"EN-A1-L-0051","activityKeys":["A07"],"learningDemand":"recognition","note":"Legacy backlog review: work is reactivated in the job context."},{"lessonKey":"EN-A1-L-0053","activityKeys":["A07"],"learningDemand":"recognition","note":"Legacy backlog review: day is reactivated in a simple duration phrase."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0132","specHash":"0f657c4b8d5c10a1e826783786e5f9b9cd099f48a69f25f3a8297aeca1078a36","grammarTargetKeys":[],"reviewLexicalLemmas":["know","make","work","day"],"usageFallbacks":[{"query":"the pay is good","rationale":"Bounded target construction for the intended noun sense of pay meaning remuneration."},{"query":"the pay is good there too","rationale":"Changed-workplace learner response preserving the remuneration sense."},{"query":"is the pay good","rationale":"Exact generated target-collocation window from Is the pay good; natural short question frame around the target noun."},{"query":"yes the pay is good","rationale":"Exact generated target-collocation window from Yes. The pay is good; natural affirmative learner response preserving the remuneration sense."},{"query":"this work takes a day","rationale":"Natural bounded review sentence reusing previously learned work and day."}],"noNewGrammarReason":"Review-recombination Lesson uses familiar A1 patterns; no new grammar is claimed."},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing","lessonArchetype":"review_recombination"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0132' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A01','A02','A03','A04','A05','A06','A07');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),7) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),4) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-PAY-01','word','pay','pay','noun','5a3d79f2-114f-50aa-ad2c-6d5b6a541412','حقوق','nova/audio/lexical/en-fa/d5258fa9f47e5cb099d5dd682c117444e57de8d8810a8030f1e1c14ff9b44edc.mp3','731','{"referenceKey":"EN-REF-D0333378B0ABA3C09687"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-PAY-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-KNOW-01','word','know','know','verb','be_aware','دانستن','nova/audio/lexical/en-fa/fe15318d9c496bd62bf30998048abcf09e8a502836661858a6a8819fb8bca0aa.mp3','835','{"referenceKey":"EN-REF-D277A31EE85CEBDF62F6"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-KNOW-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',2,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-MAKE-01','word','make','make','verb','engage_in','انجام دادن','nova/audio/lexical/en-fa/c3783e6363e0b622e7e28558826e7c1645e149ba32fd2894db8d0324711e15ed.mp3','731','{"referenceKey":"EN-REF-39C6EB767664D6211984"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-MAKE-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',3,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-WORK-01','word','work','work','noun','activity','فعالیت، کار','nova/audio/lexical/en-fa/9db7283777cbc5d3a98417fc7c26cf7ae6855ecb99f9fb144f20419c53b581d9.mp3','835','{"referenceKey":"EN-REF-707276E9B50E98A64FDC"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-WORK-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',4,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-DAY-01','word','day','day','noun','bounded_a1_day','روز','nova/audio/lexical/en-fa/90c28e1d84c39c9718fdc4bc94c68c56734c4247c1dbb4c30248dedff2340c59.mp3','783','{"referenceKey":"EN-REF-0A1B6C644EA3E00970D7"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-DAY-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',5,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='alex' LIMIT 1),'Is the pay good?','حقوق خوب است؟','nova/audio/turns/en-fa/EN-A1-L-0132/T01.mp3','1384',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'Yes. The pay is good.','بله. حقوق خوب است.','nova/audio/turns/en-fa/EN-A1-L-0132/T02.mp3','1671','Yes. The pay is good.','["Yes. The pay is good."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='alex' LIMIT 1),'And at the cafe?','در کافه چطور؟','nova/audio/turns/en-fa/EN-A1-L-0132/T03.mp3','1332',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'The pay is good there too.','حقوق آنجا هم خوب است.','nova/audio/turns/en-fa/EN-A1-L-0132/T04.mp3','1671','The pay is good there too.','["The pay is good there too."]',NULL,'{"usage":"changed_context_transfer"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'response_choice','معنی pay را در این درس پیدا کن.','pay اینجا چه معنی‌ای دارد؟','{"options":["حقوق","پرداخت کردن","دست"],"answerIndex":0,"feedback":{"optionsFa":["درست است.","اینجا pay اسم است، نه فعل پرداخت کردن.","این گزینه با موقعیت کاری جور نیست."],"correctFa":"حقوق"}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','حرف شخصیت مقابل را گوش کن و جواب نقش خودت را بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','بخش اول گفت‌وگو را گوش کن.','مایا درباره حقوق چه می‌گوید؟','{"sourceTurnKeys":["T01","T02"],"options":["خوب است.","وجود ندارد.","یک ساعت است."],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است.","این گفته نشد.","این با گفت‌وگو جور نیست."],"correctFa":"خوب است."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","skillFocus":"listening"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','جمله درست را انتخاب کن.','حقوق خوب است.','{"optionsEn":["The pay is good.","The job is good.","The cafe is good."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله خوب بودن خود کار را می‌گوید، نه حقوق را.","این جمله خوب بودن کافه را می‌گوید، نه حقوق را."],"correctFa":"The pay is good."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"The job is good.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما کیفیت خود کار را توصیف می‌کند و درباره pay یا حقوق نیست."},{"option":"The cafe is good.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما کافه را توصیف می‌کند و معنی حقوق را نمی‌رساند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','جواب موقعیت دوم را انتخاب کن.','در کافه چطور؟','{"optionsEn":["The pay is good there too.","The cafe is good too.","The job is there too."],"answerIndex":0,"feedback":{"optionsFa":["درست است.","این جمله درباره کیفیت کافه است، نه حقوق.","این جمله فقط وجود کار در آنجا را می‌گوید."],"correctFa":"حقوق آنجا هم خوب است."}}','{"learningDemand":"transfer","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"The cafe is good too.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما خوب بودن کافه را می‌گوید و درباره میزان pay حرف نمی‌زند."},{"option":"The job is there too.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما فقط وجود کار در آن محل را می‌گوید و حقوق را توصیف نمی‌کند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'speak','جواب انگلیسی پنهان است؛ خودت بگو.','مایا هستی. بگو: حقوق آنجا هم خوب است.','{"mode":"retrieval","textEn":"The pay is good there too.","acceptedAnswersEn":["The pay is good there too."],"sourceTurnKey":"T04","showAnswerTextBeforeAttempt":false,"hintFa":"از pay برای «حقوق» استفاده کن.","feedback":{"correctFa":"درست است؛ pay را در موقعیت دوم بازیابی کردی.","retryFa":"جمله کوتاه را دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session bounded retrieval in a changed controlled context."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A07',7,'response_choice','دو واژه قدیمی را در یک جمله طبیعی مرور کن.','این کار یک روز طول می‌کشد.','{"optionsEn":["This work takes a day.","This work takes an hour.","This day is good."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ work و day را با هم مرور کردی.","این جمله طبیعی است، اما مدت را یک ساعت می‌گوید.","این جمله درباره خوب بودن روز است و معنی جمله فارسی را نمی‌رساند."],"correctFa":"This work takes a day."}}','{"learningDemand":"review","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"This work takes an hour.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما مدت یک ساعت را می‌گوید و با معنی یک روز در prompt فرق دارد."},{"option":"This day is good.","grammatical":true,"natural":true,"contrastReasonFa":"جمله طبیعی است، اما درباره خوب بودن روز است و ساختار مدت زمان work را ندارد."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

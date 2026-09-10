-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0140
-- levelKey: A1
-- sourceHash: 3219737460dd70a50ce357aade5e98c1049cb69f705c1b4ab1dbcbe27c673fef
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
VALUES (@level_id,'EN-A1-L-0140',140,'Ask about the time','درباره زمان بپرس','با ask درباره اطلاعات لازم پرسش کن و چند واژه قدیمی را دوباره مرور کن.','EN-A1-OUTCOME-0140',420,'3219737460dd70a50ce357aade5e98c1049cb69f705c1b4ab1dbcbe27c673fef','validated','{"outcomeFa":"ask را به معنی «پرسیدن» در دو جمله کوتاه و طبیعی به کار ببری و know، make، work و day را در مرور کنترل‌شده بازیابی کنی.","scenarioFa":"لیام و لیو در کتابخانه برای جلسه بعدی اطلاعات لازم را از مسوول میز می‌گیرند.","prerequisiteOutcomeKeys":["EN-A1-OUTCOME-0139"],"curriculum":{"startingKnowledge":"early_a1_spoken_core_and_recent_review","targetConstructions":[{"key":"EN-CONSTR-0140-ASK","form":"Ask about the time","meaningFa":"دستور ساده برای پرسیدن درباره چیزی"}],"supportLanguage":[{"form":"What should I do?","meaningFa":"چه کار کنم؟"},{"form":"And the room?","meaningFa":"اتاق چطور؟"}],"assessmentBoundary":"Only ask meaning inquire about, represented by EN-REF-8C2B229D374D0E30EA39, is assessed as the new target; legacy know, make, work and day are reviewed without expanding their assessed senses.","transferPlan":{"mode":"same_lesson","intent":"Reuse ask about with a second information target, then reactivate four legacy 40-84 lexical items in short familiar sentences."},"story":{"arcKey":"EN-A1-LIBRARY","sceneKey":"EN-A1-FACTORY-SCENE-0140","learnerRoleKey":"leo","participants":["liam","leo"],"introducedCharacterKeys":[],"relationshipState":"already_known","dependsOnLessonKeys":["EN-A1-L-0135"],"continuesLessonKey":"EN-A1-L-0135","settingFa":"کتابخانه، نزدیک میز اطلاعات","storyBeatFa":"لیام و لیو در کتابخانه برای جلسه بعدی اطلاعات لازم را از مسوول میز می‌گیرند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0135","activityKeys":["A08"],"learningDemand":"recognition","note":"Library story returns after 5 Lessons; learner role switches from Liam to Leo."},{"lessonKey":"EN-A1-L-0040","activityKeys":["A09"],"learningDemand":"recognition","note":"Legacy backlog review: know is reactivated after a long interval."},{"lessonKey":"EN-A1-L-0041","activityKeys":["A10"],"learningDemand":"recognition","note":"Legacy backlog review: make is reactivated after a long interval."},{"lessonKey":"EN-A1-L-0051","activityKeys":["A11"],"learningDemand":"recognition","note":"Legacy backlog review: work is reactivated in a familiar duration sentence."},{"lessonKey":"EN-A1-L-0053","activityKeys":["A11"],"learningDemand":"recognition","note":"Legacy backlog review: day is reactivated together with work."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0140","specHash":"dc352ad42f072bc9cf61525c52347af0b70be9d78560a91fd28e558911481153","grammarTargetKeys":["CEFRJ-GRAM-117"],"reviewLexicalLemmas":["know","make","work","day"],"usageFallbacks":[{"query":"ask about the time","rationale":"Natural imperative target use of ask about."},{"query":"ask about the room too","rationale":"Changed-information transfer preserving inquire-about sense."},{"query":"ask about","rationale":"Core target construction for the selected sense."},{"query":"this work takes a day","rationale":"Natural bounded legacy-review sentence reusing previously learned work and day."}]},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing","lessonArchetype":"review_recombination"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0140' LIMIT 1);
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
VALUES (@course_id,'EN-LEX-ASK-01','word','ask','ask','verb','4bb3c2cb-381b-5abe-8bf3-18776d87c56b','پرسیدن','nova/audio/lexical/en-fa/d3a6002e9cbde52312ad54965b6910fdc3187a65b65c2979cb5388472d45610d.mp3','783','{"referenceKey":"EN-REF-8C2B229D374D0E30EA39"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-ASK-01' LIMIT 1);
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
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='liam' LIMIT 1),'What should I do?','چه کار کنم؟','nova/audio/turns/en-fa/EN-A1-L-0140/T01.mp3','1201',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='leo' LIMIT 1),'Ask about the time.','درباره زمان بپرس.','nova/audio/turns/en-fa/EN-A1-L-0140/T02.mp3','1280','Ask about the time.','["Ask about the time."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='liam' LIMIT 1),'And the room?','اتاق چطور؟','nova/audio/turns/en-fa/EN-A1-L-0140/T03.mp3','1018',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='leo' LIMIT 1),'Ask about the room too.','درباره اتاق هم بپرس.','nova/audio/turns/en-fa/EN-A1-L-0140/T04.mp3','1384','Ask about the room too.','["Ask about the room too."]',NULL,'{"usage":"changed_context_transfer"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'response_choice','معنی ask را پیدا کن.','Ask about the time','{"options":["پرسیدن","گفتن","به یاد داشتن"],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ ask یعنی پرسیدن.","این گزینه معنی tell است.","این گزینه معنی remember است."],"correctFa":"پرسیدن"}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','حرف شخصیت مقابل را گوش کن و جواب نقش خودت را بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','بخش اول گفت‌وگو را دوباره گوش کن.','لیو چه پیشنهادی می‌دهد؟','{"sourceTurnKeys":["T01","T02"],"options":["Ask about the time.","Remember the time.","Ask about the month."],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است؛ لیو پیشنهاد می‌دهد درباره زمان بپرسند.","این جمله می‌گوید زمان را به یاد داشته باش، نه اینکه بپرس.","این جمله درباره ماه می‌پرسد، نه زمان جلسه."],"correctFa":"درباره زمان بپرس."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","skillFocus":"listening","distractorAudit":{"reviewerType":"model","items":[{"option":"Remember the time.","grammatical":true,"natural":true,"contrastReasonFa":"دستور به یاد داشتن است، نه پرسیدن."},{"option":"Ask about the month.","grammatical":true,"natural":true,"contrastReasonFa":"درباره ماه می‌پرسد، نه زمان جلسه."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'response_choice','جمله درست را انتخاب کن.','درباره زمان بپرس.','{"optionsEn":["Ask about the time.","Remember the time.","Ask about the month."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ این جمله به‌طور دقیق دستور پرسیدن درباره زمان را می‌دهد.","این گزینه درباره به یاد داشتن زمان است.","این گزینه درباره ماه می‌پرسد، نه زمان."],"correctFa":"Ask about the time."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"Remember the time.","grammatical":true,"natural":true,"contrastReasonFa":"دستور به یاد داشتن است، نه پرسیدن."},{"option":"Ask about the month.","grammatical":true,"natural":true,"contrastReasonFa":"درباره ماه می‌پرسد، نه زمان جلسه."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','جواب موقعیت دوم را انتخاب کن.','درباره اتاق هم بپرس.','{"optionsEn":["Ask about the room too.","Ask about the time too.","Remember the room too."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ این بار ask درباره اتاق به کار رفته است.","این گزینه دوباره درباره زمان می‌پرسد، نه اتاق.","این گزینه remember را به کار می‌برد، نه ask."],"correctFa":"Ask about the room too."}}','{"learningDemand":"transfer","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"Ask about the time too.","grammatical":true,"natural":true,"contrastReasonFa":"درباره زمان است نه اتاق."},{"option":"Remember the room too.","grammatical":true,"natural":true,"contrastReasonFa":"فعل remember را به کار می‌برد، نه ask."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'sentence_order','پاسخ اول را دوباره گوش کن و جمله را مرتب کن.',NULL,'{"audioSourceTurnKey":"T02","tokensEn":["time.","the","about","Ask"],"answerTokensEn":["Ask","about","the","time."],"answerEn":"Ask about the time.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"درست چیدی.","retryFa":"دوباره به پاسخ لیو گوش کن و ترتیب جمله را بساز."}}','{"learningDemand":"supported_reconstruction","evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A07',7,'speak','جواب انگلیسی پنهان است؛ خودت بگو.','در نقش لیو بگو: درباره اتاق هم بپرس.','{"mode":"retrieval","textEn":"Ask about the room too.","acceptedAnswersEn":["Ask about the room too."],"sourceTurnKey":"T04","showAnswerTextBeforeAttempt":false,"hintFa":"از ask استفاده کن.","feedback":{"correctFa":"درست است.","retryFa":"به پاسخ دوم لیو فکر کن و جمله را با ask دوباره بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Supplying dialogue already exposed in A02."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A08',8,'response_choice','داستان قبلی این شخصیت‌ها را مرور کن.','خوب یادم هست.','{"optionsEn":["I remember it well.","I know it well.","I remember the room."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ جمله می‌گوید آن را خوب به یاد دارم.","این گزینه از know استفاده می‌کند، نه remember.","این گزینه به‌طور مشخص اتاق را به یاد می‌آورد و معنی موقعیت را عوض می‌کند."],"correctFa":"I remember it well."}}','{"learningDemand":"review","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"I know it well.","grammatical":true,"natural":true,"contrastReasonFa":"فعل متفاوتی دارد."},{"option":"I remember the room.","grammatical":true,"natural":true,"contrastReasonFa":"چیز متفاوتی را به یاد می‌آورد."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A09',9,'response_choice','واژه قدیمی know را مرور کن.','این کتاب را می‌شناسم.','{"optionsEn":["I know this book.","I read this book.","I have this book."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ know را در معنی آشنای قبلی بازیابی کردی.","این جمله می‌گوید کتاب را می‌خوانم، نه اینکه آن را می‌شناسم.","این جمله فقط داشتن کتاب را می‌گوید."],"correctFa":"I know this book."}}','{"learningDemand":"review","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"I read this book.","grammatical":true,"natural":true,"contrastReasonFa":"فعل read را دارد و معنی شناختن را نمی‌رساند."},{"option":"I have this book.","grammatical":true,"natural":true,"contrastReasonFa":"داشتن کتاب را بیان می‌کند، نه شناختن آن را."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A10',10,'response_choice','واژه قدیمی make را مرور کن.','قهوه درست می‌کنم.','{"optionsEn":["I make coffee.","I drink coffee.","I like coffee."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ make را در معنی آشنای درست کردن نوشیدنی بازیابی کردی.","این جمله درباره نوشیدن قهوه است.","این جمله درباره دوست داشتن قهوه است."],"correctFa":"I make coffee."}}','{"learningDemand":"review","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"I drink coffee.","grammatical":true,"natural":true,"contrastReasonFa":"درباره نوشیدن است، نه درست کردن قهوه."},{"option":"I like coffee.","grammatical":true,"natural":true,"contrastReasonFa":"درباره علاقه به قهوه است، نه ساختن یا آماده کردن آن."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A11',11,'response_choice','دو واژه قدیمی work و day را با هم مرور کن.','این کار یک روز طول می‌کشد.','{"optionsEn":["This work takes a day.","This work takes an hour.","This day is good."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ work و day را با هم مرور کردی.","این جمله طبیعی است اما مدت را یک ساعت می‌گوید.","این جمله درباره خوب بودن روز است و معنی جمله فارسی را نمی‌رساند."],"correctFa":"This work takes a day."}}','{"learningDemand":"review","evidenceKind":"recognition_or_selection","distractorAudit":{"reviewerType":"model","items":[{"option":"This work takes an hour.","grammatical":true,"natural":true,"contrastReasonFa":"ساختار طبیعی است اما مدت را hour می‌گوید، نه day."},{"option":"This day is good.","grammatical":true,"natural":true,"contrastReasonFa":"درباره کیفیت روز است و work را در معنی هدف مرور نمی‌کند."}]}}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

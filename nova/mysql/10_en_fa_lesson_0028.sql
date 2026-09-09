-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0028
-- levelKey: A1
-- sourceHash: e63f8c5c162a3bf52b60ec48d149c2fe143a1ec32240b8ff1ee3a60321441986
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
VALUES (@level_id,'EN-A1-L-0028',28,'They are from Canada','اونا اهل کانادا هستن','دو عضو تازه به گروه پیاده روی اضافه شده اند. سارا درباره اهل کجا بودنشان می پرسد و روبی با They are درباره هر دو نفر جواب می دهد.','A1-INTERACTION-THEY-ORIGIN',420,'e63f8c5c162a3bf52b60ec48d149c2fe143a1ec32240b8ff1ee3a60321441986','validated','{"outcomeFa":"زبان آموز می تواند با They are درباره دو نفر دیگر یک جمله ساده بسازد و بگوید اهل کجا هستند.","scenarioFa":"پیش از شروع پیاده روی، دو عضو تازه به گروه رسیده اند. سارا درباره آن دو نفر از تو سوال می کند. نقش تو روبی است.","prerequisiteOutcomeKeys":["A1-INTERACTION-COUNTRY","A1-INTERACTION-IDENTIFY-PERSON"],"curriculum":{"startingKnowledge":"early_a1_origin_language_and_third_person_identification","targetConstructions":[{"key":"EN-CONSTR-THEY-ARE-FROM-PLACE","form":"They are from + place.","meaningFa":"گفتن اهل کجا بودن دو یا چند نفر دیگر"}],"supportLanguage":[{"form":"Where are they from?","meaningFa":"اونا اهل کجان؟"}],"assessmentBoundary":"The Lesson introduces affirmative they are only in a bounded origin statement with previously familiar country language. It does not teach the full pronoun paradigm, contractions, or plural noun agreement.","transferPlan":{"mode":"same_lesson","intent":"Move the long-known origin frame from I''m from + place to They are from + place, then change the country filler from Canada to Iran in hidden retrieval."},"story":{"arcKey":"EN-A1-WALKING-GROUP","sceneKey":"EN-A1-FACTORY-SCENE-0028","learnerRoleKey":"ruby","participants":["ruby","sara"],"introducedCharacterKeys":[],"relationshipState":"already_known","continuesLessonKey":"EN-A1-L-0022","dependsOnLessonKeys":["EN-A1-L-0022"],"settingFa":"پارک، نقطه شروع پیاده روی و خوش آمدگویی به دو عضو تازه","storyBeatFa":"روبی و سارا بعد از چند درس دوباره همدیگر را می بینند. این بار سارا درباره دو عضو تازه گروه می پرسد و روبی اطلاعات کوتاه کشورشان را می گوید."},"reviewLinks":[{"lessonKey":"EN-A1-L-0005","activityKeys":["A03"],"learningDemand":"transfer","note":"The original where-from language returns after a long delay, but the subject shifts from I/you to they."},{"lessonKey":"EN-A1-L-0022","activityKeys":["A02"],"learningDemand":"retrieval","note":"Ruby and Sara return after sufficient spacing in the same walking-group arc with a new communicative purpose."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0028","specHash":"24cc3bfee91230dcfef8d77abb51f4dc4d85d072001b2e94e7c885d70902f119","grammarTargetKeys":["CEFRJ-GRAM-5"],"reviewLexicalLemmas":[],"usageFallbacks":[{"query":"they are from canada","rationale":"They are from + country is a transparent early-A1 transfer of the previously taught origin frame to the selected CEFR-J they are pattern; no phrase is promoted to the words layer."},{"query":"where are they from","rationale":"Where are they from? is support language that naturally elicits the target origin answer; the scored target remains the affirmative they are construction."}]},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0028' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A01','A02','A03','A04','A05','A06');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),6) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04','T05');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),5) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='sara' LIMIT 1),'Where are they from?','اونا اهل کجان؟','nova/audio/turns/en-fa/EN-A1-L-0028/T01.mp3','1253',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ruby' LIMIT 1),'They are from Canada.','اونا اهل کانادا هستن.','nova/audio/turns/en-fa/EN-A1-L-0028/T02.mp3','1332','They are from Canada.','["They are from Canada."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='sara' LIMIT 1),'Canada?','کانادا؟','nova/audio/turns/en-fa/EN-A1-L-0028/T03.mp3','862',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ruby' LIMIT 1),'Yes.','بله.','nova/audio/turns/en-fa/EN-A1-L-0028/T04.mp3','783','Yes.','["Yes."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T05',5,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='ruby' LIMIT 1),'They are from Iran.','اونا اهل ایران هستن.','nova/audio/turns/en-fa/EN-A1-L-0028/T05.mp3','1488','They are from Iran.','["They are from Iran."]',NULL,'{"usage":"retrieval_model_after_help"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'response_choice','معنی They are را از روی نقش جمله تشخیص بده.','کدام معنی درست است؟','{"options":["اونا اهل کانادا هستن","اون دختر اهل کاناداست","ما اهل کانادا هستیم"],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ they درباره دو یا چند نفر دیگر است.","برای یک نفر از she یا he استفاده می شود، نه they.","we یعنی خودت همراه بقیه گروه؛ اینجا درباره دو نفر دیگر حرف می زنیم."],"correctFa":"They are اینجا درباره دو عضو تازه گروه حرف می زند."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','سوال سارا را گوش کن و جواب روبی را با صدای بلند بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','به سوال سارا و جواب روبی گوش کن.','دو عضو تازه گروه اهل کجا هستند؟','{"sourceTurnKeys":["T01","T02"],"options":["کانادا","ایران","اتاق دو"],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است؛ روبی می گوید They are from Canada.","Iran در تمرین انتقال بعدی استفاده می شود.","این گفت و گو درباره کشور است، نه شماره اتاق."],"correctFa":"دو عضو تازه اهل کانادا هستند."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection","skillFocus":"listening"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'sentence_order','جواب کشور را گوش کن و چهار بخش را مرتب کن.',NULL,'{"audioSourceTurnKey":"T02","tokensEn":["Canada.","from","are","They"],"answerTokensEn":["They","are","from","Canada."],"answerEn":"They are from Canada.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"درست چیدی؛ They are را با همان from قدیمی برای دو نفر ساختی.","retryFa":"با They شروع کن، بعد are و from + Canada را اضافه کن."}}','{"evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','همان ساختار را با کشور دیگری به کار ببر.','این بار درباره دو نفر دیگر می گویی اهل ایران هستند. کدام جمله درست است؟','{"optionsEn":["They are from Iran.","She is from Iran.","We are from Iran."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ they برای دو یا چند نفر دیگر است.","she فقط درباره یک زن یا دختر است.","we شامل خود گوینده است، اما اینجا درباره دو نفر دیگر حرف می زنیم."],"correctFa":"They are from Iran. هم subject و هم کشور را درست نگه می دارد."}}','{"learningDemand":"transfer","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'speak','جواب انگلیسی را نمی بینی. درباره دو نفر دیگر جمله را خودت بساز.','روبی هستی. سارا درباره دو عضو دیگر می پرسد و آن دو اهل ایران هستند. بگو اونا اهل ایران هستن.','{"mode":"retrieval","textEn":"They are from Iran.","acceptedAnswersEn":["They are from Iran."],"sourceTurnKey":"T05","showAnswerTextBeforeAttempt":false,"hintFa":"با They are شروع کن و بعد from Iran را اضافه کن.","feedback":{"correctFa":"درست است؛ ساختار جدید را با کشور دیگری دوباره ساختی.","retryFa":"They + are + from + Iran را بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"novel_recombination","assessmentLimit":"Same-session affirmative they are origin statement with a changed familiar country filler; not full pronoun or plural mastery."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

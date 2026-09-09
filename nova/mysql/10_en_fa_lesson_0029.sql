-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0029
-- levelKey: A1
-- sourceHash: 2c79864e4fb3ea4ad9ed985c731a2bd53345f9c4c4096b107f68c1dbd74df337
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
VALUES (@level_id,'EN-A1-L-0029',29,'Just one book','فقط یک کتاب','لیام در کتابخانه فقط یک کتاب می‌خواهد و با just مقدار درخواستش را روشن می‌کند.','A1-INTERACTION-LIMIT-QUANTITY',420,'2c79864e4fb3ea4ad9ed985c731a2bd53345f9c4c4096b107f68c1dbd74df337','validated','{"outcomeFa":"زبان‌آموز می‌تواند با just بگوید فقط یک مورد آشنا می‌خواهد.","scenarioFa":"بعد از نشست کتاب، لیو فکر می‌کند دو کتاب می‌خواهی. نقش تو لیام است و باید بگویی فقط یک کتاب می‌خواهی.","prerequisiteOutcomeKeys":["A1-INTERACTION-READ-BOOKS","A1-INTERACTION-MY-YOUR-OBJECT"],"curriculum":{"startingKnowledge":"early_a1_known_book_one_and_polite_requests","targetConstructions":[{"key":"EN-CONSTR-JUST-ONE-BOOK","form":"Just one book, please.","meaningFa":"گفتن این که فقط یک کتاب می‌خواهی"},{"key":"EN-CONSTR-JUST-ONE","form":"Just one, please.","meaningFa":"کوتاه گفتن این که فقط یکی می‌خواهی"}],"supportLanguage":[{"form":"Two books?","meaningFa":"دو تا کتاب؟"},{"form":"Okay.","meaningFa":"باشه."}],"assessmentBoundary":"The Lesson teaches just only in the narrow ''and nothing more'' meaning inside a familiar quantity request. It does not introduce just as ''recently'', new tense material, or broader adverb placement.","transferPlan":{"mode":"same_lesson","intent":"Move from understanding Just one book, please. to selecting the shorter Just one, please. and finally retrieving the full request without visible English."},"story":{"arcKey":"EN-A1-LIBRARY","sceneKey":"EN-A1-FACTORY-SCENE-0029","learnerRoleKey":"liam","participants":["liam","leo"],"introducedCharacterKeys":[],"relationshipState":"already_known","continuesLessonKey":"EN-A1-L-0023","dependsOnLessonKeys":["EN-A1-L-0023"],"settingFa":"کتابخانه، میز امانت بعد از نشست کتاب","storyBeatFa":"لیام بعد از نشست یک کتاب برای بردن انتخاب کرده، اما لیو فکر می‌کند دو کتاب می‌خواهد. لیام درخواستش را به یک کتاب محدود می‌کند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0023","activityKeys":["A02","A03"],"learningDemand":"retrieval","note":"The library pair returns after five intervening Lessons and book stays active in a new checkout purpose."}],"languageReference":{"specKey":"en-fa-A1-LESSON-SPEC-0029","specHash":"0c76d6bc931866a1967885017cd8d6090ddb5d02a0bf2bdad4624f35e4d63701","grammarTargetKeys":[],"noNewGrammarReason":"This is a lexical-focus Lesson; it reuses familiar request and quantity language without introducing a new grammar target.","reviewLexicalLemmas":["book"],"usageFallbacks":[{"query":"just one book","rationale":"Just one book is a transparent A1 quantity-limiting use of just in the selected ''and nothing more'' sense, with one and book already familiar."}]},"pedagogyVersion":2},"pilot":false,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0029' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A01','A02','A03','A04','A05','A06');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),6) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),4) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-JUST-01','word','just','just','adverb','and_nothing_more','فقط','nova/audio/lexical/en-fa/42002764404deece729f0372f13b4d37a43d7cef50e454bcc5f9fff18cf31257.mp3','783','{"referenceKey":"EN-REF-A098E62586DE3D66DADA"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-JUST-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-BOOK-01','word','book','book','noun','physical_book','کتاب','nova/audio/lexical/en-fa/7691e33ffd90b0f3fc0ffe1501d30f48d68893e76bb3d9109d3d8b61a1992b78.mp3','914','{"referenceKey":"EN-REF-6CB64DEA48DE0EFA4185"}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-BOOK-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',2,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='leo' LIMIT 1),'Two books?','دو تا کتاب؟','nova/audio/turns/en-fa/EN-A1-L-0029/T01.mp3','835',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='liam' LIMIT 1),'Just one book, please.','فقط یک کتاب، لطفاً.','nova/audio/turns/en-fa/EN-A1-L-0029/T02.mp3','1436','Just one book, please.','["Just one book, please."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='leo' LIMIT 1),'Okay.','باشه.','nova/audio/turns/en-fa/EN-A1-L-0029/T03.mp3','731',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='liam' LIMIT 1),'One book, please.','یک کتاب، لطفاً.','nova/audio/turns/en-fa/EN-A1-L-0029/T04.mp3','1280','One book, please.','["One book, please."]',NULL,'{"usage":"changed_context_review"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'response_choice','معنی just را در جمله پیدا کن.','لیام چه منظوری دارد؟','{"options":["فقط یک کتاب می‌خواهد","دو کتاب می‌خواهد","می‌خواهد کتاب بخواند"],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ just اینجا یعنی فقط و نه بیشتر.","عدد و معنی جمله با دو کتاب جور نیست.","read در این جمله نیست؛ این یک درخواست تعداد است."],"correctFa":"Just one book یعنی فقط یک کتاب."}}','{"learningDemand":"recognition","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'dialogue','لیو تعداد کتاب‌ها را چک می‌کند؛ جواب لیام را بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'comprehension','سؤال لیو و جواب لیام را گوش کن.','لیام چند کتاب می‌خواهد؟','{"sourceTurnKeys":["T01","T02"],"options":["یک کتاب","دو کتاب","هیچ کتابی"],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["درست است؛ لیام می‌گوید Just one book.","لیو دو کتاب را حدس می‌زند، اما لیام اصلاحش می‌کند.","لیام یک کتاب می‌خواهد، نه صفر کتاب."],"correctFa":"لیام فقط یک کتاب می‌خواهد."}}','{"learningDemand":"retrieval","evidenceKind":"recognition_or_selection","skillFocus":"listening"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'sentence_order','درخواست لیام را گوش کن و بخش‌ها را مرتب کن.',NULL,'{"audioSourceTurnKey":"T02","tokensEn":["book,","please.","Just","one"],"answerTokensEn":["Just","one","book,","please."],"answerEn":"Just one book, please.","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true,"practiceOnly":true,"hideTokenSurfaceCues":true,"feedback":{"correctFa":"درست چیدی؛ just قبل از one می‌آید و مقدار را محدود می‌کند.","retryFa":"با Just one شروع کن و بعد book, please. را بگذار."}}','{"evidenceKind":"supported_reconstruction"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','این بار جواب کوتاه‌تر را انتخاب کن.','لیو می‌پرسد «دو تا؟» و تو فقط یکی می‌خواهی. کدام جواب مناسب است؟','{"optionsEn":["Just one, please.","Two books, please.","I read books."],"answerIndex":0,"feedback":{"optionsFa":["درست است؛ وقتی موضوع معلوم است می‌توانی کوتاه بگویی Just one, please.","این یعنی دو کتاب می‌خواهی.","این درباره کتاب خواندن است، نه تعداد درخواست."],"correctFa":"Just one, please. همان معنی را کوتاه‌تر می‌رساند."}}','{"learningDemand":"transfer","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'speak','جواب انگلیسی را نمی‌بینی؛ درخواست کامل را خودت بگو.','لیام هستی. لیو فکر می‌کند دو کتاب می‌خواهی. بگو فقط یک کتاب، لطفاً.','{"mode":"retrieval","textEn":"Just one book, please.","acceptedAnswersEn":["Just one book, please."],"sourceTurnKey":"T02","showAnswerTextBeforeAttempt":false,"hintFa":"با معنی «فقط یکی» شروع کن و بعد book, please. را اضافه کن.","feedback":{"correctFa":"درست است؛ درخواست را با just محدود کردی.","retryFa":"ساختار را به شکل «فقط + یک + کتاب + لطفاً» بساز."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session quantity-limiting request with familiar one/book language."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

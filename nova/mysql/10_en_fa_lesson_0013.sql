-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0013
-- levelKey: A1
-- sourceHash: cdc44154dfe3a279260b5a46b5224dee93f3b9f1c1ceca714027cb31da3f61f0
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
VALUES (@level_id,'EN-A1-L-0013',13,'Borrowing between neighbors','مرور: کمک به همسایه','چیدن میز مطالعه مشترک ساختمان','A1-INTERACTION-REVIEW-REQUEST-REPAIR',420,'cdc44154dfe3a279260b5a46b5224dee93f3b9f1c1ceca714027cb31da3f61f0','validated','{"outcomeFa":"می توانی درخواست یک وسیله، اصلاح اشتباه و فهمیدن درخواست دیگران را در کنار هم به کار ببری.","scenarioFa":"تو و نورا چند کتاب و خودکار برای میز مطالعه مشترک ساختمان آورده اید. وسیله ها را به هم می دهید، یک اشتباه را روشن می کنی و جای کتابت را می پرسی. نقش تو اوون است.","prerequisiteOutcomeKeys":["A1-INTERACTION-CORRECT-REQUEST","A1-INTERACTION-LOCATE-OBJECT"],"curriculum":{"startingKnowledge":"early_a1_after_greetings","targetConstructions":[],"supportLanguage":[],"assessmentBoundary":"Guided speech and audio reconstruction are practice. Choice tasks assess recognition/selection. Final hidden-answer retrieval records first attempt and help separately; exact text matching cannot certify open-ended language ability or pronunciation.","transferPlan":{"mode":"same_lesson","intent":"End with meaning-cued recall without displayed English. Continue delayed review in later stories; this does not prove long-term retention."},"story":{"arcKey":"EN-A1-NEIGHBORS","sceneKey":"EN-A1-SCENE-0013","learnerRoleKey":"owen","participants":["owen","nora"],"introducedCharacterKeys":[],"relationshipState":"already_known","continuesLessonKey":"EN-A1-L-0007","dependsOnLessonKeys":["EN-A1-L-0007"],"settingFa":"ساختمان، قرض دادن وسایل به همسایه","storyBeatFa":"اوون و نورا وسایل میز مشترک را به هم می دهند و یک درخواست اشتباه شنیده شده را روشن می کنند."},"reviewLinks":[{"lessonKey":"EN-A1-L-0007","activityKeys":["A01","A02"],"learningDemand":"retrieval","note":"Retrieve a practical request before the visible dialogue."},{"lessonKey":"EN-A1-L-0008","activityKeys":["A04"],"learningDemand":"retrieval","note":"Recall a known location after a delay."},{"lessonKey":"EN-A1-L-0012","activityKeys":["A05"],"learningDemand":"transfer","note":"Apply the classroom correction pattern to borrowing from a neighbor with different characters."}],"pedagogyVersion":2},"pilot":false,"batchKey":"EN-A1-STORY-10-01","audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange","qualityStage":"model_reviewed_for_testing"}')
ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key='EN-A1-L-0013' LIMIT 1);
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

-- Keep existing activities IDs; remove only keys absent from this Lesson source.
DELETE FROM activities WHERE lesson_id=@lesson_id AND activity_key NOT IN ('A01','A02','A03','A04','A05','A06');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),6) FROM activities WHERE lesson_id=@lesson_id);
UPDATE activities SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

-- Keep existing lesson_turns IDs; remove only keys absent from this Lesson source.
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id AND turn_key NOT IN ('T01','T02','T03','T04','T05','T06','T07','T08','T09','T10','T11');
SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),11) FROM lesson_turns WHERE lesson_id=@lesson_id);
UPDATE lesson_turns SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-HELLO-01','word','hello','hello','interjection','greeting','سلام','nova/audio/lexical/en-fa/43cd0dd00a9bea0c54572e2140190981a5bfaddc71d5cb58e16ee2a1334a3d23.mp3','966','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-HELLO-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',1,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-PEN-01','word','pen',NULL,'noun',NULL,'خودکار','nova/audio/lexical/en-fa/2aa43bd6c4bd4e96eac4767b4a7dc2e479a4940de9bc83baa3e8b0c315107bd6.mp3','783','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-PEN-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',2,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-BOOK-01','word','book',NULL,'noun',NULL,'کتاب','nova/audio/lexical/en-fa/7691e33ffd90b0f3fc0ffe1501d30f48d68893e76bb3d9109d3d8b61a1992b78.mp3','914','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-BOOK-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',3,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-PLEASE-01','word','please',NULL,'adverb',NULL,'لطفا','nova/audio/lexical/en-fa/26cb153d2209ea4e20bc6378c9d5d212457f81223dfb2a17da31f394e9e76ca8.mp3','914','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-PLEASE-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',4,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-HERE-YOU-GO-01','formula','here you go',NULL,NULL,NULL,'بفرما؛ هنگام دادن چیزی','nova/audio/lexical/en-fa/e9fc468f2be6b88cbf23fe7d0d2a1d1101e818afcf17060dcfa6492b4411810f.mp3','914','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-HERE-YOU-GO-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',5,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-NO-01','word','no',NULL,'interjection',NULL,'نه','nova/audio/lexical/en-fa/20cd6fdc585dd8b32a9b9a1de5381ad00390c4dddd8ddb956f3af47f9ffdf2c6.mp3','731','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-NO-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',6,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-THANKS-01','word','thanks',NULL,'interjection',NULL,'ممنون','nova/audio/lexical/en-fa/3d13b4eef688394fb8632e4f841fdb4d4e678af48061ead840c43c40b55c1c17.mp3','862','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-THANKS-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',7,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-ON-01','word','on',NULL,'preposition',NULL,'روی','nova/audio/lexical/en-fa/fda6dd157194dfe77fcd31e073876ea1e460e950fed496b526addba401e397c7.mp3','679','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-ON-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',8,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)
VALUES (@course_id,'EN-LEX-TABLE-01','word','table',NULL,'noun',NULL,'میز','nova/audio/lexical/en-fa/22642c6c39aed5cd4c37bd89740fd5139e0d6eead9a3c157d15392f75bc6b2e7.mp3','835','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-TABLE-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'review',9,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nora' LIMIT 1),'Hello, Owen!','سلام اوون!','nova/audio/turns/en-fa/EN-A1-L-0013/T01.mp3','1097',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'Hello! Can I have a book, please?','سلام! می شه لطفا یک کتاب به من بدی؟','nova/audio/turns/en-fa/EN-A1-L-0013/T02.mp3','2168','Hello! Can I have a book, please?','["Hello! Can I have a book, please?"]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nora' LIMIT 1),'A pen?','یک خودکار؟','nova/audio/turns/en-fa/EN-A1-L-0013/T03.mp3','783',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'No, a book, please.','نه، یک کتاب لطفا.','nova/audio/turns/en-fa/EN-A1-L-0013/T04.mp3','1619','No, a book, please.','["No, a book, please."]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T05',5,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nora' LIMIT 1),'Here you go.','بفرما.','nova/audio/turns/en-fa/EN-A1-L-0013/T05.mp3','966',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T06',6,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'Thanks!','ممنون!','nova/audio/turns/en-fa/EN-A1-L-0013/T06.mp3','862','Thanks!','["Thanks!"]',NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T07',7,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nora' LIMIT 1),'Can I have a pen, please?','می شه لطفا یک خودکار به من بدی؟','nova/audio/turns/en-fa/EN-A1-L-0013/T07.mp3','1436',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T08',8,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='nora' LIMIT 1),'It''s on the table.','روی میزه.','nova/audio/turns/en-fa/EN-A1-L-0013/T08.mp3','1253',NULL,NULL,NULL,'{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T09',9,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'Where''s my book?','کتابم کجاست؟','nova/audio/turns/en-fa/EN-A1-L-0013/T09.mp3','1149','Where''s my book?','["Where''s my book?"]',NULL,'{"usage":"retrieval_model_after_help"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T10',10,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'Here you go.','بفرما.','nova/audio/turns/en-fa/EN-A1-L-0013/T10.mp3','1018','Here you go.','["Here you go."]',NULL,'{"usage":"retrieval_model_after_help"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T11',11,'learner',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='owen' LIMIT 1),'Where''s my pen?','خودکارم کجاست؟','nova/audio/turns/en-fa/EN-A1-L-0013/T11.mp3','1201','Where''s my pen?','["Where''s my pen?"]',NULL,'{"usage":"retrieval_model_after_help"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'comprehension','گوش کن و با توجه به چیزی که شنیدی پاسخ بده.','برای چیدن میز، اول این درخواست و پاسخ را گوش کن. نورا چه چیزی می گیرد؟','{"sourceTurnKeys":["T07","T10"],"options":["خودکار","کتاب","چای"],"answerIndex":0,"transcriptAfterAttempt":true,"feedback":{"optionsFa":["نورا pen می خواهد و اوون با Here you go آن را می دهد.","کتاب درخواست بعدی اوون است؛ این بخش درخواست نورا را می سنجد.","در این درخواست نوشیدنی مطرح نیست؛ به pen گوش کن."],"correctFa":"نورا pen می خواهد و اوون با Here you go آن را می دهد."}}','{"learningDemand":"retrieval","purpose":"Delayed listening with no visible model; request comes from a different familiar person.","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'response_choice','با توجه به موقعیت، گزینه مناسب را انتخاب کن.','برای میز مطالعه یک کتاب از وسایل مشترک می خواهی. چه می گویی؟','{"optionsEn":["Can I have a pen, please?","Where''s my book?","Can I have a book, please?"],"answerIndex":2,"feedback":{"optionsFa":["این جمله خودکار می خواهد؛ الان کتاب لازم داری.","این جمله جای کتاب خودت را می پرسد؛ از وسایل مشترک کتاب درخواست نمی کند.","این جمله یک کتاب را مودبانه درخواست می کند."],"correctFa":"این جمله یک کتاب را مودبانه درخواست می کند."}}','{"learningDemand":"changed_context","purpose":"Select a request before its guided model is displayed.","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'dialogue','حرف نورا را گوش کن و پاسخ اوون را با صدای بلند بگو.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E03","promptTurnKey":"T05","responseTurnKey":"T06","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'comprehension','گوش کن و پاسخ را انتخاب کن.','اوون و نورا در این بخش درباره جای چه چیزی حرف می زنند؟','{"options":["کتاب اوون","خودکار نورا","کتاب نورا"],"answerIndex":0,"sourceTurnKeys":["T09","T08"],"transcriptAfterAttempt":true,"feedback":{"optionsFa":["اوون اول می پرسد کتابم کجاست؛ پاسخ نورا جای همان کتاب را می گوید.","در سوال اوون book شنیده می شود، نه pen.","my را اوون می گوید؛ بنابراین سوال درباره کتاب اوون است."],"correctFa":"اوون اول می پرسد کتابم کجاست؛ پاسخ نورا جای همان کتاب را می گوید."}}','{"learningDemand":"retrieval","purpose":"Delayed recognition of the location pattern, without showing the earlier Lesson 0008 model.","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'response_choice','با توجه به موقعیت، گزینه مناسب را انتخاب کن.','این بار خودکار می خواهی، اما نورا کتاب تعارف می کند. چه می گویی؟','{"optionsEn":["No, a book, please.","Yes, please.","No, a pen, please."],"answerIndex":2,"feedback":{"optionsFa":["بعد از No باید وسیله مورد نظرت را بگویی؛ book همان پیشنهاد اشتباه است.","این جمله کتاب را قبول می کند؛ تو خودکار می خواهی.","با No اشتباه را رد می کنی و با a pen وسیله درست را مشخص می کنی."],"correctFa":"با No اشتباه را رد می کنی و با a pen وسیله درست را مشخص می کنی."}}','{"learningDemand":"changed_context","purpose":"Change the intended object after the supported dialogue; no new language.","evidenceKind":"recognition_or_selection"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A06',6,'speak','این بار پاسخ آماده نداری. خودت جمله را بگو یا بنویس.','اوون هستی. خودکارت را پیدا نمی کنی. از نورا بپرس کجاست؛ درخواست یک خودکار جدید نکن.','{"mode":"retrieval","textEn":"Where''s my pen?","acceptedAnswersEn":["Where''s my pen?","Where is my pen?"],"sourceTurnKey":"T11","showAnswerTextBeforeAttempt":false,"hintFa":"الگوی پرسیدن جای وسیله را از درس مرکز محله به یاد بیاور.","feedback":{"correctFa":"پاسخت با یکی از الگوهای این تمرین هماهنگ است.","retryFa":"الگوی پرسیدن جای وسیله را از درس مرکز محله به یاد بیاور."},"evidenceKind":"bounded_retrieval","practiceOnly":false,"modelAccess":"explicit_help"}','{"learningDemand":"retrieval","assessmentLimit":"Same-session bounded pattern recall; not open-ended proficiency or pronunciation assessment."}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);

COMMIT;

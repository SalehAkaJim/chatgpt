-- Generated from canonical Lesson source. Do not edit by hand.
-- lessonKey: EN-A1-L-0001
-- sourceHash: 350dc91c0f24ba0bf9acaa7615e4f8fef3f539015832aee2e3bdfaa505a3d05e
SET NAMES utf8mb4;
START TRANSACTION;

INSERT INTO courses (course_key,learning_language,base_language,title,title_translation,description,status,metadata)
VALUES ('en-fa','en','fa','English','انگلیسی','آموزش انگلیسی برای فارسی‌زبان‌ها از صفر مطلق','active','{"englishBaseline":"General American"}')
ON DUPLICATE KEY UPDATE title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),status=VALUES(status),metadata=VALUES(metadata);
SET @course_id=(SELECT id FROM courses WHERE course_key='en-fa' LIMIT 1);

INSERT INTO characters (course_id,character_key,name,gender,voice_key,profile,is_active)
VALUES (@course_id,'maya','Maya','female','vexa','{"roleFa":"شخصیت اصلی مکالمه‌های ابتدایی"}',1)
ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;

INSERT INTO lessons (course_id,lesson_key,sort_order,title,title_translation,description,cefr_level,primary_outcome_key,estimated_duration_sec,source_hash,status,metadata)
VALUES (@course_id,'EN-A1-L-0001',1,'Hello! What''s your name?','سلام! اسمت چیه؟','اولین مکالمه کوتاه: سلام کردن، معرفی خود و پرسیدن اسم.','A1','A1-INTERACTION-GREET-NAME',420,'350dc91c0f24ba0bf9acaa7615e4f8fef3f539015832aee2e3bdfaa505a3d05e','validated','{"outcomeFa":"زبان آموز می تواند سلام کند، خودش را کوتاه معرفی کند و اسم طرف مقابل را بپرسد.","scenarioFa":"برای اولین بار با مایا آشنا می شوی.","prerequisiteOutcomeKeys":[],"curriculum":{"startingKnowledge":"absolute_zero","targetConstructions":[{"key":"EN-CONSTR-IM-NAME","form":"I''m + name","meaningFa":"برای معرفی کوتاه اسم"},{"key":"EN-CONSTR-WHATS-YOUR-NAME","form":"What''s your name?","meaningFa":"برای پرسیدن اسم طرف مقابل"}],"supportLanguage":[],"assessmentBoundary":"Guided dialogue responses are practice only; mastery evidence comes from independent activities after the dialogue.","transferPlan":{"mode":"deferred","targetLesson":"EN-A1-L-0002","intent":"Reuse greeting and name language in a changed first-meeting context, then introduce My name is + name and polite first-meeting language."}},"pilot":true,"audioRequired":true,"humanEnglishAuditRequired":true,"dialogueRuntime":"guided_exchange"}')
ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),cefr_level=VALUES(cefr_level),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);
SET @lesson_id=(SELECT id FROM lessons WHERE course_id=@course_id AND lesson_key='EN-A1-L-0001' LIMIT 1);
DELETE FROM activities WHERE lesson_id=@lesson_id;
DELETE FROM lesson_turns WHERE lesson_id=@lesson_id;
DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,metadata)
VALUES (@course_id,'EN-LEX-HELLO-01','word','hello','hello','interjection','greeting','سلام','nova/audio/lexical/en-fa/43cd0dd00a9bea0c54572e2140190981a5bfaddc71d5cb58e16ee2a1334a3d23.mp3','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-HELLO-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',1,'{}');

INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,metadata)
VALUES (@course_id,'EN-LEX-NAME-01','word','name','name','noun','personal_name','اسم','nova/audio/lexical/en-fa/59e6f2bcb4530dddb372d54401b66a7bf735760a788f310a848829fdeae4e303.mp3','{}')
ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),metadata=VALUES(metadata);
SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key='EN-LEX-NAME-01' LIMIT 1);
INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (@lesson_id,@lex_id,'target',2,'{}');

INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T01',1,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'Hello! I''m Maya.','سلام! من مایا هستم.','nova/audio/turns/en-fa/EN-A1-L-0001/T01.mp3',NULL,NULL,NULL,'{}');
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T02',2,'learner',NULL,'Hello! I''m Alex.','سلام! من الکس هستم.','nova/audio/turns/en-fa/EN-A1-L-0001/T02.mp3','Hello! I''m Alex.','["Hello! I''m Alex."]',NULL,'{}');
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T03',3,'character',(SELECT id FROM characters WHERE course_id=@course_id AND character_key='maya' LIMIT 1),'What''s your name?','اسمت چیه؟','nova/audio/turns/en-fa/EN-A1-L-0001/T03.mp3',NULL,NULL,NULL,'{}');
INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,speech_target,accepted_speech,tokens,metadata)
VALUES (@lesson_id,'T04',4,'learner',NULL,'I''m Alex.','من الکس هستم.','nova/audio/turns/en-fa/EN-A1-L-0001/T04.mp3','I''m Alex.','["I''m Alex."]',NULL,'{}');

INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A01',1,'dialogue','حرف مایا را بخوان و گوش کن، بعد جواب آماده را با صدای بلند بازخوانی کن.',NULL,'{"mode":"guided_exchange","exchanges":[{"exchangeKey":"E01","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true},{"exchangeKey":"E02","promptTurnKey":"T03","responseTurnKey":"T04","responseEvaluation":"practice_only","allowPromptReplay":true,"allowResponseModelAudio":true}],"showPromptText":true,"showPromptTranslation":true,"showResponseText":true,"showResponseTranslation":true}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A02',2,'lexical_teach','این دو کلمه اصلی را یاد بگیر.',NULL,'{"lexicalKeys":["EN-LEX-HELLO-01","EN-LEX-NAME-01"]}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A03',3,'sentence_order','به جمله گوش کن و بعد کلمه ها را به همان ترتیب بچین.',NULL,'{"audioSourceTurnKey":"T03","tokensEn":["name?","What''s","your"],"answerTokensEn":["What''s","your","name?"],"answerEn":"What''s your name?","showAnswerTextBeforeAttempt":false,"allowAudioReplay":true}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A04',4,'fill_blank','گزینه درست را برای جای خالی انتخاب کن.',NULL,'{"sentenceEn":"Hello! ___ Alex.","optionsEn":["I''m","your","name"],"answerIndex":0}','{}');
INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)
VALUES (@lesson_id,'A05',5,'comprehension','مکالمه را گوش کن و به معنی آن توجه کن.','مایا از الکس چه چیزی می پرسد؟','{"sourceTurnKeys":["T01","T02","T03","T04"],"options":["اسمش را","حالش را","اهل کجاست"],"answerIndex":0,"transcriptAfterAttempt":true}','{}');

COMMIT;

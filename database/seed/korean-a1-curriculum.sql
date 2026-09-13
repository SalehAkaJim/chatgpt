-- Standard Korean A1 curriculum, batch 1, for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units (course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,2,'approved',JSON_OBJECT('language_specific',TRUE,'target_variant','ko-KR','batch',1,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 110 sort_order,'foundations' skill_slug,'introductions' topic_slug,'a1-ko-identity-and-work' slug,'저는 회사원이에요' title,'State identity, work and origin and negate a nominal identity politely.' objective,'이에요/예요 and 아니에요' grammar_focus
 UNION ALL SELECT 120,'family-home','family','a1-ko-family-and-people','우리 가족이에요','Introduce close family and say how many people are in the family.','우리 and 명'
 UNION ALL SELECT 130,'family-home','home','a1-ko-where-things-are','책이 어디에 있어요?','Ask and say where everyday things are located.','place + 에 있어요'
 UNION ALL SELECT 140,'daily-life','daily-routine','a1-ko-daily-routine','아침에 일어나요','Describe a simple daily routine.','해요체 -아요/-어요'
 UNION ALL SELECT 150,'daily-life','daily-routine','a1-ko-likes-and-dislikes','커피를 좋아해요','Ask and state likes and dislikes.','을/를 with 좋아하다'
 UNION ALL SELECT 160,'time-plans','time','a1-ko-time-and-schedule','세 시에 만나요','Tell time and arrange a meeting.','time + 에'
 UNION ALL SELECT 170,'food-drink','restaurants','a1-ko-cafe-orders','아메리카노 한 잔 주세요','Order drinks and simple food politely.','counter + 주세요'
 UNION ALL SELECT 180,'shopping-money','shopping','a1-ko-shopping-basics','이거 얼마예요?','Ask prices and make a simple purchase.','prices + 원'
 UNION ALL SELECT 190,'travel-transport','directions','a1-ko-getting-around','지하철역이 어디예요?','Ask for and follow basic directions.','-(으)로'
 UNION ALL SELECT 200,'foundations','introductions','a1-ko-a1-day-out-capstone','서울에서 하루','Combine A1 survival skills in one short day-out sequence.','A1 communicative integration'
) u JOIN courses c ON c.slug='fa-ko-kr' JOIN cefr_levels lvl ON lvl.code='A1' JOIN skills s ON s.slug=u.skill_slug JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;

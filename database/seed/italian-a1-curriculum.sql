-- Standard Italian A1 curriculum, batch 1, for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units (course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,2,'approved',JSON_OBJECT('language_specific',TRUE,'target_variant','it-IT','batch',1,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 110 sort_order,'foundations' skill_slug,'introductions' topic_slug,'a1-it-who-i-am' slug,'Sono studente' title,'State identity, occupation and origin with essere.' objective,'essere and non negation' grammar_focus
 UNION ALL SELECT 120,'describing','objects','a1-it-articles-and-objects','Un libro, una borsa','Identify everyday objects with gender-aware articles and demonstratives.','un/una and questo/questa agreement'
 UNION ALL SELECT 130,'family-home','family','a1-it-my-family','La mia famiglia','Introduce close family and basic possession.','mio/mia and avere chunks'
 UNION ALL SELECT 140,'family-home','home','a1-it-at-home','C''è una cucina','Describe what exists and where things are at home.','c''è/ci sono and dov''è'
 UNION ALL SELECT 150,'daily-life','daily-routine','a1-it-daily-routine','Lavoro e studio','Describe simple present-tense everyday routines.','present of high-frequency verbs'
 UNION ALL SELECT 160,'time-plans','time','a1-it-time-and-plans','Che ora è?','Tell clock time and arrange a simple meeting.','è l''una/sono le and time phrases'
 UNION ALL SELECT 170,'food-drink','restaurants','a1-it-at-the-cafe','Vorrei un caffè','Order simple food and drinks politely.','vorrei and polite service chunks'
 UNION ALL SELECT 180,'shopping-money','shopping','a1-it-shopping-basics','Quanto costa?','Ask prices, sizes and make simple shopping choices.','demonstrative agreement and price expressions'
 UNION ALL SELECT 190,'travel-transport','directions','a1-it-getting-around','Vado in centro','Ask about destinations and basic transport.','andare with a/in'
 UNION ALL SELECT 200,'daily-life','daily-routine','a1-it-a1-day-capstone','Una giornata in Italia','Combine routine, time, transport, meetings and simple plans in a short A1 day narrative.','A1 communicative integration with poi'
) u
JOIN courses c ON c.slug='fa-it-it' JOIN cefr_levels lvl ON lvl.code='A1' JOIN skills s ON s.slug=u.skill_slug JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;

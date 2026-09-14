-- Standard Italian A2 curriculum, batch 1, for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units (course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,2,'approved',JSON_OBJECT('language_specific',TRUE,'target_variant','it-IT','batch',1,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 210 sort_order,'daily-life' skill_slug,'common-actions' topic_slug,'a2-it-past-experiences' slug,'Ieri ho visitato Firenze' title,'Report completed past experiences with the passato prossimo.' objective,'passato prossimo with avere/essere' grammar_focus
 UNION ALL SELECT 220,'communication','simple-messages','a2-it-reasons-and-results','Perché ero in ritardo','Explain reasons and consequences in short everyday narratives.','perché and quindi'
 UNION ALL SELECT 230,'time-plans','future-plans','a2-it-plans-and-intentions','Questo weekend vorrei andare al mare','Express decisions, hopes and near-future intentions.','decidere di, sperare di, vorrei'
 UNION ALL SELECT 240,'shopping-money','shopping','a2-it-comparisons-and-choice','Questo è più comodo','Compare options and express preferences in practical choices.','più/meno + adjective and preferire'
 UNION ALL SELECT 250,'communication','requests','a2-it-ability-and-permission','Posso entrare?','Ask for permission and express obligation with modal verbs.','potere and dovere + infinitive'
 UNION ALL SELECT 260,'health-body','basic-health','a2-it-health-and-advice','Mi fa male la gola','Describe common symptoms and give friendly advice.','dovresti + infinitive'
 UNION ALL SELECT 270,'travel-transport','transport','a2-it-travel-and-hotel','Abbiamo una prenotazione','Handle hotel check-in, station questions and common travel problems.','da quale and per + duration'
 UNION ALL SELECT 280,'describing','weather','a2-it-weather-and-change','Sta diventando più freddo','Describe weather and changes in progress.','stare + gerundio and diventare'
 UNION ALL SELECT 290,'social','likes-dislikes','a2-it-opinions-and-softening','Secondo me è una buona idea','Give and soften everyday opinions and partial disagreement.','secondo me, mi sembra, forse'
 UNION ALL SELECT 300,'time-plans','future-plans','a2-it-a2-weekend-capstone','Un weekend da organizzare','Integrate past events, plans, modal language, opinions and contingencies in an A2 weekend scenario.','A2 integration with se + present'
) u
JOIN courses c ON c.slug='fa-it-it' JOIN cefr_levels lvl ON lvl.code='A2' JOIN skills s ON s.slug=u.skill_slug JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;

-- Standard Italian B1 curriculum, batch 1, for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units (course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,2,'approved',JSON_OBJECT('language_specific',TRUE,'target_variant','it-IT','batch',1,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 310 sort_order,'daily-life' skill_slug,'common-actions' topic_slug,'b1-it-stories-and-background' slug,'Mentre tornavo a casa' title,'Narrate events by contrasting background circumstances with completed actions.' objective,'imperfetto vs passato prossimo' grammar_focus
 UNION ALL SELECT 320,'daily-life','daily-routine','b1-it-changes-over-time','Da quando lavoro da casa','Describe changes in habits and situations over time.','da quando; prima vs adesso'
 UNION ALL SELECT 330,'social','likes-dislikes','b1-it-opinions-and-reasons','Secondo me dipende','State, support, qualify and politely challenge everyday opinions.','opinion framing and qualification'
 UNION ALL SELECT 340,'communication','simple-messages','b1-it-reported-information','Mi ha detto che arrivava tardi','Relay messages, explanations and unverified information accurately.','reported speech with che'
 UNION ALL SELECT 350,'time-plans','future-plans','b1-it-real-conditions','Se finisco presto, ti chiamo','Express realistic conditions, contingencies and near-future consequences.','se + present; appena + present'
 UNION ALL SELECT 360,'time-plans','future-plans','b1-it-goals-and-effort','Sto cercando di migliorare','Talk about goals, effort, persistence and measurable progress.','cercare di; riuscire a; continuare a'
 UNION ALL SELECT 370,'communication','requests','b1-it-problems-and-solutions','Bisogna trovare una soluzione','Diagnose practical problems, suggest solutions and escalate when needed.','bisogna / conviene + infinitive'
 UNION ALL SELECT 380,'communication','simple-messages','b1-it-media-and-sources','La fonte che ho letto','Evaluate information sources and connect descriptions with relative clauses.','che / cui relative clauses'
 UNION ALL SELECT 390,'communication','requests','b1-it-polite-nuance','Potresti darmi una mano?','Use the present conditional to soften requests, preferences and interruptions.','present conditional for politeness'
 UNION ALL SELECT 400,'time-plans','future-plans','b1-it-b1-city-project-capstone','Un progetto per il quartiere','Integrate narration, opinions, reporting, conditions and polite negotiation in a community project.','B1 integrated discourse'
) u
JOIN courses c ON c.slug='fa-it-it' JOIN cefr_levels lvl ON lvl.code='B1' JOIN skills s ON s.slug=u.skill_slug JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;

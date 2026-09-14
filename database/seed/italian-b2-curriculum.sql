-- Standard Italian B2 curriculum, batch 1, for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units (course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,2,'approved',JSON_OBJECT('language_specific',TRUE,'target_variant','it-IT','batch',1,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 410 sort_order,'social' skill_slug,'likes-dislikes' topic_slug,'b2-it-stance-and-subjunctive' slug,'Penso che sia una buona idea' title,'Express stance, doubt, probability and evaluation with controlled use of the present subjunctive.' objective,'congiuntivo presente after stance, doubt and evaluation' grammar_focus
 UNION ALL SELECT 420,'time-plans','future-plans','b2-it-counterfactual-choices','Se avessi più tempo, lo farei','Reason about hypothetical choices, risks and consequences.','se + congiuntivo imperfetto; condizionale presente'
 UNION ALL SELECT 430,'communication','simple-messages','b2-it-evidence-and-claims','I dati suggeriscono che','Evaluate evidence, hedge claims and distinguish observation from interpretation.','indicativo vs congiuntivo in evidence claims'
 UNION ALL SELECT 440,'daily-life','common-actions','b2-it-passive-and-impersonal','Si prevede un aumento','Describe institutional actions and processes with passive and impersonal constructions.','passive; si passivante; si impersonale'
 UNION ALL SELECT 450,'social','likes-dislikes','b2-it-concession-and-contrast','Benché sia utile, non basta','Acknowledge counterarguments while maintaining and qualifying a position.','benché/sebbene + congiuntivo; nonostante'
 UNION ALL SELECT 460,'communication','simple-messages','b2-it-reported-discourse','Aveva detto che sarebbe arrivato','Report past statements, future-in-the-past reference and competing accounts accurately.','reported discourse; future in the past'
 UNION ALL SELECT 470,'communication','simple-messages','b2-it-cohesive-argument','Da un lato, dall''altro','Organize sustained arguments with addition, contrast, consequence and logical structure.','advanced discourse connectors'
 UNION ALL SELECT 480,'communication','requests','b2-it-formal-negotiation','Vorremmo trovare un accordo','Negotiate conditions, concessions and compromise in a formal collaborative register.','conditional mitigation and negotiated conditions'
 UNION ALL SELECT 490,'communication','requests','b2-it-register-and-nuance','Dipende da come lo dici','Adapt directness and pragmatic nuance to relationship, setting and communicative purpose.','register choice and pragmatic attenuation'
 UNION ALL SELECT 500,'time-plans','future-plans','b2-it-b2-community-debate-capstone','Una decisione per la città','Integrate B2 hypothesis, concession, evidence, register and negotiation in a civic debate.','B2 integrated discourse'
) u
JOIN courses c ON c.slug='fa-it-it' JOIN cefr_levels lvl ON lvl.code='B2' JOIN skills s ON s.slug=u.skill_slug JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;

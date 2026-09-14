-- Standard Italian C1 curriculum, batch 1, for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units (course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,2,'approved',JSON_OBJECT('language_specific',TRUE,'target_variant','it-IT','batch',1,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 510 sort_order,'social' skill_slug,'likes-dislikes' topic_slug,'c1-it-calibrated-stance' slug,'Per quanto ne so, la questione è più complessa' title,'Calibrate commitment, uncertainty and evaluation with C1 precision.' objective,'epistemic stance and calibrated subjunctive' grammar_focus
 UNION ALL SELECT 520,'communication','simple-messages','c1-it-information-structure','È questo il punto che conta','Control focus, presupposition and contrast through information structure.','clefts, dislocation and marked information structure'
 UNION ALL SELECT 530,'social','likes-dislikes','c1-it-concession-and-reframing','Pur riconoscendo il problema, la vedo diversamente','Concede valid objections while reframing complex arguments.','advanced concessives and reframing'
 UNION ALL SELECT 540,'communication','requests','c1-it-mediation-and-synthesis','In altre parole, le due posizioni non sono così lontane','Mediate, synthesize and reconcile complex viewpoints accurately.','mediation and faithful reformulation'
 UNION ALL SELECT 550,'communication','requests','c1-it-register-flexibility','Dipende da chi parla, a chi e perché','Adapt register, distance and mitigation flexibly across contexts.','register and interpersonal mitigation'
 UNION ALL SELECT 560,'communication','simple-messages','c1-it-reported-voices','Secondo l''autore, ma non necessariamente secondo i dati','Attribute voices and maintain stance distance in reported discourse.','polyphony, attribution and evidential framing'
 UNION ALL SELECT 570,'communication','simple-messages','c1-it-nominalization-and-density','La riduzione dei consumi richiede una revisione delle priorità','Understand and produce dense nominal style without sacrificing clarity.','nominalization and dense formal style'
 UNION ALL SELECT 580,'daily-life','common-actions','c1-it-idiomatic-reformulation','Non è tanto una questione di regole quanto di abitudini','Reformulate idiomatically while preserving nuance and register.','idiomatic reformulation and correlative structures'
 UNION ALL SELECT 590,'time-plans','future-plans','c1-it-complex-causality','Non dipende da un solo fattore','Explain multi-factor causality and distinguish cause from correlation.','complex causal relations and precision connectors'
 UNION ALL SELECT 600,'time-plans','future-plans','c1-it-c1-public-forum-capstone','Una decisione complessa, spiegata con precisione','Integrate C1 stance, mediation, register and synthesis in a sustained civic decision.','C1 integrated discourse'
) u
JOIN courses c ON c.slug='fa-it-it' JOIN cefr_levels lvl ON lvl.code='C1' JOIN skills s ON s.slug=u.skill_slug JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;

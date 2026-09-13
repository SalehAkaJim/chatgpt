-- German B1 curriculum, batch 1 (units 1-10) for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units(course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,l.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,u.expected_lessons,'approved',
JSON_OBJECT('language_specific',TRUE,'target_variant','de-DE','grammar_focus',u.grammar_focus,'batch',1)
FROM (
  SELECT 10 AS sort_order,'communication' AS skill_slug,'simple-messages' AS topic_slug,'b1-de-telling-stories' AS slug,'Geschichten erzählen' AS title,'Vergangene Ereignisse zusammenhängend erzählen, zeitlich ordnen und wichtige Details hervorheben.' AS objective,3 AS expected_lessons,'als / wenn; Präteritum häufiger Verben; temporale Konnektoren' AS grammar_focus
  UNION ALL SELECT 20,'social','likes-dislikes','b1-de-opinions-reasons','Meinung & Begründung','Eine persönliche Meinung klar ausdrücken, Gründe nennen und Folgen erklären.',3,'dass / weil; deshalb / trotzdem; Satzverknüpfung'
  UNION ALL SELECT 30,'social','polite-language','b1-de-agree-disagree','Zustimmen & widersprechen','In Gesprächen höflich zustimmen, teilweise widersprechen und einen Kompromiss formulieren.',3,'zwar ... aber; obwohl; Konjunktiv II für höfliche Gegenpositionen'
  UNION ALL SELECT 40,'work-study','jobs','b1-de-work-experience','Berufserfahrung','Über Berufserfahrung, Aufgaben, Verantwortung und Bewerbungssituationen sprechen.',3,'seit / seitdem; Relativsätze; Perfekt und Präteritum im Berufsbericht'
  UNION ALL SELECT 50,'work-study','school-study','b1-de-study-goals','Lernziele & Fortschritt','Lernziele formulieren, Fortschritt einschätzen und Strategien zur Verbesserung erklären.',3,'um ... zu; damit; wenn-Sätze für Lernstrategien'
  UNION ALL SELECT 60,'communication','requests','b1-de-problems-solutions','Probleme & Lösungen','Alltagsprobleme genauer beschreiben, Ursachen nennen und realistische Lösungen aushandeln.',3,'sollte / könnte / würde; falls; lassen + Infinitiv'
  UNION ALL SELECT 70,'health-body','basic-health','b1-de-health-habits','Gesundheit & Gewohnheiten','Gesundheitsgewohnheiten beschreiben, Zusammenhänge erklären und ausgewogene Ratschläge geben.',3,'wenn / obwohl; je ... desto; Modalverben für Empfehlungen'
  UNION ALL SELECT 80,'travel-transport','transport','b1-de-travel-experiences','Reiseerfahrungen','Reiseerlebnisse detaillierter erzählen, Orte beschreiben und überraschende Situationen erklären.',3,'Relativsätze im Nominativ/Akkusativ; als / während; Erzählzeiten'
  UNION ALL SELECT 90,'communication','simple-messages','b1-de-media-technology','Medien & Technik','Vor- und Nachteile digitaler Medien diskutieren und persönliche Nutzungsgewohnheiten begründen.',3,'einerseits ... andererseits; dass-Sätze; deshalb / trotzdem'
  UNION ALL SELECT 100,'travel-transport','places-town','b1-de-neighborhood-community','Nachbarschaft & Gemeinschaft','Probleme und Verbesserungen im Wohnumfeld besprechen und Beteiligung an Gemeinschaftsprojekten planen.',3,'Passiv Präsens; man vs. Passiv; um ... zu / damit'
) u
JOIN courses c ON c.slug='fa-de-de'
JOIN cefr_levels l ON l.code='B1'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

-- German B1 curriculum, batch 2 (units 11-20).
INSERT IGNORE INTO curriculum_units(course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,l.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,u.expected_lessons,'approved',
JSON_OBJECT('language_specific',TRUE,'target_variant','de-DE','grammar_focus',u.grammar_focus,'batch',2)
FROM (
  SELECT 110 AS sort_order,'family-home' AS skill_slug,'home' AS topic_slug,'b1-de-housing-renting' AS slug,'Wohnungssuche & Miete' AS title,'Wohnungsangebote und Mietbedingungen verstehen, Rückfragen stellen und Bedingungen klären.' AS objective,3 AS expected_lessons,'Relativsätze mit Ortsangaben; bevor; falls' AS grammar_focus
  UNION ALL SELECT 120,'work-study','jobs','b1-de-job-applications','Bewerbung & Vorstellungsgespräch','Berufliche Erfahrung und Stärken darstellen und typische Fragen im Vorstellungsgespräch beantworten.',3,'weil / da; würde + Infinitiv; wenn in beruflichen Situationen'
  UNION ALL SELECT 130,'work-study','jobs','b1-de-workplace-communication','Kommunikation am Arbeitsplatz','Aufgaben klären, Informationen weitergeben und Prioritäten im Team abstimmen.',3,'indirekte Fragen; sobald / damit; da / weil'
  UNION ALL SELECT 140,'work-study','school-study','b1-de-courses-learning','Kurse & Weiterbildung','Weiterbildungsangebote vergleichen, Lernziele erklären und Fortschritt reflektieren.',3,'Relativsätze; um ... zu / damit; obwohl / trotzdem'
  UNION ALL SELECT 150,'daily-life','common-actions','b1-de-environment-recycling','Umwelt & Recycling','Umweltverhalten, Recycling und Möglichkeiten zur Reduzierung von Verbrauch diskutieren.',3,'Passiv; je ... desto; seit / seitdem'
  UNION ALL SELECT 160,'shopping-money','shopping','b1-de-complaints-returns','Reklamation & Rückgabe','Mängel genau beschreiben, Nachweise nennen und höflich eine passende Lösung verlangen.',3,'obwohl; Konjunktiv II für höfliche Forderungen; falls / wenn'
  UNION ALL SELECT 170,'shopping-money','prices','b1-de-money-budget','Geld & Budget','Ausgaben planen, Sparziele erklären und alltägliche finanzielle Entscheidungen begründen.',3,'damit; je ... desto; weder ... noch / sowohl ... als auch'
  UNION ALL SELECT 180,'social','polite-language','b1-de-relationships-conflict','Beziehungen & Konflikte','Missverständnisse und Gefühle erklären, sich entschuldigen und einen Kompromiss aushandeln.',3,'weil / dass; reflexive Verben mit Präpositionen; Relativsatz mit Präposition'
  UNION ALL SELECT 190,'social','hobbies','b1-de-culture-events','Kultur & Veranstaltungen','Kulturelle Erlebnisse beschreiben, differenziert bewerten und praktische Veranstaltungsinformationen austauschen.',3,'Relativsätze mit Präpositionen; obwohl; Passiv Präteritum'
  UNION ALL SELECT 200,'time-plans','future-plans','b1-de-decisions-consequences','Möglichkeiten abwägen, mögliche Folgen einschätzen und Entscheidungen nachvollziehbar begründen.',3,'falls + Konjunktiv II; solange; sich entscheiden für/gegen'
) u
JOIN courses c ON c.slug='fa-de-de'
JOIN cefr_levels l ON l.code='B1'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

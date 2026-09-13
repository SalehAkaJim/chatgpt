-- German C1 curriculum, batch 1 (units 1-10) for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units(course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,l.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,u.expected_lessons,'approved',
JSON_OBJECT('language_specific',TRUE,'target_variant','de-DE','grammar_focus',u.grammar_focus,'batch',1)
FROM (
  SELECT 10 AS sort_order,'communication' AS skill_slug,'simple-messages' AS topic_slug,'c1-de-claims-hedging' AS slug,'Aussagen präzise relativieren' AS title,'Aussagen nach Evidenzgrad, Reichweite und Unsicherheit differenzieren, Einschränkungen explizit machen und Übertreibungen vermeiden.' AS objective,3 AS expected_lessons,'insofern, als; soweit; nicht zuletzt vor dem Hintergrund, dass' AS grammar_focus
  UNION ALL SELECT 20,'communication','simple-messages','c1-de-reported-speech-attribution','Positionen distanziert wiedergeben','Fremde Aussagen präzise attribuieren, Distanz zur Aussage markieren, Quellenstatus kenntlich machen und indirekte Rede sicher einsetzen.',3,'Konjunktiv I; zufolge; der Darstellung nach'
  UNION ALL SELECT 30,'communication','simple-messages','c1-de-multi-source-synthesis','Mehrere Quellen synthetisieren','Mehrere Quellen nach Aussagekraft, Gemeinsamkeiten und Widersprüchen ordnen und zu einer kohärenten Synthese mit klaren Grenzen verbinden.',3,'wohingegen; zusammengenommen; daraus lässt sich ableiten'
  UNION ALL SELECT 40,'social','polite-language','c1-de-implicit-meaning-register','Implizite Bedeutung & Register erkennen','Implizite Haltungen, Abschwächungen und registerabhängige Signale erkennen und die eigene Formulierung an Beziehung, Kontext und Risiko anpassen.',3,'dürfte; wäre als ... zu verstehen; zwar ... jedoch'
  UNION ALL SELECT 50,'work-study','jobs','c1-de-strategic-recommendations','Strategische Empfehlungen begründen','Komplexe Handlungsoptionen anhand von Kriterien, Risiken und Nebenwirkungen bewerten und eine belastbare, konditionale Empfehlung formulieren.',3,'unter Abwägung von; vorausgesetzt, dass; angesichts dessen'
  UNION ALL SELECT 60,'social','polite-language','c1-de-consensus-facilitation','Konsens in komplexen Gruppen herstellen','Divergierende Interessen sichtbar machen, gemeinsame Mindestbedingungen identifizieren, Zielkonflikte moderieren und tragfähige Konsenspunkte formulieren.',3,'sofern; insofern; während zugleich'
  UNION ALL SELECT 70,'communication','simple-messages','c1-de-formal-analysis-writing','Analytisch & formal schreiben','Komplexe Sachverhalte in formalem Register verdichten, Nominalstil kontrolliert einsetzen, Argumente hierarchisieren und Schlussfolgerungen präzise formulieren.',3,'Nominalisierung; erweiterte Partizipialattribute; im Hinblick auf'
  UNION ALL SELECT 80,'communication','requests','c1-de-policy-interpretation','Richtlinien & institutionelle Texte einordnen','Formelle Richtlinien, Bedingungen, Ausnahmen und Ermessensspielräume präzise interpretieren und deren praktische Folgen verständlich erklären.',3,'sofern/soweit; vorbehaltlich; es obliegt + Dativ'
  UNION ALL SELECT 90,'communication','simple-messages','c1-de-crisis-communication','Krisenkommunikation präzise steuern','Unter Zeitdruck bestätigte Fakten, offene Fragen und Korrekturen klar trennen, Verantwortlichkeit übernehmen und Vertrauen durch nachvollziehbare Updates erhalten.',3,'nach aktuellem Stand; Passiv/Unpersönlichkeit; ohne ... zu + Infinitiv'
  UNION ALL SELECT 100,'communication','simple-messages','c1-de-evidence-briefing-capstone','C1-Capstone: Evidenzbasiert entscheiden','Komplexe Evidenz verdichten, Positionen korrekt attribuieren, Unsicherheit markieren, Optionen abwägen und eine adressatengerechte Entscheidungsvorlage präsentieren.',3,'Konjunktiv I + Hedging; Nominalstil; konditionale Empfehlung'
) u
JOIN courses c ON c.slug='fa-de-de'
JOIN cefr_levels l ON l.code='C1'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

-- German C1 curriculum, batch 2 (units 11-20).
INSERT IGNORE INTO curriculum_units(course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,l.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,u.expected_lessons,'approved',
JSON_OBJECT('language_specific',TRUE,'target_variant','de-DE','grammar_focus',u.grammar_focus,'batch',2)
FROM (
  SELECT 110 AS sort_order,'communication' AS skill_slug,'requests' AS topic_slug,'c1-de-stakeholder-requirements' AS slug,'Anforderungen präzise herausarbeiten' AS title,'Bedürfnisse von Lösungsvorstellungen trennen, Annahmen sichtbar machen, überprüfbare Kriterien bilden und widersprüchliche Anforderungen professionell klären.' AS objective,3 AS expected_lessons,'indirekte Präzisierungsfragen; falls/sofern; Nominalisierung' AS grammar_focus
  UNION ALL SELECT 120,'work-study','jobs','c1-de-scope-negotiation','Leistungsumfang souverän verhandeln','Leistungsumfang und Verantwortungsgrenzen präzisieren, Änderungen konditional verhandeln und Folgewirkungen auf Zeit, Aufwand und Qualität transparent machen.',3,'sofern; zwar ... jedoch; würde + Infinitiv'
  UNION ALL SELECT 130,'work-study','jobs','c1-de-knowledge-transfer','Wissen nachhaltig übergeben','Implizites Wissen sichtbar machen, Kontext und Ausnahmen dokumentieren, Erklärungen an den Adressaten anpassen und Wissen durch Anwendung verankern.',3,'nicht nur ... sondern auch; sodass; Partizipialattribute'
  UNION ALL SELECT 140,'social','polite-language','c1-de-objections-counterarguments','Einwände differenziert entkräften','Einwände fair rekonstruieren, berechtigte Teile anerkennen, Reichweite begrenzen und evidenzbasierte Gegenargumente ohne Überzeichnung formulieren.',3,'zwar ... jedoch; insofern ... als; ohne dass'
  UNION ALL SELECT 150,'work-study','jobs','c1-de-feedback-coaching','Anspruchsvolles Feedback entwicklungsorientiert geben','Beobachtung, Wirkung und Interpretation trennen, Perspektiven einholen und kritisches Feedback in konkrete Entwicklungsvereinbarungen überführen.',3,'mir ist aufgefallen, dass; wenn ich dich richtig verstehe; künftig wäre mir wichtig'
  UNION ALL SELECT 160,'communication','requests','c1-de-formal-escalation','Formell eskalieren, ohne zu verhärten','Ungeklärte Vorgänge sachlich dokumentieren, klare Handlungen und Termine benennen und formelle Konsequenzen kontrolliert formulieren.',3,'hiermit; unter Bezugnahme auf; sollte ... keine ... erfolgen'
  UNION ALL SELECT 170,'work-study','jobs','c1-de-delegation-accountability','Verantwortung wirksam delegieren','Ergebnis, Zuständigkeit, Handlungsspielraum und Rückkopplung so definieren, dass eigenständiges Arbeiten und klare Verantwortlichkeit zusammenpassen.',3,'es liegt bei + Dativ; im Rahmen von; während/wohingegen'
  UNION ALL SELECT 180,'communication','simple-messages','c1-de-ambiguity-clarification','Mehrdeutigkeit erkennen & klären','Mehrere mögliche Lesarten unterscheiden, Referenzen und implizite Annahmen prüfen und gemeinsames Verständnis ohne vorschnelle Zuschreibungen herstellen.',3,'meinen Sie damit, dass; je nachdem, wie; sofern ich Sie richtig verstehe'
  UNION ALL SELECT 190,'social','polite-language','c1-de-cross-cultural-pragmatics','Pragmatik kulturübergreifend steuern','Direktheit, Distanz und Höflichkeit kontextabhängig interpretieren, Fehlinterpretationen ohne Stereotype reduzieren und den eigenen Ton flexibel anpassen.',3,'wirkt auf mich; nicht zwingend; während ... eher'
  UNION ALL SELECT 200,'communication','simple-messages','c1-de-collaboration-capstone','C1-Capstone: Komplexe Zusammenarbeit steuern','Anforderungen konsolidieren, Arbeitsrahmen und Verantwortung klären, Mehrdeutigkeit auflösen und eine umsetzbare, verbindliche Vereinbarung herstellen.',3,'erst wenn/nur wenn; einerseits ... andererseits; damit'
) u
JOIN courses c ON c.slug='fa-de-de'
JOIN cefr_levels l ON l.code='C1'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

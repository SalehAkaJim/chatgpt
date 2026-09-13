-- German B2 curriculum, batch 1 (units 1-10) for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units(course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,l.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,u.expected_lessons,'approved',
JSON_OBJECT('language_specific',TRUE,'target_variant','de-DE','grammar_focus',u.grammar_focus,'batch',1)
FROM (
  SELECT 10 AS sort_order,'communication' AS skill_slug,'simple-messages' AS topic_slug,'b2-de-argument-evidence' AS slug,'Argumentieren & Belege nennen' AS title,'Einen Standpunkt klar formulieren, Belege anführen, Einwände berücksichtigen und Schlussfolgerungen angemessen begrenzen.' AS objective,3 AS expected_lessons,'zwar ... aber; sich lassen + Infinitiv; insofern, als' AS grammar_focus
  UNION ALL SELECT 20,'social','polite-language','b2-de-nuanced-agreement-disagreement','Nuanciert zustimmen & widersprechen','Teilweise zustimmen, Vorbehalte formulieren, legitime Gegenpositionen anerkennen und differenziert widersprechen.',3,'auch wenn; einerseits ... andererseits; Abschwächung mit nicht unbedingt'
  UNION ALL SELECT 30,'communication','simple-messages','b2-de-presentations-questions','Präsentieren & Rückfragen beantworten','Komplexere Informationen strukturiert präsentieren, Zusammenhänge erklären, Aussagen präzisieren und Rückfragen differenziert beantworten.',3,'was ... betrifft; Pronominaladverbien; daraus ergibt sich'
  UNION ALL SELECT 40,'social','polite-language','b2-de-negotiation-compromise','Verhandeln & Kompromisse finden','Bedingungen und Spielräume verhandeln, gegenseitige Zugeständnisse formulieren und tragfähige Kompromisse abschließen.',3,'unter der Bedingung, dass; wenn-dann; Konjunktiv II für Optionen'
  UNION ALL SELECT 50,'work-study','jobs','b2-de-meetings-decisions','Besprechungen & Entscheidungen','Besprechungen strukturieren, Zuständigkeiten klären, Beschlüsse festhalten und verlässliche Nachverfolgung organisieren.',3,'darüber abstimmen, ob/wie; indirekte Zuständigkeitsfragen; zunächst/anschließend'
  UNION ALL SELECT 60,'communication','simple-messages','b2-de-formal-messages-escalation','Formelle Nachrichten & Eskalation','Formelle Anliegen sachlich nachverfolgen, höflich konkrete Schritte verlangen und bei Bedarf professionell eskalieren.',3,'Konjunktiv II für formelle Bitten; da-Sätze; sollte als formale Bedingung'
  UNION ALL SELECT 70,'communication','simple-messages','b2-de-source-summary-comparison','Quellen zusammenfassen & vergleichen','Kernaussagen mehrerer Quellen getrennt erfassen, Übereinstimmungen und Unterschiede vergleichen und Informationen sauber attribuieren.',3,'während/wohingegen; Gradadverbien; laut/nach Angaben von'
  UNION ALL SELECT 80,'communication','simple-messages','b2-de-media-claims-uncertainty','Medien, Behauptungen & Unsicherheit','Bestätigte Informationen von Behauptungen trennen, Unsicherheit markieren und mediale Aussagen quellenkritisch einordnen.',3,'Passiv/impersonale Bestätigung; Modaladverbien; Hinweise darauf, dass'
  UNION ALL SELECT 90,'daily-life','common-actions','b2-de-data-trends','Daten, Trends & Entwicklungen','Trends, Anteile und Veränderungen präzise beschreiben und Zusammenhänge vorsichtig interpretieren, ohne Kausalität zu überbehaupten.',3,'um/auf bei Prozentangaben; während/im Vergleich zu; vorsichtige Schlussfolgerungen'
  UNION ALL SELECT 100,'social','likes-dislikes','b2-de-social-issues-discussion','Gesellschaftliche Themen diskutieren','Unterschiedliche Perspektiven und Interessen abwägen, mögliche Nebenwirkungen erkennen und Maßnahmen differenziert bewerten.',3,'je nach + Dativ; modale Folgen; davon abhängen, wie/ob'
) u
JOIN courses c ON c.slug='fa-de-de'
JOIN cefr_levels l ON l.code='B2'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

-- German B2 curriculum, batch 2 (units 11-20).
INSERT IGNORE INTO curriculum_units(course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,l.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,u.expected_lessons,'approved',
JSON_OBJECT('language_specific',TRUE,'target_variant','de-DE','grammar_focus',u.grammar_focus,'batch',2)
FROM (
  SELECT 110 AS sort_order,'social' AS skill_slug,'polite-language' AS topic_slug,'b2-de-relationships-misunderstandings' AS slug,'Missverständnisse klären' AS title,'Zwischenmenschliche Missverständnisse sachlich klären, unterschiedliche Wahrnehmungen benennen und die Kommunikation konstruktiv reparieren.' AS objective,3 AS expected_lessons,'offenbar/anscheinend; nicht als ... gemeint sein; bevor-Sätze' AS grammar_focus
  UNION ALL SELECT 120,'communication','polite-language','b2-de-feedback-critique','Feedback differenziert geben','Konstruktives Feedback geben, Beobachtung und Bewertung trennen, Verbesserungen priorisieren und deren erwartete Wirkung erklären.',3,'allerdings; Konjunktiv II für Vorschläge; dadurch würde'
  UNION ALL SELECT 130,'work-study','jobs','b2-de-work-priorities-blockers','Prioritäten & Blocker kommunizieren','Prioritäten, Zuständigkeiten, Blocker und Abhängigkeiten transparent kommunizieren und realistische Liefererwartungen ableiten.',3,'Zuständigkeit liegt bei; derzeit + Präsens; unter diesen Bedingungen'
  UNION ALL SELECT 140,'work-study','jobs','b2-de-projects-deadlines-risks','Projektrisiken & Termine','Projektrisiken nach Wahrscheinlichkeit und Auswirkung bewerten, Verzögerungen erklären und konkrete Maßnahmen zur Absicherung planen.',3,'darin, dass; sollte als Konditionalsatz; deshalb/außerdem'
  UNION ALL SELECT 150,'work-study','jobs','b2-de-job-interviews-achievements','Erfahrung & Erfolge im Interview','Berufserfahrung und Erfolge mit konkreten Beispielen darstellen, den eigenen Beitrag benennen und die Relevanz für eine neue Stelle erklären.',3,'bestand darin, ... zu; dadurch konnten wir; sich übertragen lassen'
  UNION ALL SELECT 160,'work-study','school-study','b2-de-study-challenges-feedback','Lernprobleme & Fortschritt','Lernschwierigkeiten präzise benennen, Rückstände realistisch aufholen und Lernstrategien anhand überprüfbarer Fortschritte anpassen.',3,'nicht ... sondern; durch + Akkusativ; überprüfen, ob'
  UNION ALL SELECT 170,'communication','requests','b2-de-complaints-service-resolution','Beschwerden lösungsorientiert klären','Eine detaillierte Beschwerde sachlich begründen, bisherige Lösungsversuche dokumentieren, konkrete Abhilfe verlangen und angebotene Lösungen bewerten.',3,'trotz; formelle Bitte + sollte; für angemessen halten'
  UNION ALL SELECT 180,'shopping-money','shopping','b2-de-product-research-decisions','Produkte fundiert vergleichen','Produktinformationen, Bewertungen, Zuverlässigkeit, Garantie und Preis anhand transparenter Kriterien vergleichen und eine begründete Kaufentscheidung treffen.',3,'nicht ... sondern; zwar ... aber; wenn-Kriterien'
  UNION ALL SELECT 190,'travel-transport','transport','b2-de-travel-disruptions','Reisestörungen bewältigen','Eine Reisestörung chronologisch erklären, bestätigte Informationen von Vermutungen trennen, Alternativen vergleichen und die Weiterreise verbindlich klären.',3,'wegen; falls; bestätigen, ob'
  UNION ALL SELECT 200,'travel-transport','places-town','b2-de-accommodation-issues','Probleme mit der Unterkunft klären','Abweichungen von einer Buchung präzise benennen, frühere Zusagen einbeziehen, Alternativen verhandeln und die endgültige Lösung verbindlich festhalten.',3,'von ... abweichen; falls + Konjunktiv II; schriftlich festhalten'
) u
JOIN courses c ON c.slug='fa-de-de'
JOIN cefr_levels l ON l.code='B2'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

-- German B2 curriculum, batch 3 (units 21-30).
INSERT IGNORE INTO curriculum_units(course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,l.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,u.expected_lessons,'approved',
JSON_OBJECT('language_specific',TRUE,'target_variant','de-DE','grammar_focus',u.grammar_focus,'batch',3)
FROM (
  SELECT 210 AS sort_order,'social' AS skill_slug,'polite-language' AS topic_slug,'b2-de-conflict-mediation' AS slug,'Konflikte sachlich moderieren' AS title,'Spannungen sachlich ordnen, Beobachtung und Interpretation trennen, zwischen Positionen vermitteln und gegenseitige Zugeständnisse in eine tragfähige Lösung überführen.' AS objective,3 AS expected_lessons,'bevor; zwischen ... und ...; indem' AS grammar_focus
  UNION ALL SELECT 220,'work-study','jobs','b2-de-hybrid-collaboration','Hybrid zusammenarbeiten','Erreichbarkeit transparent machen, synchrone und asynchrone Kommunikation sinnvoll wählen, Übergaben dokumentieren und Zusammenarbeit über Zeitzonen hinweg organisieren.',3,'sich lassen + Infinitiv; damit; sowohl ... als auch'
  UNION ALL SELECT 230,'communication','simple-messages','b2-de-technical-explanations','Technische Themen verständlich erklären','Technische Inhalte für Nicht-Fachleute präzise vereinfachen, nötige Voraussetzungen benennen, Begriffe definieren und komplexe Abläufe schrittweise veranschaulichen.',3,'voraussetzen; vereinfacht gesagt; statt ... zu'
  UNION ALL SELECT 240,'shopping-money','shopping','b2-de-contracts-subscriptions','Verträge & Abos prüfen','Laufzeiten, Kündigungsfristen, Verlängerungen, Gebühren und Bedingungen systematisch prüfen und Vertragsänderungen angemessen behandeln.',3,'ob ... oder; unter der Bedingung, dass; sofern'
  UNION ALL SELECT 250,'travel-transport','places-town','b2-de-rental-repairs','Mietprobleme & Reparaturen klären','Mängel dokumentieren, vertragliche Zuständigkeiten prüfen, konkrete Reparaturtermine einfordern und schriftliche Protokolle für die weitere Klärung nutzen.',3,'im Vertrag steht, dass; indirekte Frage mit wann; festgehalten sein, dass'
  UNION ALL SELECT 260,'work-study','jobs','b2-de-professional-networking','Beruflich Kontakte knüpfen','Sich in beruflichen Situationen prägnant vorstellen, an gemeinsame Themen anknüpfen, den eigenen Schwerpunkt erklären und natürlich nachfassen.',3,'woran/worüber; statt nur ... zu; sich auf ... beziehen'
  UNION ALL SELECT 270,'daily-life','common-actions','b2-de-time-management','Zeit realistisch planen','Kapazität, Zeitfenster und Puffer realistisch einschätzen, konkurrierende Aufgaben priorisieren und bei neuen Anforderungen bewusste Verschiebungen vornehmen.',3,'deshalb; wenn; nicht nur ... sondern auch'
  UNION ALL SELECT 280,'communication','requests','b2-de-bureaucracy-appointments','Behördengänge & Anträge organisieren','Unterlagen und Nachweise vollständig vorbereiten, Zuständigkeiten klären, Anträge korrekt einreichen und formelle Bescheide sowie Bearbeitungszeiten einordnen.',3,'bevor; indirekte Frage mit ob; sobald'
  UNION ALL SELECT 290,'daily-life','common-actions','b2-de-event-organization','Veranstaltungen zuverlässig organisieren','Teilnahme, Raum, Ausstattung und Verantwortlichkeiten realistisch planen, Abhängigkeiten abstimmen und Änderungen zentral koordinieren.',3,'bevor; damit; sobald'
  UNION ALL SELECT 300,'communication','simple-messages','b2-de-scenario-decisions','Unter Unsicherheit entscheiden','Unsichere Annahmen sichtbar machen, mehrere Szenarien vergleichen, Auswirkungen prüfen und Entscheidungen wählen, die auch bei moderaten Abweichungen belastbar bleiben.',3,'davon abhängen; falls; nicht nur ... sondern auch'
) u
JOIN courses c ON c.slug='fa-de-de'
JOIN cefr_levels l ON l.code='B2'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

-- German B2 curriculum, batch 4 (units 31-40).
INSERT IGNORE INTO curriculum_units(course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,l.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,u.expected_lessons,'approved',
JSON_OBJECT('language_specific',TRUE,'target_variant','de-DE','grammar_focus',u.grammar_focus,'batch',4)
FROM (
  SELECT 310 AS sort_order,'communication' AS skill_slug,'simple-messages' AS topic_slug,'b2-de-rules-requirements' AS slug,'Regeln & Anforderungen einordnen' AS title,'Regeln, Empfehlungen und verbindliche Vorgaben unterscheiden, Ausnahmen prüfen, Voraussetzungen benennen und Folgen einer Nichtbeachtung präzise erklären.' AS objective,3 AS expected_lessons,'nicht jede/jeder/jedes; prüfen, ob; Voraussetzung dafür, dass' AS grammar_focus
  UNION ALL SELECT 320,'work-study','jobs','b2-de-structured-meetings','Besprechungen klar strukturieren','Tagesordnungen priorisieren, Themen sinnvoll ordnen, Entscheidungen knapp zusammenfassen, offene Punkte festhalten und Zuständigkeiten für nächste Schritte klären.',3,'mit + Dativ beginnen; eingebettete Fragewörter; für ... sollte klar sein'
  UNION ALL SELECT 330,'social','polite-language','b2-de-responsibility-corrections','Fehler transparent korrigieren','Fehler sachlich anerkennen, Verantwortung übernehmen, tatsächliche Auswirkungen erklären, konkrete Korrekturen durchführen und Änderungen nachvollziehbar dokumentieren.',3,'Verantwortung für + Akkusativ übernehmen; welche Auswirkung ... hatte; damit ... nachvollziehbar bleibt'
  UNION ALL SELECT 340,'travel-transport','places-town','b2-de-venue-comparison','Veranstaltungsorte vergleichen','Veranstaltungsorte anhand von Kapazität, Ausstattung, Erreichbarkeit und Nebenkosten vergleichen und eine Auswahl mit transparenten Kriterien begründen.',3,'nicht automatisch; zwar ... aber; erst dann, wenn'
  UNION ALL SELECT 350,'work-study','school-study','b2-de-learning-goals','Lernziele realistisch steuern','Konkrete Lernziele setzen, Schwerpunkte priorisieren, Fortschritt messbar machen, Rückmeldungen auswerten und Lernmethoden bei Bedarf gezielt anpassen.',3,'Schwerpunkt liegt auf + Dativ; indem; statt ... zu'
  UNION ALL SELECT 360,'daily-life','common-actions','b2-de-shared-planning','Gemeinsame Aufgaben koordinieren','Gemeinsame Aufgaben nach Zeit und Priorität verteilen, Abhängigkeiten sichtbar machen, Vertretungen planen und die endgültige Aufteilung mit allen Beteiligten abstimmen.',3,'nur wenn; sobald; falls'
  UNION ALL SELECT 370,'social','likes-dislikes','b2-de-cultural-reviews','Kulturelle Angebote differenziert bewerten','Kulturelle Angebote anhand klarer Kriterien bewerten, Stärken und Schwächen mit Beispielen belegen und Empfehlungen passend zu unterschiedlichen Zielgruppen formulieren.',3,'vor allem wegen; als ... würde ich ... nennen; Relativsatz mit die'
  UNION ALL SELECT 380,'daily-life','common-actions','b2-de-experience-reflection','Erfahrungen differenziert schildern','Erwartungen und tatsächlichen Verlauf einer Erfahrung vergleichen, Wendepunkte präzise erzählen und rückblickend begründete Erkenntnisse sowie alternative Handlungen formulieren.',3,'würde in Erwartungen; als für Wendepunkte; hätte ... sollen'
  UNION ALL SELECT 390,'work-study','jobs','b2-de-resource-priorities','Ressourcen nachvollziehbar priorisieren','Begrenzte Ressourcen nach transparenten Kriterien verteilen, Bedarf und Wunsch unterscheiden, konkurrierende Wirkungen abwägen und Entscheidungen nachvollziehbar begründen.',3,'nach + Dativ priorisieren; gegen + Akkusativ abwägen; dann, wenn'
  UNION ALL SELECT 400,'work-study','jobs','b2-de-project-documentation','Projektstände verständlich dokumentieren','Projektstände knapp zusammenfassen, offene Aufgaben und Abhängigkeiten sichtbar machen, wichtige Entscheidungen mit Begründungen dokumentieren und Informationen für andere nachvollziehbar strukturieren.',3,'in ... Punkten zusammenfassen; nicht nur ... sondern auch; ermöglichen, ... zu'
) u
JOIN courses c ON c.slug='fa-de-de'
JOIN cefr_levels l ON l.code='B2'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

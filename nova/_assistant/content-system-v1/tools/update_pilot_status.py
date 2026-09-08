#!/usr/bin/env python3
from pathlib import Path
import argparse
import hashlib
from build_pilot import discover
from generate_audio import load, save


def update(root):
    path = root / 'nova/_assistant/content-system-v1/10_status.json'
    status = load(path)
    lessons = []
    for record in discover(root):
        source = record['source']
        digest = hashlib.sha256(source.read_bytes()).hexdigest()
        reports = {name: load(source.parent / name) for name in ('validation.json', 'content_quality.json', 'audio_validation.json', 'runtime_validation.json')}
        technical = all(r.get('sourceHash') == digest and r.get('status') in ('PASS', 'PASS_WITH_WARNINGS') for r in reports.values())
        quality = reports['content_quality.json']
        technical = technical and quality['publishableByAutomatedQualityGate']
        semantic = quality.get('manualReview', {})
        lessons.append({'lessonKey': record['lesson']['lessonKey'], 'sourceHash': digest,
                        'technicalComplete': technical, 'automatedQualityScore': quality['automatedScore'],
                        'modelTextReviewComplete': semantic.get('status') == 'PASS' and semantic.get('reviewerType') == 'model' and semantic.get('sourceHash') == digest,
                        'semanticReviewAverage': semantic.get('average'),
                        'pendingDecisionCount': len(quality['pendingDecisions']), 'finalReviewComplete': False})
    status.update(pilotLessons=lessons, technicallyCompleteLessons=sum(x['technicalComplete'] for x in lessons),
                  nextLesson=len(lessons) + 1, publishedLessons=0, bulkGenerationEnabled=False)
    status['modelTextReviewedLessons'] = sum(x['modelTextReviewComplete'] for x in lessons)
    status['learnerValidationComplete'] = False
    first = lessons[0]
    status.update(lesson1AutomatedQualityScore=first['automatedQualityScore'],
                  lesson1PendingDecisionCount=first['pendingDecisionCount'],
                  lesson1MysqlValidated=first['technicalComplete'], lesson1AudioValidated=first['technicalComplete'],
                  lesson1FinalReviewComplete=False)
    save(path, status)


if __name__ == '__main__':
    p = argparse.ArgumentParser()
    p.add_argument('--repo-root', type=Path, default=Path('.'))
    update(p.parse_args().repo_root.resolve())

"""Contract checks for text-only samples, not CEFR certification or semantic grading."""
import hashlib
import json
from collections import Counter
from pathlib import Path
from build_pilot import discover


def check(root):
    directory=root/'nova/calibration/en-fa'
    index=json.loads((directory/'index.json').read_text())
    # Freeze the calibration corpus; new runtime Lessons must not silently
    # enter it or make the 25-sample benchmark block future authoring.
    keys=index['canonicalLessonKeys']
    by_key={r['lesson']['lessonKey']:r for r in discover(root)}
    canonical=[by_key[key] for key in keys]
    seen={}; last={}; errors=[]; evidence=[]
    for position,record in enumerate(canonical,1):
        story=record['lesson']['curriculum']['story'];cast=set(story['participants'])
        seen[record['lesson']['lessonKey']]=(position,cast)
        for person in cast:last[person]=position
    levels=Counter()
    for entry in index['samples']:
        path=root/'nova'/entry['path']; data=json.loads(path.read_text());key=data['sampleKey']
        position=data['story']['calibrationPosition'];cast=set(data['story']['participants'])
        try:
            assert data['format']=='nova-calibration-1' and data['runtimeEligible'] is False and entry['runtimeEligible'] is False
            assert key not in seen and key==entry['sampleKey'] and entry['level']==data['level']
            assert len(cast)==2 and data['story']['learnerRoleKey'] in cast
            assert {t['speakerKey'] for t in data['turns']}==cast and all(t['textEn'].strip() for t in data['turns'])
            assert all(position-last.get(person,-100)>=5 for person in cast),'early cast return'
            assert data['story']['continues'] in seen and seen[data['story']['continues']][1]==cast
            assert data['prerequisiteKnowledge'] and data['review']['learnerTested'] is False and data['review']['audioGenerated'] is False
            task=next(a for a in data['activities'] if a['type']=='reading_choice')
            assert len(task['optionsFa'])==len(task['feedbackFa'])==3 and len(set(task['optionsFa']))==3
            assert 0<=task['answerIndex']<3 and all(task['feedbackFa'])
            production=data['activities'][-1]
            assert production['exampleVisibility']=='after_submission_or_explicit_help' and production['rubric']
            if data['level'] not in {'A1'}: assert production['evaluation']=='model_or_teacher_required'
            if data['level']=='C2': assert len(data['sources'])>=2 and all(s['textEn'] for s in data['sources'])
            if production.get('wordRange'):
                low,high=production['wordRange']
                examples=[x['textEn'] for x in production.get('exampleResponses',[])] or [production['exampleAnswerEn']]
                assert all(low<=len(x.split())<=high for x in examples),'model answer outside requested word range'
        except (AssertionError, KeyError, TypeError) as e:
            errors.append({'sampleKey':key,'error':str(e) or 'invalid sample contract'})
        levels[data['level']]+=1;seen[key]=(position,cast)
        for person in cast:last[person]=position
        evidence.append({'sampleKey':key,'sourceHash':hashlib.sha256(path.read_bytes()).hexdigest()})
    if levels != Counter({x:2 for x in ['A1','A2','B1','B2','C1','C2']}) or len(canonical)+len(evidence)!=25:
        errors.append({'error':'Expected 13 canonical Lessons and 12 distinct six-level calibration samples'})
    return {'status':'FAIL' if errors else 'PASS','scope':'contract_only_not_CEFR_or_effectiveness_validation','canonicalLessons':len(canonical),'calibrationSamples':len(evidence),'errors':errors,'sources':evidence}


if __name__=='__main__':
    root=Path(__file__).resolve().parents[4]
    report=check(root)
    print(json.dumps(report,ensure_ascii=False,indent=2))
    raise SystemExit(0 if report['status']=='PASS' else 2)

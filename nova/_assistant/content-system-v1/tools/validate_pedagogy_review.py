"""Validate explicit model/editor review evidence; never infer semantic scores from code."""
import hashlib
import json
from pathlib import Path


def read_review(source, course_path, policy):
    path = source.with_name('pedagogy.review.json')
    if not path.is_file():
        return {'status': 'PENDING', 'errors': ['Semantic review has not been recorded.']}
    data = json.loads(path.read_text())
    errors = []
    for key, file in [('sourceHash', source), ('courseSourceHash', course_path)]:
        if data.get(key) != hashlib.sha256(file.read_bytes()).hexdigest():
            errors.append(f'Stale semantic review: {key}')
    lesson = json.loads(source.read_text())
    if data.get('lessonKey') != lesson['lessonKey'] or data.get('reviewerType') not in {'model', 'human'}:
        errors.append('Review identity/type is missing or mismatched.')
    scores = []
    for key in policy['manualReview']['dimensions']:
        item = data.get('dimensions', {}).get(key, {})
        score = item.get('score')
        if type(score) not in {int, float} or not 0 <= score <= 5 or not str(item.get('evidence', '')).strip():
            errors.append(f'Missing score/evidence: {key}')
        else:
            scores.append(score)
    average = sum(scores) / len(scores) if scores else 0
    if average < policy['manualReview']['minimumAverage'] or any(x < policy['manualReview']['minimumDimension'] for x in scores):
        errors.append('Semantic review is below the quality threshold.')
    if not data.get('limitations') or type(data.get('learnerTested')) is not bool:
        errors.append('Review must state its limitations and whether learner testing occurred.')
    if data.get('learnerTested') is True and not data.get('learnerEvidence'):
        errors.append('A learner-tested claim requires explicit evidence.')
    return {**data, 'status': 'FAIL' if errors else 'PASS', 'average': round(average, 2), 'errors': errors}

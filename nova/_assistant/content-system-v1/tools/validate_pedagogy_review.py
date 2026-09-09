"""Validate explicit model/editor review evidence; never infer semantic scores from code."""
import hashlib
import json
from pathlib import Path

SYSTEM = Path(__file__).resolve().parents[1]
MIGRATIONS = SYSTEM / 'pedagogy_review_migrations.json'


def _migration_allows(lesson_key, review_hash, current_hash):
    if not MIGRATIONS.is_file():
        return False
    data = json.loads(MIGRATIONS.read_text(encoding='utf-8'))
    for item in data.get('migrations', []):
        if (
            item.get('lessonKey') == lesson_key
            and item.get('reviewSourceHash') == review_hash
            and item.get('currentSourceHash') == current_hash
        ):
            return True
    return False


def read_review(source, course_path, policy):
    path = source.with_name('pedagogy.review.json')
    if not path.is_file():
        return {'status': 'PENDING', 'errors': ['Semantic review has not been recorded.']}
    data = json.loads(path.read_text())
    errors = []
    lesson = json.loads(source.read_text())
    current_source_hash = hashlib.sha256(source.read_bytes()).hexdigest()
    if data.get('sourceHash') != current_source_hash and not _migration_allows(
        lesson.get('lessonKey'), data.get('sourceHash'), current_source_hash
    ):
        errors.append('Stale semantic review: sourceHash')
    current_course_hash = hashlib.sha256(course_path.read_bytes()).hexdigest()
    if data.get('courseSourceHash') != current_course_hash:
        errors.append('Stale semantic review: courseSourceHash')
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

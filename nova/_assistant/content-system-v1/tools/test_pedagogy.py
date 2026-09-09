import copy
import hashlib
import json
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch
from build_pilot import build, discover
from validate_content_quality import evaluate
from validate_pedagogy_review import read_review
from validate_calibration import check as check_calibration

ROOT = Path(__file__).resolve().parents[4]
SYSTEM = Path(__file__).resolve().parents[1]


class PedagogyTests(unittest.TestCase):
    def setUp(self):
        self.policy = json.loads((SYSTEM / 'content_quality.policy.json').read_text())
        self.records = discover(ROOT)
        self.lesson = copy.deepcopy(self.records[0]['lesson'])

    def codes(self):
        return {e['code'] for e in evaluate(self.lesson, self.policy)['errors']}

    def test_current_lessons_have_reviewed_hidden_retrieval(self):
        for record in self.records:
            lesson_key = record['lesson']['lessonKey']
            with self.subTest(lessonKey=lesson_key):
                self.assertTrue(
                    evaluate(record['lesson'], self.policy)['publishableByAutomatedQualityGate'],
                    f'{lesson_key}: automated quality gate failed',
                )
                review = read_review(record['source'], record['coursePath'], self.policy)
                self.assertEqual(
                    review['status'],
                    'PASS',
                    f"{lesson_key}: pedagogy review failed: {review.get('errors', [])}",
                )

    def test_no_retrieval_rejected(self):
        self.lesson['activities'] = self.lesson['activities'][:-1]
        self.assertIn('CQ-H13', self.codes())

    def test_visible_answer_and_missing_acceptance_rejected(self):
        a = self.lesson['activities'][-1]
        a['config']['showAnswerTextBeforeAttempt'] = True
        a['config']['acceptedAnswersEn'] = []
        self.assertTrue({'CQ-H13','CQ-H09'} <= self.codes())

    def test_padded_feedback_rejected(self):
        a = next(a for a in self.lesson['activities'] if a['type'] == 'fill_blank')
        a['config']['feedback']['optionsFa'] = ['Try again'] * 3
        self.assertIn('CQ-H14', self.codes())

    def test_two_piece_reconstruction_rejected(self):
        a = next(a for a in self.lesson['activities'] if a['type'] == 'sentence_order')
        a['config']['tokensEn'] = ['Yes,','please.']
        self.assertIn('CQ-H15', self.codes())

    def test_stale_and_low_semantic_review_rejected(self):
        record = self.records[0]
        with tempfile.TemporaryDirectory() as td:
            source = Path(td) / 'lesson.source.json'
            source.write_bytes(record['source'].read_bytes())
            report = json.loads(record['source'].with_name('pedagogy.review.json').read_text())
            report['sourceHash'] = '0' * 64
            source.with_name('pedagogy.review.json').write_text(json.dumps(report))
            self.assertEqual(read_review(source, record['coursePath'], self.policy)['status'], 'FAIL')
            report['sourceHash'] = hashlib.sha256(source.read_bytes()).hexdigest()
            source.with_name('pedagogy.review.json').write_text(json.dumps(report))
            report['dimensions']['distractorQuality']['score'] = 2
            source.with_name('pedagogy.review.json').write_text(json.dumps(report))
            self.assertEqual(read_review(source, record['coursePath'], self.policy)['status'], 'FAIL')

    def test_preflight_failure_never_spends_on_audio(self):
        with patch('build_pilot.check_text', side_effect=ValueError('invalid option meaning')), patch('build_pilot.generate') as audio, patch('build_pilot.save'):
            report = build(ROOT, text_workers=2)
            self.assertEqual(report['status'], 'FAIL')
            self.assertFalse(report['measuresAuthoringTime'])
            audio.assert_not_called()

    def test_new_runtime_lesson_does_not_change_calibration_corpus(self):
        extra = copy.deepcopy(self.records[-1])
        extra['lesson']['lessonKey'] = 'EN-A1-L-9999'
        with patch('validate_calibration.discover', return_value=[*self.records,extra]):
            report = check_calibration(ROOT)
            self.assertEqual(report['status'], 'PASS')
            self.assertEqual(report['canonicalLessons'], 13)


if __name__ == '__main__':
    unittest.main()

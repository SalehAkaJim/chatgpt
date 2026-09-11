#!/usr/bin/env python3
from __future__ import annotations

import unittest

from validate_lesson_curriculum_spec import validate_against_spec


class LessonCurriculumSpecValidationTests(unittest.TestCase):
    @staticmethod
    def lesson(grammar_key: str) -> dict:
        return {
            "lessonKey": "EN-A1-L-0152",
            "sortOrder": 152,
            "curriculum": {
                "languageReference": {
                    "specHash": "live-spec-hash",
                    "grammarTargetKeys": [grammar_key],
                }
            },
            "lexicalItems": [],
        }

    @staticmethod
    def spec(review_grammar: list[dict] | None = None) -> dict:
        return {
            "sortOrder": 152,
            "specKey": "en-fa-A1-LESSON-SPEC-0152",
            "specHash": "live-spec-hash",
            "policy": {"maxNewLexicalTargets": 3},
            "lexicalCandidates": [],
            "grammarCandidates": [{"grammarKey": "OTHER-GRAMMAR"}],
            "reviewDue": {
                "lexical": [],
                "grammar": review_grammar or [],
            },
        }

    def test_reconciled_provisional_target_is_allowed(self):
        report = validate_against_spec(
            self.lesson("CEFRJ-GRAM-58-2"),
            self.spec([{
                "grammarKey": "CEFRJ-GRAM-58-2",
                "integrationStatus": "provisional_target_already_introduced",
            }]),
        )
        self.assertEqual(report["status"], "PASS")
        self.assertFalse(report["errors"])
        self.assertTrue(any("provisionally reserved" in x for x in report["warnings"]))

    def test_unmarked_review_grammar_does_not_bypass_candidate_gate(self):
        report = validate_against_spec(
            self.lesson("CEFRJ-GRAM-58-2"),
            self.spec([{"grammarKey": "CEFRJ-GRAM-58-2"}]),
        )
        self.assertEqual(report["status"], "FAIL")
        self.assertTrue(any("committed grammar candidate set" in x for x in report["errors"]))


if __name__ == "__main__":
    unittest.main(verbosity=2)

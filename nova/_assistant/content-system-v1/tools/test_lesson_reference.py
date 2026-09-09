#!/usr/bin/env python3
from __future__ import annotations

import tempfile
import unittest
from pathlib import Path

from reference_catalog import ReferenceCatalog
from validate_lesson_reference import validate_lesson_reference


class LessonReferencePolicyTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        root = Path(self.temp.name)
        lexical = root / "nova/reference/en-fa/lexical"
        grammar = root / "nova/reference/en-fa/grammar"
        lexical.mkdir(parents=True)
        grammar.mkdir(parents=True)
        (root / "nova/reference/en-fa/.production-ready").write_text("reference-layer-v1\nvalidated=true\nquality-threshold=90\n", encoding="utf-8")
        (root / "nova/reference/en-fa/manifest.json").write_text(
            '{"schemaVersion":1,"courseCode":"en-fa","qualityThreshold":90}', encoding="utf-8"
        )
        (lexical / "A1.json").write_text(
            '''{
  "schemaVersion": 1,
  "courseCode": "en-fa",
  "level": "A1",
  "items": [
    {
      "referenceKey": "EN-REF-HELLO",
      "lemma": "hello",
      "partOfSpeech": "interjection",
      "definitionEn": "used as a greeting",
      "translationFa": "سلام",
      "senseId": "hello-1",
      "qualityScore": 100,
      "curriculumEligible": true,
      "productionEligible": true,
      "flags": []
    },
    {
      "referenceKey": "EN-REF-HELLO-REVIEW",
      "lemma": "hello",
      "partOfSpeech": "noun",
      "definitionEn": "an expression of greeting",
      "translationFa": "سلام",
      "senseId": "hello-2",
      "qualityScore": 85,
      "curriculumEligible": false,
      "productionEligible": false,
      "flags": ["review_only"]
    }
  ]
}''',
            encoding="utf-8",
        )
        for level in ("A2", "B1", "B2", "C1", "C2"):
            (lexical / f"{level}.json").write_text(
                f'{{"schemaVersion":1,"courseCode":"en-fa","level":"{level}","items":[]}}', encoding="utf-8"
            )
        for level in ("A1", "A2", "B1", "B2", "C1", "C2"):
            (grammar / f"{level}.json").write_text(
                f'{{"schemaVersion":1,"courseCode":"en-fa","level":"{level}","items":[]}}', encoding="utf-8"
            )
        self.catalog = ReferenceCatalog(root, "en-fa")

    def tearDown(self):
        self.temp.cleanup()

    @staticmethod
    def lesson(sort_order: int, lexical_items: list[dict]) -> dict:
        return {
            "lessonKey": f"EN-A1-L-{sort_order:04d}",
            "levelKey": "A1",
            "sortOrder": sort_order,
            "lexicalItems": lexical_items,
        }

    def test_lesson_21_target_word_requires_selected_reference_sense(self):
        report = validate_lesson_reference(
            self.lesson(21, [{
                "lexicalKey": "EN-LEX-HELLO-01",
                "itemType": "word",
                "displayForm": "hello",
                "lemma": "hello",
                "partOfSpeech": "interjection",
                "translationFa": "سلام",
                "role": "target",
            }]),
            self.catalog,
        )
        self.assertEqual(report["status"], "FAIL")
        self.assertIn("metadata.referenceKey", report["errors"][0])

    def test_lesson_21_wrong_reference_link_fails(self):
        report = validate_lesson_reference(
            self.lesson(21, [{
                "lexicalKey": "EN-LEX-HELLO-01",
                "itemType": "word",
                "displayForm": "hello",
                "lemma": "hello",
                "partOfSpeech": "interjection",
                "translationFa": "سلام",
                "role": "target",
                "metadata": {"referenceKey": "EN-REF-WRONG"},
            }]),
            self.catalog,
        )
        self.assertEqual(report["status"], "FAIL")
        self.assertIn("does not resolve", report["errors"][0])

    def test_lesson_21_target_word_requires_selected_reference_sense_success(self):
        report = validate_lesson_reference(
            self.lesson(21, [{
                "lexicalKey": "EN-LEX-HELLO-01",
                "itemType": "word",
                "displayForm": "hello",
                "lemma": "hello",
                "partOfSpeech": "interjection",
                "translationFa": "سلام",
                "role": "target",
                "metadata": {"referenceKey": "EN-REF-HELLO"},
            }]),
            self.catalog,
        )
        self.assertEqual(report["status"], "PASS")
        self.assertEqual(report["items"][0]["status"], "linked_exact_production_match")

    def test_lesson_21_pos_mismatch_fails_even_when_lemma_exists(self):
        report = validate_lesson_reference(
            self.lesson(21, [{
                "lexicalKey": "EN-LEX-HELLO-01",
                "itemType": "word",
                "displayForm": "hello",
                "lemma": "hello",
                "partOfSpeech": "noun",
                "translationFa": "سلام",
                "role": "target",
                "metadata": {"referenceKey": "EN-REF-HELLO"},
            }]),
            self.catalog,
        )
        self.assertEqual(report["status"], "FAIL")
        self.assertIn("no exact production-eligible", report["errors"][0])

    def test_lesson_21_missing_reference_link_fails_even_when_candidate_exists(self):
        report = validate_lesson_reference(
            self.lesson(21, [{
                "lexicalKey": "EN-LEX-HELLO-01",
                "itemType": "word",
                "displayForm": "hello",
                "lemma": "hello",
                "partOfSpeech": "interjection",
                "translationFa": "سلام",
                "role": "target",
                "metadata": {"referenceKey": "EN-REF-HELLO-REVIEW"},
            }]),
            self.catalog,
        )
        self.assertEqual(report["status"], "FAIL")
        self.assertIn("does not resolve", report["errors"][0])

    def test_existing_lessons_are_audited_but_not_retroactively_blocked(self):
        report = validate_lesson_reference(
            self.lesson(20, [{
                "lexicalKey": "EN-LEX-MISSING-01",
                "itemType": "word",
                "displayForm": "missing",
                "lemma": "missing",
                "partOfSpeech": "adjective",
                "translationFa": "گمشده",
                "role": "target",
            }]),
            self.catalog,
        )
        self.assertEqual(report["status"], "PASS")
        self.assertFalse(report["enforced"])
        self.assertTrue(report["warnings"])

    def test_multiword_formula_cannot_bypass_word_semantics_as_expression(self):
        """Compositional/social phrases stay in construction/turn layers, not words."""
        report = validate_lesson_reference(
            self.lesson(21, [{
                "lexicalKey": "EN-LEX-THANK-YOU-01",
                "itemType": "expression",
                "displayForm": "thank you",
                "lemma": "thank you",
                "partOfSpeech": "formula",
                "translationFa": "ممنون",
                "role": "target",
            }]),
            self.catalog,
        )
        self.assertEqual(report["status"], "FAIL")
        self.assertEqual(report["items"][0]["status"], "no_exact_production_match")
        self.assertIn("has no exact production-eligible", report["errors"][0])

    def test_true_reference_gap_word_may_use_explicit_nova_fallback(self):
        report = validate_lesson_reference(
            self.lesson(21, [{
                "lexicalKey": "EN-LEX-ONE-01",
                "itemType": "word",
                "displayForm": "one",
                "lemma": "one",
                "partOfSpeech": "number",
                "translationFa": "یک",
                "role": "target",
                "metadata": {
                    "source": "nova_authored_curriculum_word",
                    "referenceGap": True,
                    "referenceGapReason": "The pinned reference snapshot has no exact A1 numeral sense."
                },
            }]),
            self.catalog,
        )
        self.assertEqual(report["status"], "PASS")
        self.assertEqual(report["items"][0]["status"], "nova_authored_reference_gap_word")


if __name__ == "__main__":
    unittest.main(verbosity=2)

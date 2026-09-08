#!/usr/bin/env python3
from __future__ import annotations

import json
import tempfile
import unittest
from pathlib import Path

from reference_catalog import ReferenceCatalog
from validate_lesson_reference import validate_lesson_reference


class LessonReferencePolicyTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.root = Path(self.temp.name)
        ref = self.root / "nova/reference/en-fa"
        (ref / "lexical").mkdir(parents=True)
        (ref / "grammar").mkdir(parents=True)
        (ref / "manifest.json").write_text(json.dumps({"courseCode": "en-fa", "qualityThreshold": 90}), encoding="utf-8")
        for level in ("A1", "A2", "B1", "B2", "C1", "C2"):
            items = []
            if level == "A1":
                items = [
                    {
                        "referenceKey": "EN-REF-WATER",
                        "lemma": "water",
                        "partOfSpeech": "noun",
                        "translationFa": "آب",
                        "topics": ["drink"],
                        "frequencyRank": 100,
                        "qualityScore": 100,
                        "productionEligible": True,
                        "curriculumEligible": True,
                        "senseOrder": 1,
                    },
                    {
                        "referenceKey": "EN-REF-HELLO-REVIEW",
                        "lemma": "hello",
                        "partOfSpeech": "noun",
                        "translationFa": "سلام",
                        "topics": [],
                        "frequencyRank": 200,
                        "qualityScore": 100,
                        "productionEligible": True,
                        "curriculumEligible": True,
                        "senseOrder": 1,
                    },
                ]
            (ref / "lexical" / f"{level}.json").write_text(
                json.dumps({"level": level, "items": items}), encoding="utf-8"
            )
            (ref / "grammar" / f"{level}.json").write_text(
                json.dumps({"level": level, "items": []}), encoding="utf-8"
            )
        self.catalog = ReferenceCatalog(self.root)

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

    def test_lesson_21_target_word_requires_exact_production_match(self):
        report = validate_lesson_reference(
            self.lesson(21, [{
                "lexicalKey": "EN-LEX-WATER-01",
                "itemType": "word",
                "displayForm": "water",
                "lemma": "water",
                "partOfSpeech": "noun",
                "translationFa": "آب",
                "role": "target",
            }]),
            self.catalog,
        )
        self.assertEqual(report["status"], "PASS")
        self.assertEqual(report["items"][0]["status"], "exact_production_match")

    def test_lesson_21_pos_mismatch_fails_even_when_lemma_exists(self):
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
        self.assertIn("no exact production-eligible", report["errors"][0])

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

    def test_multiword_target_remains_nova_authored(self):
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
        self.assertEqual(report["status"], "PASS")
        self.assertEqual(report["items"][0]["status"], "nova_authored_multiword")


if __name__ == "__main__":
    unittest.main(verbosity=2)

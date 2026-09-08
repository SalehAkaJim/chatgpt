#!/usr/bin/env python3
from __future__ import annotations

import json
import tempfile
import unittest
from pathlib import Path

from reference_catalog import ReferenceCatalog


class ReferenceCatalogTests(unittest.TestCase):
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
                    {"lemma": "coffee", "partOfSpeech": "noun", "topics": ["drink"], "frequencyRank": 200,
                     "qualityScore": 100, "productionEligible": True, "curriculumEligible": True, "senseOrder": 1},
                    {"lemma": "coffee", "partOfSpeech": "noun", "topics": ["drink"], "frequencyRank": 200,
                     "qualityScore": 95, "productionEligible": True, "curriculumEligible": True, "senseOrder": 2},
                    {"lemma": "rare", "partOfSpeech": "adjective", "topics": ["quality"], "frequencyRank": 900,
                     "qualityScore": 85, "productionEligible": False, "curriculumEligible": False, "senseOrder": 1},
                    {"lemma": "water", "partOfSpeech": "noun", "topics": ["drink"], "frequencyRank": 100,
                     "qualityScore": 100, "productionEligible": True, "curriculumEligible": True, "senseOrder": 1},
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

    def test_production_query_excludes_review_only(self):
        rows = self.catalog.query_lexical(levels=["A1"], limit=20)
        self.assertEqual([r["lemma"] for r in rows], ["water", "coffee", "coffee"])
        self.assertTrue(all(r["productionEligible"] for r in rows))

    def test_topic_and_exclusion_filters(self):
        rows = self.catalog.query_lexical(levels=["A1"], topics=["drink"], exclude_lemmas=["water"], limit=20)
        self.assertEqual({r["lemma"] for r in rows}, {"coffee"})

    def test_recommend_returns_one_candidate_per_lemma(self):
        rows = self.catalog.recommend_for_lesson(level="A1", topics=["drink"], count=5)
        self.assertEqual([r["lemma"] for r in rows], ["water", "coffee"])


if __name__ == "__main__":
    unittest.main(verbosity=2)

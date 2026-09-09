from __future__ import annotations

import tempfile
import unittest
from pathlib import Path

from factory_wave import advance_provisional_state
from validation_cache import ValidationCache, validation_key


class ValidationCacheTests(unittest.TestCase):
    def test_round_trip_and_content_addressing(self):
        with tempfile.TemporaryDirectory() as tmp:
            cache = ValidationCache(Path(tmp))
            key_a = validation_key(lesson_bytes=b'{"a":1}', shared_fingerprint="a" * 64)
            key_b = validation_key(lesson_bytes=b'{"a":2}', shared_fingerprint="a" * 64)
            self.assertNotEqual(key_a, key_b)
            self.assertIsNone(cache.get("lesson-local-v1", key_a))
            cache.put("lesson-local-v1", key_a, {"status": "PASS"})
            self.assertEqual({"status": "PASS"}, cache.get("lesson-local-v1", key_a))
            self.assertIsNone(cache.get("lesson-local-v1", key_b))

    def test_corrupt_entry_is_a_cache_miss(self):
        with tempfile.TemporaryDirectory() as tmp:
            cache = ValidationCache(Path(tmp))
            key = validation_key(lesson_bytes=b"x", shared_fingerprint="b" * 64)
            path = cache._path("lesson-local-v1", key)
            path.parent.mkdir(parents=True)
            path.write_text("{not-json", encoding="utf-8")
            self.assertIsNone(cache.get("lesson-local-v1", key))


class WaveReservationTests(unittest.TestCase):
    def test_provisional_state_reserves_top_candidates(self):
        state = {
            "lastLessonSortOrder": 28,
            "knownLexical": [],
            "introducedGrammar": [],
            "lessonHistory": [],
        }
        spec = {
            "sortOrder": 29,
            "levelKey": "A1",
            "lexicalCandidates": [{"lemma": "time", "referenceKey": "REF-TIME"}],
            "grammarCandidates": [{"grammarKey": "G1", "grammaticalItem": "Present"}],
        }
        updated = advance_provisional_state(state, spec)
        self.assertEqual(29, updated["lastLessonSortOrder"])
        self.assertEqual("time", updated["knownLexical"][0]["lemma"])
        self.assertEqual("G1", updated["introducedGrammar"][0]["grammarKey"])
        self.assertEqual(29, updated["lessonHistory"][-1]["sortOrder"])
        self.assertEqual([], state["knownLexical"])
        self.assertEqual([], state["introducedGrammar"])


if __name__ == "__main__":
    unittest.main()

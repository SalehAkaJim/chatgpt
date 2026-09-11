#!/usr/bin/env python3
from __future__ import annotations

import tempfile
import unittest
from pathlib import Path

import factory_wave


class FactoryWaveScalingTests(unittest.TestCase):
    def test_worker_cap_is_fifty(self):
        self.assertEqual(factory_wave.MAX_WORKERS, 50)

    def test_fifty_packets_have_unique_worker_and_staging_paths(self):
        with tempfile.TemporaryDirectory() as td:
            root = Path(td)
            wave_dir = root / "wave"
            packets = []
            for worker_index in range(1, 51):
                order = 100 + worker_index
                spec = {
                    "sortOrder": order,
                    "levelKey": "A1",
                    "courseCode": "en-fa",
                    "specHash": f"spec-{order}",
                }
                packets.append(factory_wave.make_packet(
                    wave_key="scale-test",
                    worker_index=worker_index,
                    spec=spec,
                    wave_dir=wave_dir,
                    root=root,
                ))

            self.assertEqual(len({p["workerId"] for p in packets}), 50)
            self.assertEqual(len({p["stagingPath"] for p in packets}), 50)
            self.assertEqual(len({p["canonicalPath"] for p in packets}), 50)
            self.assertEqual(packets[-1]["workerId"], "w50")

    def test_provisional_state_can_reserve_fifty_distinct_targets(self):
        state = {
            "lastLessonSortOrder": 100,
            "knownLexical": [],
            "introducedGrammar": [],
            "lessonHistory": [],
        }
        for offset in range(1, 51):
            order = 100 + offset
            spec = {
                "sortOrder": order,
                "levelKey": "A1",
                "lexicalCandidates": [{
                    "lemma": f"word-{offset}",
                    "referenceKey": f"lex-{offset}",
                }],
                "grammarCandidates": [{
                    "grammarKey": f"grammar-{offset}",
                    "grammaticalItem": f"Grammar {offset}",
                }],
            }
            state = factory_wave.advance_provisional_state(state, spec)

        self.assertEqual(state["lastLessonSortOrder"], 150)
        self.assertEqual(len(state["knownLexical"]), 50)
        self.assertEqual(len(state["introducedGrammar"]), 50)
        self.assertEqual(len(state["lessonHistory"]), 50)


if __name__ == "__main__":
    unittest.main()

#!/usr/bin/env python3
from __future__ import annotations

import tempfile
import unittest
from pathlib import Path

import curriculum_engine
import factory_wave


class _PatternCatalog:
    def __init__(self):
        self._items = [
            {"grammarKey": "CEFRJ-GRAM-58", "shorthandCode": "TA.PRESENT.be.AFF", "grammaticalItem": "PRESENT BE"},
            {"grammarKey": "CEFRJ-GRAM-58-2", "shorthandCode": "TA.PRESENT.be.INT.AFF", "grammaticalItem": "PRESENT BE QUESTION"},
            {"grammarKey": "CEFRJ-GRAM-58-1", "shorthandCode": "TA.PRESENT.be.NEG", "grammaticalItem": "PRESENT BE NEGATIVE"},
            {"grammarKey": "CEFRJ-GRAM-60", "shorthandCode": "TA.PRESENT.does.AFF", "grammaticalItem": "PRESENT THIRD PERSON"},
            {"grammarKey": "CEFRJ-GRAM-247", "shorthandCode": "INT.how_JJ.RB", "grammaticalItem": "HOW ADJ ADV"},
            {"grammarKey": "CEFRJ-GRAM-146", "shorthandCode": "EX.there.AFF", "grammaticalItem": "THERE BE"},
            {"grammarKey": "CEFRJ-GRAM-105", "shorthandCode": "VG", "grammaticalItem": "V ING"},
            {"grammarKey": "CEFRJ-GRAM-117", "shorthandCode": "IMP.V.AFF", "grammaticalItem": "IMPERATIVE"},
        ]

    def grammar_items(self, level):
        return self._items

    @staticmethod
    def normalized_grammar_text(text):
        return " ".join(
            text.lower().replace("?", "").replace(".", "").replace(",", "").split()
        )


class FactoryWaveScalingTests(unittest.TestCase):
    def test_worker_cap_is_fifty(self):
        self.assertEqual(factory_wave.MAX_WORKERS, 50)

    def test_default_worker_count_comes_from_config(self):
        self.assertEqual(factory_wave.resolve_worker_count({"waveSize": 20}), 20)
        self.assertEqual(factory_wave.resolve_worker_count({"waveSize": 20}, 50), 50)
        self.assertEqual(factory_wave.resolve_worker_count({"waveSize": 20}, 99), 50)

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

    def test_reserved_a1_grammar_patterns_are_detected_from_real_surfaces(self):
        catalog = _PatternCatalog()
        cases = [
            ("This is an example.", set(), "CEFRJ-GRAM-58"),
            ("Is it a game?", set(), "CEFRJ-GRAM-58-2"),
            ("That is not our team.", set(), "CEFRJ-GRAM-58-1"),
            ("He hears the music too.", {"hear"}, "CEFRJ-GRAM-60"),
            ("How big is the world?", set(), "CEFRJ-GRAM-247"),
            ("There is a new word.", set(), "CEFRJ-GRAM-146"),
            ("Someone is waiting outside.", set(), "CEFRJ-GRAM-105"),
            ("Ask the student.", set(), "CEFRJ-GRAM-117"),
        ]
        for text, lesson_verbs, expected in cases:
            with self.subTest(text=text):
                keys = {
                    row["grammarKey"]
                    for row in curriculum_engine._special_surface_matches(
                        catalog,
                        level="A1",
                        text=text,
                        lesson_verbs=lesson_verbs,
                    )
                }
                self.assertIn(expected, keys)

    def test_still_eligible_provisional_grammar_survives_top_n_ranking_drift(self):
        lesson = {
            "curriculum": {
                "languageReference": {
                    "specKey": "old",
                    "specHash": "old-hash",
                    "grammarTargetKeys": ["GRAM-PROVISIONAL"],
                }
            }
        }
        live_spec = {
            "specKey": "live-spec",
            "specHash": "live-hash",
            "grammarCandidates": [{"grammarKey": "GRAM-LIVE"}],
        }
        provisional_spec = {
            "specKey": "provisional-spec",
            "specHash": "provisional-hash",
            "grammarCandidates": [{
                "grammarKey": "GRAM-PROVISIONAL",
                "grammaticalItem": "Example grammar",
                "missingPrerequisiteKeys": [],
            }],
        }
        reconciled, bound_spec = factory_wave.reconcile_live_spec_metadata(
            lesson,
            live_spec,
            {"introducedGrammar": []},
            provisional_spec=provisional_spec,
            eligible_grammar_keys={"GRAM-PROVISIONAL"},
        )

        language_ref = reconciled["curriculum"]["languageReference"]
        self.assertEqual(language_ref["grammarTargetKeys"], ["GRAM-PROVISIONAL"])
        self.assertEqual(
            language_ref["integrationRetainedProvisionalGrammarKeys"],
            ["GRAM-PROVISIONAL"],
        )
        self.assertEqual(language_ref["specHash"], bound_spec["specHash"])
        self.assertNotEqual(bound_spec["specHash"], "live-hash")
        self.assertIn(
            "GRAM-PROVISIONAL",
            {x["grammarKey"] for x in bound_spec["grammarCandidates"]},
        )
        self.assertEqual(
            bound_spec["integrationReconciliation"]["mode"],
            "retain_still_eligible_provisional_grammar",
        )

    def test_ineligible_provisional_grammar_is_not_retained(self):
        lesson = {
            "curriculum": {
                "languageReference": {
                    "grammarTargetKeys": ["GRAM-BAD"],
                }
            }
        }
        live_spec = {
            "specKey": "live-spec",
            "specHash": "live-hash",
            "grammarCandidates": [{"grammarKey": "GRAM-LIVE"}],
        }
        provisional_spec = {
            "specKey": "provisional-spec",
            "specHash": "provisional-hash",
            "grammarCandidates": [{"grammarKey": "GRAM-BAD"}],
        }
        reconciled, bound_spec = factory_wave.reconcile_live_spec_metadata(
            lesson,
            live_spec,
            {"introducedGrammar": []},
            provisional_spec=provisional_spec,
            eligible_grammar_keys=set(),
        )

        language_ref = reconciled["curriculum"]["languageReference"]
        self.assertEqual(language_ref["grammarTargetKeys"], ["GRAM-BAD"])
        self.assertNotIn("integrationRetainedProvisionalGrammarKeys", language_ref)
        self.assertEqual(bound_spec["specHash"], "live-hash")


if __name__ == "__main__":
    unittest.main()

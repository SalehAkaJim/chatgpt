#!/usr/bin/env python3
from __future__ import annotations

import unittest

from factory_wave import reconcile_live_spec_metadata


class FactoryWaveReconciliationTests(unittest.TestCase):
    def test_introduced_provisional_grammar_becomes_consolidation(self):
        lesson = {
            "curriculum": {
                "languageReference": {
                    "grammarTargetKeys": ["G-OLD"],
                }
            }
        }
        live_spec = {
            "specKey": "spec-152",
            "specHash": "hash-152",
            "grammarCandidates": [{"grammarKey": "G-NEW"}],
        }
        state = {
            "introducedGrammar": [{"grammarKey": "G-OLD"}],
        }

        reconciled = reconcile_live_spec_metadata(lesson, live_spec, state)
        ref = reconciled["curriculum"]["languageReference"]

        self.assertEqual(ref["grammarTargetKeys"], [])
        self.assertEqual(ref["integrationReconciledGrammarKeys"], ["G-OLD"])
        self.assertTrue(ref["noNewGrammarReason"])
        self.assertEqual(ref["specKey"], "spec-152")
        self.assertEqual(ref["specHash"], "hash-152")

    def test_unintroduced_candidate_drift_stays_strict(self):
        lesson = {
            "curriculum": {
                "languageReference": {
                    "grammarTargetKeys": ["G-DRIFT"],
                }
            }
        }
        live_spec = {
            "specKey": "spec-153",
            "specHash": "hash-153",
            "grammarCandidates": [{"grammarKey": "G-LIVE"}],
        }
        state = {"introducedGrammar": []}

        reconciled = reconcile_live_spec_metadata(lesson, live_spec, state)
        ref = reconciled["curriculum"]["languageReference"]

        self.assertEqual(ref["grammarTargetKeys"], ["G-DRIFT"])
        self.assertNotIn("noNewGrammarReason", ref)
        self.assertNotIn("integrationReconciledGrammarKeys", ref)


if __name__ == "__main__":
    unittest.main()

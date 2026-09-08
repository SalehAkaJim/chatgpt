#!/usr/bin/env python3
from __future__ import annotations

import unittest

from reference_data import (
    build_cefr_indexes,
    is_curriculum_eligible,
    is_production_eligible,
    normalize_persian,
    parse_grammar_csv,
    parse_profile_csv,
    resolve_cefr,
    score_reference_record,
)


class ReferenceDataTests(unittest.TestCase):
    def test_cefr_exact_pos_overrides_openjam_frequency_band(self):
        base = parse_profile_csv("headword,pos,CEFR\nbank,noun,B1\nrun,verb,A1\n", source="cefrj")
        c1c2 = parse_profile_csv("headword,pos,CEFR,notes\nconcur,verb,C1,\n", source="octanove")
        exact, lemma = build_cefr_indexes(base, c1c2)
        r = resolve_cefr("bank", "noun", "A1", exact, lemma)
        self.assertEqual(r["level"], "B1")
        self.assertEqual(r["source"], "cefrj_exact_pos")
        self.assertTrue(is_curriculum_eligible(r))

    def test_cefr_openjam_fallback_is_retained_but_not_production_confident(self):
        exact, lemma = build_cefr_indexes([])
        r = resolve_cefr("unlisted", "noun", "A2", exact, lemma)
        self.assertEqual(r["level"], "A2")
        self.assertEqual(r["source"], "openjam_frequency_band")
        self.assertFalse(is_curriculum_eligible(r))
        record = {
            "translationFa": "نمونه",
            "definitionEn": "an example",
            "partOfSpeech": "noun",
            "cefr": r["level"],
            "cefrSource": r["source"],
            "cefrConflict": False,
            "curriculumEligible": False,
        }
        score, flags = score_reference_record(record)
        record["qualityScore"] = score
        self.assertEqual(score, 85)
        self.assertLess(score, 90)
        self.assertIn("cefr_frequency_fallback", flags)
        self.assertFalse(is_production_eligible(record, 90))

    def test_conflicting_exact_cefr_is_never_curriculum_or_production_eligible(self):
        base = parse_profile_csv(
            "headword,pos,CEFR\nexample,noun,A1\nexample,noun,A2\n",
            source="cefrj",
        )
        exact, lemma = build_cefr_indexes(base)
        r = resolve_cefr("example", "noun", "A1", exact, lemma)
        self.assertTrue(r["conflict"])
        self.assertEqual(r["evidenceLevels"], ["A1", "A2"])
        self.assertFalse(is_curriculum_eligible(r))
        record = {
            "translationFa": "نمونه",
            "definitionEn": "a representative instance",
            "partOfSpeech": "noun",
            "cefr": r["level"],
            "cefrSource": r["source"],
            "cefrConflict": True,
            "curriculumEligible": False,
        }
        score, flags = score_reference_record(record)
        record["qualityScore"] = score
        self.assertEqual(score, 95)
        self.assertIn("cefr_conflict", flags)
        self.assertFalse(is_production_eligible(record, 90))

    def test_persian_normalization_and_gate(self):
        self.assertEqual(normalize_persian("كتاب يک"), "کتاب یک")
        record = {
            "translationFa": "مسئله",
            "definitionEn": "a matter",
            "partOfSpeech": "noun",
            "cefr": "A2",
            "cefrSource": "cefrj_exact_pos",
            "cefrConflict": False,
        }
        score, flags = score_reference_record(record)
        self.assertLess(score, 90)
        self.assertTrue(any(f.startswith("persian_orthography_review:") for f in flags))

    def test_grammar_level_resolution(self):
        text = (
            "ID,Shorthand Code,Grammatical Item,Sentence Type,CEFR-J Level,FREQ*DISP,Core Inventory,EGP,GSELO,Notes\n"
            "1,PP.I_am,I am,AFF. DEC.,A1.1,A1,A1,A1,A1,\n"
        )
        rows = parse_grammar_csv(text)
        self.assertEqual(rows[0]["cefr"], "A1")
        self.assertEqual(rows[0]["shorthandCode"], "PP.I_am")


if __name__ == "__main__":
    unittest.main(verbosity=2)

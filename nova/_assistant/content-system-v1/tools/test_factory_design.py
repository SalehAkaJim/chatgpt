from __future__ import annotations

import unittest

from language_units import is_word_unit, word_unit_errors
from validate_factory_design import naturalness_errors, generativity_errors


class WordUnitTests(unittest.TestCase):
    def test_single_token_word_is_word(self):
        self.assertTrue(is_word_unit({"itemType": "word", "displayForm": "bus"}))

    def test_article_plus_noun_is_not_a_word(self):
        item = {"itemType": "word", "displayForm": "a bus", "metadata": {}}
        self.assertFalse(is_word_unit(item))
        self.assertTrue(word_unit_errors(item))

    def test_article_plus_noun_cannot_bypass_with_manual_lexicalized_flag(self):
        item = {
            "itemType": "word",
            "displayForm": "a bus",
            "metadata": {
                "lexicalized": True,
                "lexicalizationEvidence": "manual author assertion",
            },
        }
        self.assertFalse(is_word_unit(item))
        self.assertTrue(any("article-led phrase" in e for e in word_unit_errors(item)))

    def test_compositional_room_number_is_not_a_word(self):
        item = {"itemType": "formula", "displayForm": "room six", "metadata": {}}
        self.assertFalse(is_word_unit(item))

    def test_multi_token_lexeme_requires_evidence(self):
        self.assertFalse(is_word_unit({"itemType": "phrasal_verb", "displayForm": "wake up", "metadata": {}}))
        self.assertTrue(is_word_unit({
            "itemType": "phrasal_verb",
            "displayForm": "wake up",
            "metadata": {"referenceKey": "TEST-SENSE"},
        }))

    def test_lexicalized_multi_token_word_requires_auditable_evidence(self):
        self.assertFalse(is_word_unit({
            "itemType": "word",
            "displayForm": "ice cream",
            "metadata": {"lexicalized": True},
        }))
        self.assertTrue(is_word_unit({
            "itemType": "word",
            "displayForm": "ice cream",
            "metadata": {
                "lexicalized": True,
                "lexicalizationEvidence": "dictionary lexical entry for the complete compound",
            },
        }))


class NaturalnessTests(unittest.TestCase):
    def lesson(self, prompt: str, response: str):
        return {
            "lessonKey": "TEST",
            "turns": [
                {"turnKey": "T01", "textEn": prompt},
                {"turnKey": "T02", "textEn": response},
            ],
            "activities": [{
                "activityKey": "A01",
                "type": "dialogue",
                "config": {"exchanges": [{"exchangeKey": "E01", "promptTurnKey": "T01", "responseTurnKey": "T02"}]},
            }],
        }

    def test_bare_coffee_does_not_license_like_statement(self):
        errors = naturalness_errors(self.lesson("Coffee?", "I like coffee."))
        self.assertTrue(any("NF-H01" in e for e in errors))

    def test_direct_preference_question_is_natural(self):
        self.assertEqual([], naturalness_errors(self.lesson("Do you like coffee?", "I like coffee.")))

    def test_either_or_does_not_force_want(self):
        errors = naturalness_errors(self.lesson("Water or tea?", "I want water."))
        self.assertTrue(any("NF-H02" in e for e in errors))

    def test_offer_correction_can_naturally_use_want(self):
        self.assertEqual([], naturalness_errors(self.lesson("Tea?", "No, I want water.")))


class GenerativityTests(unittest.TestCase):
    def test_room_number_passes_with_independent_words_and_two_fillers(self):
        lessons = [{
            "lessonKey": "L1",
            "sortOrder": 1,
            "curriculum": {"targetConstructions": [{"key": "ROOM", "form": "Room + number"}]},
            "lexicalItems": [
                {"itemType": "word", "displayForm": "room"},
                {"itemType": "word", "displayForm": "one"},
                {"itemType": "word", "displayForm": "two"},
            ],
            "turns": [{"textEn": "Room one."}, {"textEn": "Room two."}],
            "activities": [],
        }, {"lessonKey": "L5", "sortOrder": 5, "curriculum": {}, "lexicalItems": [], "turns": [], "activities": []}]
        self.assertEqual([], generativity_errors(lessons, max_delay=4))

    def test_room_number_fails_when_fillers_are_only_inside_phrases(self):
        lessons = [{
            "lessonKey": "L1",
            "sortOrder": 1,
            "curriculum": {"targetConstructions": [{"key": "ROOM", "form": "Room + number"}]},
            "lexicalItems": [{"itemType": "word", "displayForm": "room"}],
            "turns": [{"textEn": "Room one."}, {"textEn": "Room two."}],
            "activities": [],
        }, {"lessonKey": "L5", "sortOrder": 5, "curriculum": {}, "lexicalItems": [], "turns": [], "activities": []}]
        errors = generativity_errors(lessons, max_delay=4)
        self.assertTrue(any("filler 'one'" in e for e in errors))
        self.assertTrue(any("filler 'two'" in e for e in errors))


if __name__ == "__main__":
    unittest.main()

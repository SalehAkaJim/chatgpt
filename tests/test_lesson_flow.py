import unittest

from scripts.lesson_flow import build_lesson_steps


class LessonFlowTests(unittest.TestCase):
    def test_reuses_canonical_utterances_across_phrase_and_repeat_steps(self):
        items = [
            {"kind": "concept", "external_id": "c1", "data": {"forms": {"en": "hello"}}},
            {"kind": "utterance", "external_id": "u1", "data": {"text": {"en": "Hello."}}},
            {"kind": "dialogue", "external_id": "d1", "data": {"turns": [{"order": 1}]}},
            {"kind": "exercise", "external_id": "e1", "data": {"exercise_type": "multiple_choice"}},
            {"kind": "exercise", "external_id": "e2", "data": {"exercise_type": "speaking"}},
        ]
        steps = build_lesson_steps(items, "A1")
        self.assertEqual(steps[0]["step_type"], "intro")
        self.assertEqual(steps[-1]["step_type"], "review")

        phrase = next(step for step in steps if step["step_type"] == "phrases")
        repeat = next(step for step in steps if step["step_type"] == "repeat")
        self.assertEqual(phrase["items"][0]["external_id"], "u1")
        self.assertEqual(repeat["items"][0]["external_id"], "u1")

    def test_advanced_lessons_frontload_two_comprehension_exercises(self):
        items = [
            {"kind": "dialogue", "external_id": "d1", "data": {"turns": [{"order": 1}]}},
            {"kind": "exercise", "external_id": "e1", "data": {"exercise_type": "multiple_choice"}},
            {"kind": "exercise", "external_id": "e2", "data": {"exercise_type": "listening"}},
            {"kind": "exercise", "external_id": "e3", "data": {"exercise_type": "fill_blank"}},
        ]
        steps = build_lesson_steps(items, "B2")
        understand = [step for step in steps if step["stage"] == "understand"]
        self.assertEqual([s["exercises"][0]["external_id"] for s in understand], ["e1", "e2"])


if __name__ == "__main__":
    unittest.main()

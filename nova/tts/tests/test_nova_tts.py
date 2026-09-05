import importlib.util
import json
from pathlib import Path
import unittest


MODULE_PATH = Path(__file__).resolve().parents[1] / "nova_tts.py"
SPEC = importlib.util.spec_from_file_location("nova_tts", MODULE_PATH)
nova_tts = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
SPEC.loader.exec_module(nova_tts)


class NovaTtsTests(unittest.TestCase):
    def test_character_slug(self):
        self.assertEqual(nova_tts.character_slug("Dr. Weber"), "dr-weber")
        self.assertEqual(nova_tts.character_slug("Herr Becker"), "herr-becker")

    def test_level_speeds_are_progressive(self):
        self.assertLess(nova_tts.speed_for_level("A1"), nova_tts.speed_for_level("A2"))
        self.assertLess(nova_tts.speed_for_level("A2"), nova_tts.speed_for_level("B1"))

    def test_fingerprint_changes_with_voice_context_and_level(self):
        base = dict(
            text="Guten Morgen.",
            previous_text="Hallo!",
            next_text="Wie geht es dir?",
            voice_id="voice-a",
            level="A1",
        )
        original = nova_tts.request_fingerprint(**base)
        for key, replacement in (
            ("voice_id", "voice-b"),
            ("previous_text", "Guten Abend."),
            ("next_text", "Bis später."),
            ("level", "A2"),
        ):
            changed = dict(base)
            changed[key] = replacement
            self.assertNotEqual(original, nova_tts.request_fingerprint(**changed))

    def test_duration_prefers_normalized_alignment(self):
        response = {
            "normalized_alignment": {"character_end_times_seconds": [0.1, 1.234]},
            "alignment": {"character_end_times_seconds": [0.1, 9.0]},
        }
        self.assertEqual(nova_tts.duration_from_alignment(response), 1234)

    def test_duplicate_voice_is_rejected(self):
        mapping = {
            "characters": [
                {"name": "Lena", "voice_id": "same"},
                {"name": "Anna", "voice_id": "same"},
            ]
        }
        with self.assertRaises(nova_tts.NovaTtsError):
            nova_tts.validate_voice_map(mapping)

    def test_voice_map_covers_current_character_roster(self):
        mapping_path = Path(__file__).resolve().parents[1] / "voice_map.json"
        mapping = json.loads(mapping_path.read_text(encoding="utf-8"))
        names = [item["name"] for item in mapping["characters"]]
        self.assertEqual(len(names), 24)
        self.assertEqual(len(set(names)), 24)
        self.assertIn("Dr. Weber", names)
        self.assertIn("Herr Becker", names)


if __name__ == "__main__":
    unittest.main()

import json
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
GERMAN = ROOT / "content" / "production" / "de" / "coerll-deutsch-im-blick"


class SourceBackedGermanTests(unittest.TestCase):
    def test_all_ten_source_chapters_exist(self):
        files = sorted(GERMAN.glob("chapter-*.json"))
        self.assertEqual(len(files), 10)

    def test_content_is_source_attributed_and_not_cefr_guessed(self):
        for path in sorted(GERMAN.glob("chapter-*.json")):
            batch = json.loads(path.read_text(encoding="utf-8"))
            self.assertEqual(batch["source"]["source_id"], "coerll-deutsch-im-blick")
            self.assertEqual(batch["source"]["license"], "CC BY 4.0")
            self.assertIsNone(batch["cefr"])
            self.assertTrue(batch["lessons"])
            self.assertTrue(batch["items"])
            for item in batch["items"]:
                self.assertEqual(item["kind"], "concept")
                self.assertIn("de", item["data"]["forms"])
                self.assertIn("en", item["data"]["translations"])

    def test_current_vocabulary_snapshot_size(self):
        files = sorted(GERMAN.glob("chapter-*.json"))
        total = sum(len(json.loads(path.read_text(encoding="utf-8"))["items"]) for path in files)
        self.assertEqual(total, 1566)

    def test_audio_directory_is_absent(self):
        self.assertFalse((ROOT / "audio").exists())


if __name__ == "__main__":
    unittest.main()

import json
import tempfile
import unittest
from pathlib import Path

from scripts.english_lexical_identity_patch import build_identity_map
from scripts.lexical_identity import lexeme_uuid, word_form_uuid


class EnglishIdentityPatchTests(unittest.TestCase):
    def test_batch_independent_lexical_ids(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            payload = {
                "batch_id": "batch-1",
                "items": [
                    {"kind": "lexeme", "external_id": "lx_day", "data": {"lemma": "Day", "part_of_speech": "noun"}},
                    {"kind": "word_form", "external_id": "wf_days", "data": {
                        "lexeme_ref": "lx_day", "surface_form": "days", "grammatical_features": {"number": "plural"}
                    }},
                ],
            }
            (root / "one.json").write_text(json.dumps(payload), encoding="utf-8")
            mapping = build_identity_map(root, "en-US")
            self.assertEqual(
                mapping[("lexeme", "en-US:Day:noun")],
                lexeme_uuid("en-US", "Day", "noun"),
            )
            self.assertEqual(
                mapping[("word_form", "batch-1:wf_days")],
                word_form_uuid("en-US", "Day", "noun", "days", {"number": "plural"}),
            )


if __name__ == "__main__":
    unittest.main()

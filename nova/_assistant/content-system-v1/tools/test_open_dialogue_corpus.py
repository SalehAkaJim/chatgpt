#!/usr/bin/env python3
from __future__ import annotations

import json
import tempfile
import unittest
from pathlib import Path

from open_dialogue_catalog import OpenDialogueCatalog
from sync_open_dialogue_corpus import ShardWriter, sgd_records, taskmaster_records


TASKMASTER_SOURCE = {
    "repository": "example/taskmaster",
    "commit": "abc123",
    "license": "CC-BY-4.0",
    "attribution": "Taskmaster",
    "reuseMode": "verbatim-or-attributed-adaptation",
}
SGD_SOURCE = {
    "repository": "example/sgd",
    "commit": "def456",
    "license": "CC-BY-SA-4.0",
    "attribution": "SGD",
    "reuseMode": "verbatim-sharealike",
}


class OpenDialogueCorpusTests(unittest.TestCase):
    def test_taskmaster_parser_preserves_exact_english(self):
        payload = [{
            "conversation_id": "dlg-1",
            "instruction_id": "restaurant-table-2",
            "utterances": [
                {"index": 0, "speaker": "USER", "text": "Hi,  I'm here."},
                {"index": 1, "speaker": "ASSISTANT", "text": "Okay — what's your name?"},
            ],
        }]
        rows = list(taskmaster_records(payload, source=TASKMASTER_SOURCE, source_file="self-dialogs.json"))
        self.assertEqual(len(rows), 1)
        self.assertEqual(rows[0]["turns"][0]["text"], "Hi,  I'm here.")
        self.assertEqual(rows[0]["turns"][1]["text"], "Okay — what's your name?")
        self.assertEqual(rows[0]["license"], "CC-BY-4.0")
        self.assertEqual(rows[0]["domain"], "restaurant")

    def test_sgd_parser_preserves_services_and_exact_utterances(self):
        payload = [{
            "dialogue_id": "1_00000",
            "services": ["Restaurants_1"],
            "turns": [
                {"speaker": "USER", "utterance": "I'd like a table."},
                {"speaker": "SYSTEM", "utterance": "What time works for you?"},
            ],
        }]
        rows = list(sgd_records(payload, source=SGD_SOURCE, source_file="train/dialogues_001.json"))
        self.assertEqual(len(rows), 1)
        self.assertEqual(rows[0]["turns"][0]["text"], "I'd like a table.")
        self.assertEqual(rows[0]["services"], ["Restaurants_1"])
        self.assertEqual(rows[0]["domain"], "restaurants")
        self.assertEqual(rows[0]["split"], "train")
        self.assertEqual(rows[0]["corpusKey"], "schema-guided-dialogue:train:1_00000")

    def test_sgd_reused_dialogue_ids_are_unique_across_splits(self):
        payload = [{
            "dialogue_id": "1_00000",
            "services": ["Restaurants_1"],
            "turns": [
                {"speaker": "USER", "utterance": "I'd like a table."},
                {"speaker": "SYSTEM", "utterance": "What time works for you?"},
            ],
        }]
        train = list(sgd_records(payload, source=SGD_SOURCE, source_file="train/dialogues_001.json"))[0]
        dev = list(sgd_records(payload, source=SGD_SOURCE, source_file="dev/dialogues_001.json"))[0]
        test = list(sgd_records(payload, source=SGD_SOURCE, source_file="test/dialogues_001.json"))[0]
        self.assertEqual(
            {train["corpusKey"], dev["corpusKey"], test["corpusKey"]},
            {
                "schema-guided-dialogue:train:1_00000",
                "schema-guided-dialogue:dev:1_00000",
                "schema-guided-dialogue:test:1_00000",
            },
        )

    def _write_catalog(self, root: Path) -> None:
        dialogue_root = root / "nova/reference/en-fa/dialogue"
        dialogue_root.mkdir(parents=True, exist_ok=True)
        writer = ShardWriter(dialogue_root, shard_size=50)
        taskmaster = list(taskmaster_records([{
            "conversation_id": "short-a1",
            "instruction_id": "coffee-order-1",
            "utterances": [
                {"speaker": "USER", "text": "A coffee, please."},
                {"speaker": "ASSISTANT", "text": "Small or large?"},
                {"speaker": "USER", "text": "Small, please."},
                {"speaker": "ASSISTANT", "text": "Sure."},
            ],
        }], source=TASKMASTER_SOURCE, source_file="tm.json"))[0]
        sharealike = list(sgd_records([{
            "dialogue_id": "sgd-1",
            "services": ["Hotels_1"],
            "turns": [
                {"speaker": "USER", "utterance": "I need a hotel."},
                {"speaker": "SYSTEM", "utterance": "Which city?"},
                {"speaker": "USER", "utterance": "Boston."},
                {"speaker": "SYSTEM", "utterance": "What dates?"},
            ],
        }], source=SGD_SOURCE, source_file="train/dialogues_001.json"))[0]
        writer.add(taskmaster)
        writer.add(sharealike)
        shards, index = writer.finish()
        (dialogue_root / "manifest.json").write_text(json.dumps({
            "schemaVersion": 1,
            "authoringMode": "verbatim-first",
            "counts": {"total": len(index)},
            "shards": shards,
        }), encoding="utf-8")

    def test_catalog_returns_exact_source_window(self):
        with tempfile.TemporaryDirectory() as td:
            root = Path(td)
            self._write_catalog(root)
            catalog = OpenDialogueCatalog(root)
            rows = catalog.recommend(level="A1", topics=["coffee"], count=1)
            self.assertEqual(len(rows), 1)
            self.assertEqual(rows[0]["corpusKey"], "taskmaster:short-a1")
            self.assertEqual(rows[0]["suggestedWindow"]["turns"][0]["text"], "A coffee, please.")
            self.assertTrue(rows[0]["provenanceRequirement"]["preserveExactEnglish"])

    def test_catalog_can_exclude_sharealike(self):
        with tempfile.TemporaryDirectory() as td:
            root = Path(td)
            self._write_catalog(root)
            catalog = OpenDialogueCatalog(root)
            rows = catalog.recommend(level="A1", topics=["hotel"], count=10, allow_sharealike=False)
            self.assertTrue(all(row["license"] != "CC-BY-SA-4.0" for row in rows))


if __name__ == "__main__":
    unittest.main()

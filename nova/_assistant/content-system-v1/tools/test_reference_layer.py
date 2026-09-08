#!/usr/bin/env python3
import importlib.util
import json
import tempfile
from pathlib import Path

HERE = Path(__file__).resolve().parent
MODULE_PATH = HERE / "reference_layer.py"
spec = importlib.util.spec_from_file_location("nova_reference_layer", MODULE_PATH)
rl = importlib.util.module_from_spec(spec)
assert spec.loader
spec.loader.exec_module(rl)

words = [{
    "id": "w1", "english": "name", "frequency_rank": 120, "level": "A1",
    "source_list": "wordfreq+wordnet",
    "senses": [{"id": "s1", "part_of_speech": "noun", "sense_order": 1,
                "definition_en": "a word by which a person is known", "example_en": "My name is Sam."}],
}]
translations = [{"sense_id": "s1", "language_code": "fa", "meaning": "اسم", "example": "اسم من سام است."}]
vocab = [
    {"headword": "name", "pos": "noun", "CEFR": "A1", "CoreInventory 1": "", "CoreInventory 2": "", "Threshold": ""},
    {"headword": "hello", "pos": "interjection", "CEFR": "A1", "CoreInventory 1": "", "CoreInventory 2": "", "Threshold": ""},
]
grammar = [{
    "ID": "1", "Shorthand Code": "PP.I_am", "Grammatical Item": "I am", "Sentence Type": "AFF. DEC.",
    "CEFR-J Level": "A1.1", "FREQ*DISP": "A1", "Core Inventory": "A1", "EGP": "A1", "GSELO": "A1",
}]

snapshot = rl.build_snapshot(words, translations, vocab, grammar, "A1", {})
assert [x["lemma"] for x in snapshot["lexicalItems"]] == ["hello", "name"]
name = next(x for x in snapshot["lexicalItems"] if x["lemma"] == "name")
hello = next(x for x in snapshot["lexicalItems"] if x["lemma"] == "hello")
assert name["qualityScore"] == 100 and name["eligibleForAutoSelection"] is True
assert hello["qualityScore"] == 35 and hello["eligibleForAutoSelection"] is False
assert len(snapshot["grammarTargets"]) == 1
assert rl.validate_snapshot(snapshot) == []

with tempfile.TemporaryDirectory() as td:
    root = Path(td)
    (root / "0001").mkdir()
    (root / "0001" / "lesson.source.json").write_text(json.dumps({
        "levelKey": "A1", "lessonKey": "L1",
        "lexicalItems": [
            {"lemma": "name", "partOfSpeech": "noun", "senseKey": "personal_name", "translationFa": "اسم"},
            {"lemma": "hello", "partOfSpeech": "interjection", "senseKey": "greeting", "translationFa": "سلام"},
        ],
    }, ensure_ascii=False), encoding="utf-8")
    report = rl.compare_lessons(snapshot, root, "A1")
    assert report["summary"]["referenceCoveragePercent"] == 100.0
    assert report["summary"]["levelConflicts"] == 0

print("reference layer tests: PASS")

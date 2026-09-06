import importlib.util
import os
from pathlib import Path
import unittest

os.environ.setdefault("NOVA_COURSE","de-fa")
P=Path(__file__).resolve().parents[1]/"nova_word_tts.py"
S=importlib.util.spec_from_file_location("nova_word_tts",P); M=importlib.util.module_from_spec(S); S.loader.exec_module(M)

class TestWordTts(unittest.TestCase):
    def row(self,text,pos="phrase"):
        return {"display_form":text,"part_of_speech":pos}
    def test_paths_are_course_scoped(self):
        self.assertEqual(M.MANIFEST_PATH.parent.name,"de-fa")
        self.assertEqual(M.VOICE_CONFIG_PATH.name,"word_voice_de_fa.json")
    def test_sentence_excluded(self):
        self.assertFalse(M.is_word_audio_eligible(self.row("Wie geht es dir?")))
    def test_short_chunk_allowed(self):
        self.assertTrue(M.is_word_audio_eligible(self.row("Guten Morgen")))

if __name__=="__main__": unittest.main()

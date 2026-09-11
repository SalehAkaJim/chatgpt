#!/usr/bin/env python3
from __future__ import annotations

import json
import sys
import tempfile
import types
import unittest
from pathlib import Path
from unittest.mock import patch

from factory_wave import enrich_planned_wave_from_config


class FactoryWaveOpenCorpusWiringTests(unittest.TestCase):
    def _manifest(self, root: Path) -> Path:
        path = root / "wave.json"
        path.write_text(json.dumps({
            "authoringMode": "parallel-draft",
            "workerCount": 20,
        }), encoding="utf-8")
        return path

    def test_disabled_config_keeps_plain_wave(self):
        with tempfile.TemporaryDirectory() as td:
            root = Path(td)
            path = self._manifest(root)
            result = enrich_planned_wave_from_config(
                root=root,
                manifest_path=path,
                config={"openCorpusAuthoring": False},
            )
            self.assertEqual(result["authoringMode"], "parallel-draft")

    def test_enabled_config_routes_through_open_corpus_enrichment(self):
        with tempfile.TemporaryDirectory() as td:
            root = Path(td)
            path = self._manifest(root)
            calls = {}
            fake = types.ModuleType("open_corpus_wave")

            def enrich_wave(*, root, manifest_path, candidate_count, allow_sharealike):
                calls.update({
                    "root": root,
                    "manifest_path": manifest_path,
                    "candidate_count": candidate_count,
                    "allow_sharealike": allow_sharealike,
                })
                payload = json.loads(manifest_path.read_text(encoding="utf-8"))
                payload["authoringMode"] = "open-corpus-verbatim-first"
                manifest_path.write_text(json.dumps(payload), encoding="utf-8")
                return payload

            fake.enrich_wave = enrich_wave
            with patch.dict(sys.modules, {"open_corpus_wave": fake}):
                result = enrich_planned_wave_from_config(
                    root=root,
                    manifest_path=path,
                    config={
                        "openCorpusAuthoring": True,
                        "openCorpusCandidateCount": 9,
                        "openCorpusAllowShareAlike": False,
                    },
                )

            self.assertEqual(result["authoringMode"], "open-corpus-verbatim-first")
            self.assertEqual(calls["candidate_count"], 9)
            self.assertFalse(calls["allow_sharealike"])
            self.assertEqual(calls["manifest_path"], path)
            self.assertEqual(calls["root"], root)


if __name__ == "__main__":
    unittest.main()

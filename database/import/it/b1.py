#!/usr/bin/env python3
"""Single entrypoint for importing Standard Italian B1 production content."""
from pathlib import Path
import sys
ROOT=Path(__file__).resolve().parents[3]; sys.path.insert(0,str(ROOT))
from scripts import materialize_level as materializer
from scripts import sync_character_cast as cast_sync
CONTENT_DIR=ROOT/'content'/'production'/'it'/'B1'; CAST=ROOT/'audio'/'cast'/'it-IT.json'; VOICE_REGISTRY=ROOT/'audio'/'voices'/'it-IT.json'; EXTRA_ARGS=sys.argv[1:]
if not CONTENT_DIR.exists() or not list(CONTENT_DIR.glob('*.json')): raise SystemExit(f'Italian B1 production content is not available yet: {CONTENT_DIR}')
if '--require-approved' in EXTRA_ARGS or ('--dry-run' not in EXTRA_ARGS and '--allow-unreviewed' not in EXTRA_ARGS):
    preflight=materializer.validate_batches(sorted(CONTENT_DIR.glob('*.json'))); errors=[b['batch_id']+': '+e for b in preflight for e in materializer.quality_errors(b,require_approved=True)]
    if errors: raise SystemExit('Educational review gate: '+'; '.join(errors))
cast_argv=[sys.argv[0],'--cast',str(CAST),'--voice-registry',str(VOICE_REGISTRY),'--target-language','it','--target-variant','it-IT','--content-dir',str(CONTENT_DIR),'--level','B1']
if '--dry-run' in EXTRA_ARGS: cast_argv.append('--dry-run')
sys.argv=cast_argv; cast_sync.main()
_base=materializer.ensure_concept
def _ensure(*args,**kwargs):
    data=args[1]; ids=args[-1]; cid=_base(*args,**kwargs); ids[data['slug']]=cid; return cid
materializer.ensure_concept=_ensure
sys.argv=[sys.argv[0],str(CONTENT_DIR),'--course','fa-it-it','--level','B1','--target-language','it','--target-variant','it-IT','--learner-language','fa','--learner-variant','fa-IR']+EXTRA_ARGS
materializer.main()

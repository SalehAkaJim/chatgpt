#!/usr/bin/env python3
from __future__ import annotations
import json,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parents[2]
def check(course):
 p=ROOT/'nova'/'courses'/course/'production_state.json'; s=json.loads(p.read_text(encoding='utf-8')); e=[]
 if 'generated_through_series' not in s and 'published_through_series' not in s: return e
 g=s.get('generated_through_series'); pub=s.get('published_through_series',s.get('last_completed_series')); nxt=s.get('next_series')
 if not isinstance(g,int) or g<0:e.append(f'{course}: generated_through_series missing/invalid')
 if not isinstance(pub,int) or pub<0:e.append(f'{course}: published_through_series missing/invalid')
 if isinstance(g,int) and isinstance(pub,int) and pub>g:e.append(f'{course}: published pointer exceeds generated pointer')
 if isinstance(g,int) and nxt!=g+1:e.append(f'{course}: next_series must equal generated_through_series + 1')
 if s.get('last_completed_series')!=pub:e.append(f'{course}: last_completed_series must mirror published_through_series')
 return e
def main():
 e=[]
 for c in ('en-fa','de-fa'):
  p=ROOT/'nova'/'courses'/c/'production_state.json'
  if p.exists():e.extend(check(c))
 if e: print('\n'.join('FAIL '+x for x in e),file=sys.stderr); return 1
 print('PASS Nova v3 generated/published state invariants.'); return 0
if __name__=='__main__': raise SystemExit(main())

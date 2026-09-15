#!/usr/bin/env python3
"""Zero-dependency lesson prototype. Run: python3 prototype.py [--check]."""
from __future__ import annotations
import argparse, json, re, sys, threading, webbrowser
from collections import Counter
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from urllib.parse import urlparse

ROOT=Path(__file__).resolve().parent
PLAN=ROOT/'database/plans/de_pre_a1_lesson_map.sql'
CONTENT=ROOT/'database/content'
LABELS={
 'conversation_speaking':'مکالمه','listen_choose':'شنیدن و انتخاب','multiple_choice':'چندگزینه‌ای',
 'choose_response':'انتخاب پاسخ','word_order':'چینش','fill_blank':'جای خالی','matching':'تطبیق',
 'listen_repeat':'گوش کن و تکرار کن','pronunciation_read':'خواندن و تلفظ','grammar_focus':'ساختار',
 'comprehension':'درک مطلب','true_false':'درست/غلط','review':'مرور','form_fill':'فرم',
 'guided_writing':'نوشتن هدایت‌شده'}

def split_top(s, sep=','):
 out=[]; buf=[]; depth=0; quote=False; i=0
 while i<len(s):
  c=s[i]
  if quote:
   buf.append(c)
   if c=="'":
    if i+1<len(s) and s[i+1]=="'": buf.append("'"); i+=2; continue
    quote=False
   i+=1; continue
  if c=="'": quote=True; buf.append(c)
  elif c=='(': depth+=1; buf.append(c)
  elif c==')': depth=max(0,depth-1); buf.append(c)
  elif c==sep and depth==0: out.append(''.join(buf).strip()); buf=[]
  else: buf.append(c)
  i+=1
 if buf or s.strip(): out.append(''.join(buf).strip())
 return out

def split_union(s):
 out=[]; buf=[]; depth=0; quote=False; i=0; upper=s.upper(); token='UNION ALL'
 while i<len(s):
  c=s[i]
  if quote:
   buf.append(c)
   if c=="'":
    if i+1<len(s) and s[i+1]=="'": buf.append("'"); i+=2; continue
    quote=False
   i+=1; continue
  if c=="'": quote=True; buf.append(c); i+=1; continue
  if c=='(': depth+=1
  elif c==')': depth=max(0,depth-1)
  if depth==0 and upper.startswith(token,i): out.append(''.join(buf).strip()); buf=[]; i+=len(token); continue
  buf.append(c); i+=1
 if ''.join(buf).strip(): out.append(''.join(buf).strip())
 return out

def statements(s):
 out=[]; buf=[]; quote=False; i=0
 while i<len(s):
  c=s[i]
  if quote:
   buf.append(c)
   if c=="'":
    if i+1<len(s) and s[i+1]=="'": buf.append("'"); i+=2; continue
    quote=False
   i+=1; continue
  if c=="'": quote=True; buf.append(c)
  elif c==';':
   x=''.join(buf).strip(); buf=[]
   if x: out.append(x)
  else: buf.append(c)
  i+=1
 x=''.join(buf).strip()
 if x: out.append(x)
 return out

def qstr(s):
 s=s.strip(); out=[]; i=1
 if not s.startswith("'"): return None
 while i<len(s):
  if s[i]=="'":
   if i+1<len(s) and s[i+1]=="'": out.append("'"); i+=2; continue
   return ''.join(out)
  out.append(s[i]); i+=1
 return ''.join(out)

def inner(s):
 start=s.find('('); depth=0; quote=False; i=start
 if start<0: return None
 while i<len(s):
  c=s[i]
  if quote:
   if c=="'":
    if i+1<len(s) and s[i+1]=="'": i+=2; continue
    quote=False
  else:
   if c=="'": quote=True
   elif c=='(': depth+=1
   elif c==')':
    depth-=1
    if depth==0: return s[start+1:i]
  i+=1
 return None

def value(expr):
 expr=expr.strip(); up=expr.upper()
 if not expr: return None
 if expr.startswith("'"): return qstr(expr)
 if up.startswith('NULL'): return None
 if up.startswith('TRUE'): return True
 if up.startswith('FALSE'): return False
 if up.startswith('JSON_OBJECT'):
  xs=split_top(inner(expr) or ''); obj={}
  for i in range(0,len(xs)-1,2):
   k=value(xs[i])
   if isinstance(k,str): obj[k]=value(xs[i+1])
  return obj
 if up.startswith('JSON_ARRAY'):
  x=inner(expr) or ''
  return [] if not x.strip() else [value(p) for p in split_top(x)]
 m=re.match(r'^-?\d+(?:\.\d+)?',expr)
 if m: return float(m.group()) if '.' in m.group() else int(m.group())
 return expr

def fields(row): return split_top(re.sub(r'^\s*SELECT\s+','',row,flags=re.I))
def blocks(sql,table):
 pat=rf'INSERT(?:\s+IGNORE)?\s+INTO\s+{re.escape(table)}\b.*?\bFROM\s*\(\s*(.*?)\s*\)\s*x\b'
 return [m.group(1) for m in re.finditer(pat,sql,re.I|re.S)]
def assignments(stmt):
 m=re.search(r'\bSET\b(.*?)(?:\bWHERE\b|$)',stmt,re.I|re.S); out={}
 if not m: return out
 for chunk in split_top(m.group(1)):
  if '=' in chunk:
   k,v=chunk.split('=',1); out[k.strip().split('.')[-1].strip(' `')]=v.strip()
 return out

def parse_case(expr):
 out={}
 pat=r"WHEN\s+(\d+)\s+THEN\s+('(?:''|[^'])*'|NULL|TRUE|FALSE|-?\d+(?:\.\d+)?)"
 for m in re.finditer(pat,expr,re.I|re.S): out[int(m.group(1))]=value(m.group(2))
 m=re.search(r"\bELSE\s+('(?:''|[^'])*'|NULL|TRUE|FALSE|-?\d+(?:\.\d+)?)\s+END",expr,re.I|re.S)
 return out, value(m.group(1)) if m else None, bool(m)

def apply(target, changes, allowed):
 for k,expr in changes.items():
  if k in allowed:
   v=value(expr)
   if not(isinstance(v,str) and v.upper().startswith('VALUES(')): target[k]=v

def lesson_shells():
 text=PLAN.read_text(encoding='utf8')
 m=re.search(r"JOIN\s*\(\s*(SELECT\s+1\s+seq,\s*'greetings'.*?SELECT\s+30\s*,\s*'review'.*?)\s*\)\s*x\s+ON",text,re.I|re.S)
 if not m: raise RuntimeError('German Pre-A1 lesson rows not found')
 out={}
 for row in split_union(m.group(1)):
  f=fields(row); n=value(f[0])
  if isinstance(n,int):
   lid=f'de_pre_a1_l{n:03d}'
   out[lid]={'public_id':lid,'sequence_number':n,'unit_or_topic':value(f[1]),'title_fa':value(f[2]),'source_title':value(f[3]),'status':'draft','template_signature':None,'activity_count_rationale':None,'sequence_rationale':None}
 return out

def load_model():
 if not PLAN.exists() or not CONTENT.exists(): raise FileNotFoundError('database/ پیدا نشد؛ از ریشه repository اجرا کن')
 lessons=lesson_shells(); dialogs={}; turns={}; activities={}; items={}; characters={}; parsed=[]
 for path in sorted(CONTENT.glob('*.sql')):
  parsed.append(path.name); sql=path.read_text(encoding='utf8')
  for m in re.finditer(r"SELECT\s+'(de_char_[^']+)'\s*,\s*l\.id\s*,\s*'((?:''|[^'])*)'\s*,\s*'(?:source|app_created)'",sql,re.I|re.S): characters[m.group(1)]=m.group(2).replace("''", "'")
  for b in blocks(sql,'dialogues'):
   for row in split_union(b):
    f=fields(row)
    if len(f)>1:
     did=value(f[0])
     if isinstance(did,str) and did.startswith('de_pre_a1_dlg_'): dialogs[did]={'public_id':did,'scenario':value(f[1]),'origin_file':path.name}
  for b in blocks(sql,'dialogue_turns'):
   for row in split_union(b):
    f=fields(row)
    if len(f)>=8:
     did,pos=value(f[0]),value(f[1])
     if isinstance(did,str) and isinstance(pos,int) and did.startswith('de_pre_a1_dlg_'):
      turns[(did,pos)]={'dialogue_id':did,'position':pos,'character_id':value(f[2]),'text_target':value(f[5]),'translation_fa':value(f[6]),'learner_turn':bool(value(f[7])),'origin_file':path.name}
  for b in blocks(sql,'activities'):
   for row in split_union(b):
    f=fields(row)
    if len(f)>=7:
     aid=value(f[0])
     if isinstance(aid,str) and aid.startswith('de_pre_a1_a'):
      activities[aid]={'public_id':aid,'lesson_id':value(f[1]),'position':value(f[2]),'type_code':value(f[3]),'instruction_fa':value(f[4]),'selection_reason':value(f[5]),'dialogue_id':value(f[6]),'payload':value(f[7]) if len(f)>7 else {},'transformations':value(f[8]) if len(f)>8 else {},'origin_file':path.name}
  for b in blocks(sql,'activity_items'):
   for row in split_union(b):
    f=fields(row)
    if len(f)>=7:
     aid,pos=value(f[0]),value(f[1])
     if isinstance(aid,str) and isinstance(pos,int) and aid.startswith('de_pre_a1_a'):
      items[(aid,pos)]={'activity_id':aid,'position':pos,'item_role':value(f[2]),'text_target':value(f[3]),'text_fa':value(f[4]),'is_correct':value(f[5]),'group_key':value(f[6]),'metadata':value(f[7]) if len(f)>7 else {},'origin_file':path.name}
  # Single-row activity inserts, e.g. the later age-production activity.
  for st in statements(sql):
   if re.match(r'\s*INSERT\s+INTO\s+activities\b',st,re.I) and not re.search(r'FROM\s*\(',st,re.I):
    m=re.search(r"SELECT\s+(.*)\s+FROM\s+lessons\s+l\s+WHERE\s+l\.public_id\s*=\s*'(de_pre_a1_l\d+)'",st,re.I|re.S)
    if m:
     f=split_top(m.group(1)); aid=value(f[0])
     if len(f)>=9 and isinstance(aid,str) and aid.startswith('de_pre_a1_a'):
      activities[aid]={'public_id':aid,'lesson_id':m.group(2),'position':value(f[2]),'type_code':value(f[3]),'instruction_fa':value(f[4]),'selection_reason':value(f[5]),'dialogue_id':value(f[6]),'payload':value(f[7]),'transformations':value(f[8]),'origin_file':path.name}
  # Apply later modernization/fix UPDATE statements in filename order.
  for st in statements(sql):
   flat=re.sub(r'\s+',' ',st).strip(); up=flat.upper(); a=assignments(st)
   if up.startswith('UPDATE LESSONS'):
    ids=re.findall(r"'(de_pre_a1_l\d+)'",re.search(r"(?:public_id\s*=\s*'ae_pre_a1_l\d+'|public_id\s+IN\s*\(.*?\))","st",re.I|re.S).group(0)) if re.search(r"(?:public_id\s*=\s*'de_pre_a1_l\d+'|public_id\s+IN\s*\(.*?\))",st,re.I|re.S) else []
   for lid in ids:
    if lid in lessons: apply(lessons[lid],a,{'status','template_signature','activity_count_rationale','sequence_rationale','source_title','title_fa','unit_or_topic'})
   elif up.startswith('UPDATE DIALOGUES'):
    m=re.search(r"public_id\s*=\s*'(de_pre_a1_dlg_\d+)'",st,re.I)
    if m: apply(dialogs.setdefault(m.group(1),{'public_id':m.group(1)}),a,{'status','scenario'})
   elif up.startswith('UPDATE DIALOGUE_TURNS'):
    d=re.search(r"d\.public_id\s*=\s*'(de_pre_a1_dlg_\d+)'",st,re.I); p=re.search(r'dt\.position\s*=\s*(\d+)',st,re.I)
    if d and p:
     key=(d.group(1),int(p.group(1)); target=turns.setdefault(key,{'dialogue_id':key[0],'position':key[1]})
     c=re.search(r"ch\.public_id\s*=\s*'(de_char_[^']+)'",st,re.I)
     if c: target['character_id']=c.group(1)
     apply(target,a,{'text_target','translation_fa','learner_turn'}); target['learner_turn']=bool(target.get('learner_turn')); target['origin_file']=path.name
   elif up.startswith('UPDATE ACTIVITIES'):
    exact=re.search(r"public_id\s*=\s*'(de_pre_a1_a\d+_\d+)'",st,re.I); targets=[]
    if exact and exact.group(1) in activities: targets=[activities[exact.group(1)]]
    if not targets:
     lid=re.search(r"l\.public_id\s*=\s*'(de_pre_a1_l\d+)'",st,re.I); pos=re.search(r'a\.position\s*=\s*(\d+)',st,re.I)
     if lid:
     targets=[x for x in activities.values() if x.get('lesson_id')==lid.group(1)]
     if pos: targets=[x for x in targets if x.get('position')==int(pos.group(1))]
    for target in targets:
     apply(target,a,{'type_code','instruction_fa','selection_reason','payload','transformations','dialogue_id'}); target['origin_file']=path.name
   elif up.startswith('UPDATE ACTIVITY_ITEMS'):
    m=re.search(r"a\.public_id\s*=\s*'(de_pre_a1_a\d+_\d+)'",st,re.I)
    if m:
     targets=[x for (aid,_),x in items.items() if aid==m.group(1)]
     for field,expr in a.items():
      if field not in {'item_role','text_target','text_fa','is_correct','group_key','metadata'}: continue
      if re.match(r'\s*CASE\b',expr,re.I):
       mapping,other,has_else=parse_case(expr)
       for target in targets:
        if target['position'] in mapping: target[field]=mapping[target['position']]
        elif has_else: target[field]=other
      else:
       v=value(expr)
       for target in targets: target[field]=v
     for target in targets: target['origin_file']=path.name
 for a in activities.values():
  a['items']=sorted([x for (aid,_),x in items.items() if aid==a['public_id']],key=lambda x:x['position'])
  did=a.get('dialogue_id'); a['dialogue']=dialogs.get(did)
  a['dialogue_turns']=sorted([x for (d,_),x in turns.items() if did and d==did],key=lambda x:x['position'])
  for t in a['dialogue_turns']: t['character_name']=characters.get(t.get('character_id'),t.get('character_id') or 'Speaker')
  a['type_label']=LABELS.get(a.get('type_code'),a.get('type_code'))
 result=[]
 for l in sorted(lessons.values(),key=lambda x:x['sequence_number']):
  row=dict(l); row['activities']=sorted([a for a in activities.values() if a.get('lesson_id')==l['public_id']],key=lambda x:(x.get('position') or 999,x['public_id'])); result.append(row)
 return {'language':'Deutsch','level':'Pre-A1','lessons':result,'activity_type_counts':dict(sorted(Counter(a.get('type_code') for a in activities.values()).items())),'parsed_files':parsed}

def structural_check(m):
 problems=[]
 for l in m['lessons']:
  acts=l['activities']
  if not acts: problems.append(f"{l['public_id']}: no activities"); continue
  positions=[a.get('position') for a in acts]
  if positions!=list(range(1,len(acts)+1)): problems.append(f"{l['public_id']}: positions {positions}")
  if acts[0].get('type_code')!='conversation_speaking': problems.append(f"{l['public_id']}: first activity is {acts[0].get('type_code')}")
  for a in acts:
   if a.get('type_code') not in LABELS: problems.append(f"{a['public_id']}: unknown type {a.get('type_code')}")
   if a.get('type_code')=='conversation_speaking' and not a.get('dialogue_turns'): problems.append(f"{[a['public_id']}: no dialogue turns")
   if a.get('type_code') in {'form_fill','guided_writing'} and not isinstance(a.get('payload'),dict): problems.append(f"{[a['public_id']}: bad payload")
 return problems

HTML=r'''<!doctype html><html lang="fa" dir="rtl"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>Prototype</title><style>

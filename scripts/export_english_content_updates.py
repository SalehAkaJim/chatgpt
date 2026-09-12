#!/usr/bin/env python3
"""Export idempotent updates for existing English rows; never connect to MySQL.

Run the normal level importers first to insert the additional learning items,
then apply this SQL and the regenerated per-level audio SQL. Stable identities,
option ordering, grading keys and existing learner progress are retained.
"""
import hashlib
import json
import re
import uuid
from pathlib import Path
try:
    from scripts.content_quality import quality_errors
except ModuleNotFoundError:
    from content_quality import quality_errors

ROOT=Path(__file__).resolve().parents[1]
NS=uuid.UUID('78136b2a-8bcc-4dc4-a39a-a06302c04b8d')
def stable(kind,key): return str(uuid.uuid5(NS,f'{kind}:{key}'))
def q(s):
    if s is None:return 'NULL'
    if not s:return "''"
    return "CONVERT(0x"+str(s).encode('utf-8').hex()+" USING utf8mb4)"
def j(value):return 'CAST('+q(json.dumps(value,ensure_ascii=False))+' AS JSON)'
def uid(value):return "UUID_TO_BIN('"+value+"',1)"
def slug(s):return (re.sub('[^a-z0-9]+','-',s.lower()).strip('-')[:170] or 'item')

def export():
    correction_ids=set(json.loads((ROOT/'content/enrichment/en/correction-ids.json').read_text()))
    lines=['-- English educational content fixes; import new items first.',
           '-- Re-runnable. Does not alter lesson IDs, option order or learner progress.',
           "SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;",'START TRANSACTION;']
    counts={}
    def archive(kind,eid,text,key=None):
        source=hashlib.sha256(' '.join(text.strip().split()).encode()).hexdigest()
        extra=(" AND JSON_UNQUOTE(JSON_EXTRACT(metadata,'$.entity_key'))="+q(key)) if key else ''
        lines.append(f"UPDATE audio_assets SET status='archived' WHERE entity_type={q(kind)} AND entity_id={uid(eid)} AND source_text_hash IS NOT NULL AND source_text_hash<>'{source}'{extra} AND status<>'archived';")
    for path in sorted((ROOT/'content/production/en').glob('*/*.json')):
        batch=json.loads(path.read_text());bid=batch['batch_id']
        errors=quality_errors(batch)
        if errors:raise ValueError((path,errors))
        for item in batch['items']:
            d=item['data'];ext=item['external_id'];kind=item['kind']
            if kind not in {'utterance','grammar_point','dialogue','exercise'}:continue
            if kind!='exercise' and ext not in correction_ids:continue
            counts[kind]=counts.get(kind,0)+1
            lines.append('-- '+ext)
            if kind=='utterance':
                eid=stable(kind,f'{bid}:{ext}')
                for language,text in {**d.get('text',{}),**d.get('translations',{})}.items():
                    lines.append(f"UPDATE utterance_texts SET text={q(text)},normalized_text={q(text)},display_text={q(text)} WHERE utterance_id={uid(eid)} AND language_id=(SELECT id FROM languages WHERE code={q(language)}); ")
                    if language=='en':archive(kind,eid,text)
            elif kind=='grammar_point':
                eid=stable('grammar',d['slug'])
                lines.append(f"UPDATE grammar_points SET title={q(d['title'])},rule_summary={q(d['rule_summary'])} WHERE slug={q(d['slug'])};")
                for language,text in d.get('explanation',{}).items():
                    lines.append(f"UPDATE grammar_explanations SET explanation={q(text)},examples={j(d.get('examples',[]))} WHERE grammar_point_id=(SELECT id FROM grammar_points WHERE slug={q(d['slug'])}) AND explanation_language_id=(SELECT id FROM languages WHERE code={q(language)});")
                if d.get('audio_examples'):
                    for n,example in enumerate(d.get('examples',[]),1):
                        if example.get('en'):archive('grammar_point',eid,example['en'],f'{ext}:example:{n}')
            elif kind=='dialogue':
                ds=slug(f'{bid}-{ext}')
                lines.append(f"UPDATE dialogues SET scenario={q(d.get('setting'))} WHERE slug={q(ds)};")
                lines.append(f"UPDATE dialogue_versions SET title={q(d.get('title'))} WHERE dialogue_id=(SELECT id FROM dialogues WHERE slug={q(ds)}) AND language_id=(SELECT id FROM languages WHERE code='en');")
                for turn in d['turns']:
                    eid=stable('dialogue_turn',f"{ds}:{turn['order']}")
                    lines.append(f"UPDATE dialogue_turns SET text={q(turn['text'])},translation_hint={q(turn.get('translation_fa'))} WHERE id={uid(eid)};")
                    archive('dialogue_turn',eid,turn['text'])
            else:
                eid=stable('exercise',f'{bid}:{ext}')
                correction=(f"prompt={j(d['prompt'])},answer={j(d['answer'])}," if ext in correction_ids else '')
                lines.append(f"UPDATE exercises SET {correction}metadata=JSON_SET(metadata,'$.feedback',{j(d['feedback'])},'$.review_of',{j(d.get('review_of',[]))}) WHERE id={uid(eid)};")
                if d.get('assessment'):
                    lines.append(f"UPDATE exercises SET metadata=JSON_SET(metadata,'$.assessment',{j(d['assessment'])}) WHERE id={uid(eid)};")
                if d.get('answer',{}).get('evaluation_mode')=='rubric':
                    archive('exercise',eid,d['answer']['model_text'],f'{ext}:model')
                    for source in d['prompt'].get('sources',[]):
                        if source.get('audio'):archive('exercise',eid,source['text_en'],f"{ext}:source:{source['id']}")
                if ext in correction_ids:
                    for n,value in enumerate(d.get('options',[]),1):
                        lines.append(f"UPDATE exercise_options SET value={j(value)} WHERE exercise_id={uid(eid)} AND option_order={n};")
                    if d['exercise_type']=='listening':archive('exercise',eid,d['prompt']['audio_text'])
    lines.extend(['COMMIT;',''])
    out=ROOT/'database/import/en/educational_content_updates.sql';out.write_text('\n'.join(lines))
    print(json.dumps({'output':str(out.relative_to(ROOT)),'counts':counts}))

if __name__=='__main__':export()

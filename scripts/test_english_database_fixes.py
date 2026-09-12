#!/usr/bin/env python3
"""Verify feedback persistence and corrected content in the disposable CI DB."""
import json
import sys
from pathlib import Path
from materialize_level import db_config,stable
from content_quality import content_hash, review_state
import mysql.connector

ROOT=Path(__file__).resolve().parents[1]
def main():
    conn=mysql.connector.connect(**db_config());cur=conn.cursor()
    count=0
    try:
        if '--seed-stale-fixture' in sys.argv:
            # Simulate an already-imported learner DB with the earlier prompt,
            # a stale dialogue turn and generation-time approval flags.
            b=json.loads((ROOT/'content/production/en/Pre-A1/prea1-en-first-conversation-v1.json').read_text())
            eid=stable('exercise',f"{b['batch_id']}:ex_pre_capstone_name_speak")
            cur.execute("UPDATE exercises SET prompt=JSON_SET(prompt,'$.instruction_fa',%s),status='approved' WHERE id=UUID_TO_BIN(%s,1)",('خودت را با الگوی I\'m ... معرفی کن.',eid))
            b=json.loads((ROOT/'content/production/en/C1/c1-humor-irony-v1.json').read_text())
            import re
            ds=re.sub('[^a-z0-9]+','-',f"{b['batch_id']}-d_c1_humor_irony_scene_3".lower()).strip('-')[:170]
            tid=stable('dialogue_turn',f'{ds}:1')
            cur.execute("UPDATE dialogue_turns SET text=%s WHERE id=UUID_TO_BIN(%s,1)",('How would you respond without making the disagreement personal?',tid))
            b=json.loads((ROOT/'content/production/en/C2/c2-implicit-stance-v1.json').read_text())
            ds=re.sub('[^a-z0-9]+','-',f"{b['batch_id']}-d_c2_implicit_stance_scene_1".lower()).strip('-')[:170]
            tid=stable('dialogue_turn',f'{ds}:1')
            cur.execute("UPDATE dialogue_turns SET text=%s WHERE id=UUID_TO_BIN(%s,1)",('What do you make of the way this is being framed?',tid))
            cur.execute("UPDATE lessons SET status='approved'")
            conn.commit()
            print('Seeded stale source/approval fixtures in disposable CI database')
            return
        for path in (ROOT/'content/production/en').glob('*/*.json'):
            b=json.loads(path.read_text())
            for x in b['items']:
                d=x['data'];ext=x['external_id']
                if x['kind']=='exercise':
                    eid=stable('exercise',f"{b['batch_id']}:{ext}")
                    cur.execute("SELECT metadata,prompt,answer,status FROM exercises WHERE id=UUID_TO_BIN(%s,1)",(eid,))
                    row=cur.fetchone();assert row,ext
                    assert json.loads(row[0])['feedback']==d['feedback'],ext
                    assert json.loads(row[1])==d['prompt'],ext
                    assert json.loads(row[2])==d['answer'],ext
                    assert row[3]==d['status'],ext
                    if d.get('assessment'):
                        assert json.loads(row[0])['assessment']==d['assessment'],ext
                    cur.execute("SELECT value FROM exercise_options WHERE exercise_id=UUID_TO_BIN(%s,1) ORDER BY option_order",(eid,))
                    assert [json.loads(v[0]) for v in cur.fetchall()]==d.get('options',[]),ext
                    count+=1
                elif x['kind']=='utterance' and ext in {'u_tr_which_bus','u_jobs_office','u_c1_tech_ethics_consent','u_b1_work_responsibilities_workload','u_c2_lexical_precision_approximate','u_c2_argument_diagnostics_soundness'}:
                    eid=stable('utterance',f"{b['batch_id']}:{ext}")
                    cur.execute("SELECT l.code,t.text FROM utterance_texts t JOIN languages l ON l.id=t.language_id WHERE t.utterance_id=UUID_TO_BIN(%s,1)",(eid,))
                    actual=dict(cur.fetchall())
                    assert all(actual[k]==v for k,v in {**d['text'],**d['translations']}.items()),ext
                elif x['kind']=='dialogue' and b['cefr'] in {'C1', 'C2'}:
                    import re
                    ds=re.sub('[^a-z0-9]+','-',f"{b['batch_id']}-{ext}".lower()).strip('-')[:170]
                    for t in d['turns']:
                        tid=stable('dialogue_turn',f"{ds}:{t['order']}")
                        cur.execute("SELECT text,translation_hint FROM dialogue_turns WHERE id=UUID_TO_BIN(%s,1)",(tid,))
                        assert cur.fetchone()==(t['text'],t['translation_fa']),(ext,t['order'])
            for key in {x['data']['lesson_key'] for x in b['items']}:
                cur.execute("SELECT status,metadata FROM lessons WHERE slug=%s AND course_id=(SELECT id FROM courses WHERE slug='fa-en-us')",(key,))
                row=cur.fetchone();assert row,key
                assert row[0]==('approved' if review_state(b)['state']=='approved' else 'validated'),key
                quality=json.loads(row[1])['content_quality']
                assert quality['content_sha256']==content_hash(b),key
                assert quality['educational_review']==review_state(b)['state'],key
        print(json.dumps({'valid':True,'checked_exercises':count,'option_order_preserved':True}))
    finally:cur.close();conn.close()
if __name__=='__main__':main()

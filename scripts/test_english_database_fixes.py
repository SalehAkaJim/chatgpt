#!/usr/bin/env python3
"""Verify feedback persistence and corrected content in the disposable CI DB."""
import json
from pathlib import Path
from materialize_level import db_config,stable
import mysql.connector

ROOT=Path(__file__).resolve().parents[1]
def main():
    conn=mysql.connector.connect(**db_config());cur=conn.cursor()
    count=0
    try:
        for path in (ROOT/'content/production/en').glob('*/*.json'):
            b=json.loads(path.read_text())
            for x in b['items']:
                d=x['data'];ext=x['external_id']
                if x['kind']=='exercise':
                    eid=stable('exercise',f"{b['batch_id']}:{ext}")
                    cur.execute("SELECT metadata,prompt,answer FROM exercises WHERE id=UUID_TO_BIN(%s,1)",(eid,))
                    row=cur.fetchone();assert row,ext
                    assert json.loads(row[0])['feedback']==d['feedback'],ext
                    assert json.loads(row[1])==d['prompt'],ext
                    assert json.loads(row[2])==d['answer'],ext
                    cur.execute("SELECT value FROM exercise_options WHERE exercise_id=UUID_TO_BIN(%s,1) ORDER BY option_order",(eid,))
                    assert [json.loads(v[0]) for v in cur.fetchall()]==d.get('options',[]),ext
                    count+=1
                elif x['kind']=='utterance' and ext in {'u_tr_which_bus','u_jobs_office','u_c1_tech_ethics_consent','u_b1_work_responsibilities_workload'}:
                    eid=stable('utterance',f"{b['batch_id']}:{ext}")
                    cur.execute("SELECT l.code,t.text FROM utterance_texts t JOIN languages l ON l.id=t.language_id WHERE t.utterance_id=UUID_TO_BIN(%s,1)",(eid,))
                    actual=dict(cur.fetchall())
                    assert all(actual[k]==v for k,v in {**d['text'],**d['translations']}.items()),ext
        print(json.dumps({'valid':True,'checked_exercises':count,'option_order_preserved':True}))
    finally:cur.close();conn.close()
if __name__=='__main__':main()

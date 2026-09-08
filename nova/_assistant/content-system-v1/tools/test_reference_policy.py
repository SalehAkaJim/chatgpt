#!/usr/bin/env python3
import importlib.util, json, tempfile
from pathlib import Path
HERE=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('policy', HERE/'reference_policy.py'); policy=importlib.util.module_from_spec(spec); spec.loader.exec_module(policy)
raw={'level':'A1','courseCode':'en-fa','sources':[],'lexicalItems':[
 {'lemma':'please','cefrJEntries':[{'partOfSpeech':'adverb','level':'A1'},{'partOfSpeech':'verb','level':'B1'}],'openjamLevel':'A1','frequencyRank':20,'openjamWordId':'w1','senses':[{'partOfSpeech':'verb','definitionEn':'make happy','translationFa':'خوشحال کردن'}]},
 {'lemma':'name','cefrJEntries':[{'partOfSpeech':'noun','level':'A1'}],'openjamLevel':'A1','frequencyRank':50,'openjamWordId':'w2','senses':[{'partOfSpeech':'noun','definitionEn':'personal identifier','translationFa':'اسم'}]}
]}
pool=policy.make_pool(raw)
assert {(x['lemma'],x['partOfSpeech']) for x in pool['eligibleVariants']}=={('name','noun')}
please=next(x for x in pool['reviewVariants'] if x['lemma']=='please')
assert please['qualityScore']==60 and please['senses']==[]
with tempfile.TemporaryDirectory() as td:
    root=Path(td); (root/'0001').mkdir()
    (root/'0001'/'lesson.source.json').write_text(json.dumps({'levelKey':'A1','lessonKey':'L1','lexicalItems':[{'lemma':'please','partOfSpeech':'adverb','translationFa':'لطفا','senseKey':'polite','itemType':'word'},{'lemma':'name','partOfSpeech':'noun','translationFa':'اسم','senseKey':'name','itemType':'word'}]},ensure_ascii=False),encoding='utf-8')
    report=policy.compare(pool,root)
    assert report['summary']['translationMismatchesForReview']==0
    assert report['summary']['referenceReviewUnique']==1
print('reference policy tests: PASS')

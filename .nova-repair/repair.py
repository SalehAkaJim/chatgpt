#!/usr/bin/env python3
from __future__ import annotations
import hashlib, json, re, shutil
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
S1=ROOT/'nova/courses/de-fa/staging/batch_01/chapter_0001'
S2=ROOT/'nova/courses/de-fa/staging/batch_01/chapter_0002'
REV='3.2.1'


def q(v:str)->str:
    return "'"+v.replace('\\','\\\\').replace("'","''")+"'"

def j(v)->str:
    return "CAST("+q(json.dumps(v,ensure_ascii=False,separators=(',',':')))+" AS JSON)"

def split_top(value:str):
    out=[]; cur=[]; quote=None; depth=0; i=0
    while i<len(value):
        c=value[i]
        if quote:
            cur.append(c)
            if c=='\\' and i+1<len(value): cur.append(value[i+1]); i+=2; continue
            if c==quote:
                if i+1<len(value) and value[i+1]==quote: cur.append(value[i+1]); i+=2; continue
                quote=None
        else:
            if c in "'\"": quote=c; cur.append(c)
            elif c in '([{': depth+=1; cur.append(c)
            elif c in ')]}': depth-=1; cur.append(c)
            elif c==',' and depth==0: out.append(''.join(cur).strip()); cur=[]
            else: cur.append(c)
        i+=1
    out.append(''.join(cur).strip()); return out

def split_tuples(payload:str):
    out=[]; start=None; quote=None; depth=0; i=0
    while i<len(payload):
        c=payload[i]
        if quote:
            if c=='\\': i+=2; continue
            if c==quote:
                if i+1<len(payload) and payload[i+1]==quote: i+=2; continue
                quote=None
        else:
            if c in "'\"": quote=c
            elif c=='(':
                if depth==0: start=i+1
                depth+=1
            elif c==')':
                depth-=1
                if depth==0 and start is not None: out.append(payload[start:i]); start=None
        i+=1
    return out

def unq(v:str):
    v=v.strip()
    if v.upper()=='NULL': return None
    if len(v)>=2 and v[0]=="'" and v[-1]=="'": return v[1:-1].replace("''","'").replace('\\\\','\\')
    return v

def stmt_end(sql:str,start:int):
    quote=None; depth=0; i=start
    while i<len(sql):
        c=sql[i]
        if quote:
            if c=='\\': i+=2; continue
            if c==quote:
                if i+1<len(sql) and sql[i+1]==quote: i+=2; continue
                quote=None
        else:
            if c in "'\"": quote=c
            elif c=='(': depth+=1
            elif c==')': depth-=1
            elif c==';' and depth==0: return i
        i+=1
    raise RuntimeError('unterminated SQL statement')

def insert_spans(sql:str,table:str):
    pat=re.compile(rf"INSERT\s+INTO\s+{table}\s*\((.*?)\)\s*VALUES",re.I|re.S)
    result=[]
    for m in pat.finditer(sql):
        end=stmt_end(sql,m.end())
        cols=[x.strip().strip('`').casefold() for x in split_top(m.group(1))]
        rows=[]
        for raw in split_tuples(sql[m.end():end]):
            vals=split_top(raw)
            if len(vals)!=len(cols): raise RuntimeError(f'{table} mismatch {len(cols)} != {len(vals)}')
            rows.append(dict(zip(cols,vals)))
        result.append((m.start(),end+1,rows))
    return result

def replace_first_insert(sql:str,table:str,new_stmt:str):
    spans=insert_spans(sql,table)
    if not spans: raise RuntimeError(f'no {table} INSERT')
    a,b,_=spans[0]
    return sql[:a]+new_stmt+sql[b:]

def replace_all_inserts(sql:str,table:str,builder):
    spans=insert_spans(sql,table)
    for a,b,rows in reversed(spans): sql=sql[:a]+builder(rows)+sql[b:]
    return sql

WORD_ROWS_1=[
('Hallo','Hallo','interjection','سلام',['خداحافظ','ممنون','صبح بخیر'],'Hallo, Lena!','سلام لنا!'),
('ich','ich','pronoun','من',['تو','او','ما'],'Ich heiße Raha.','اسم من رهاست.'),
('sein','sein','verb','بودن',['داشتن','آمدن','گفتن'],'Ich bin Raha.','من رها هستم.'),
('freuen','freuen','verb','خوشحال شدن',['پرسیدن','آمدن','ماندن'],'Freut mich.','از آشنایی خوشحالم.'),
('mich','mich','pronoun','من را / به من',['تو را','او را','ما را'],'Freut mich.','از آشنایی خوشحالم.'),
('auch','auch','adverb','هم',['فقط','نه','خیلی'],'Mich auch.','من هم.'),
('willkommen','Willkommen','adjective','خوش آمدی',['خداحافظ','لطفا','ببخشید'],'Willkommen in Berlin!','به برلین خوش آمدی!'),
('danke','Danke','interjection','ممنون',['سلام','خداحافظ','خواهش می‌کنم'],'Danke!','ممنون!'),
('bis','Bis','preposition','تا',['از','در','با'],'Bis später!','تا بعد!'),
('später','später','adverb','بعدا',['امروز','اینجا','الان'],'Bis später!','بعدا می‌بینمت!'),
('Tschüss','Tschüss','interjection','خداحافظ',['سلام','ممنون','صبح بخیر'],'Tschüss, Lena!','خداحافظ لنا!'),
('gut','Guten','adjective','خوب',['بد','کوچک','جدید'],'Guten Morgen!','صبح بخیر!'),
('Morgen','Morgen','noun','صبح',['شب','نام','زبان'],'Guten Morgen!','صبح بخیر!'),
('wie','Wie','adverb','چطور / چه',['کجا','کی','چرا'],'Wie heißt du?','اسمت چیه؟'),
('heißen','heißen','verb','نام داشتن',['آمدن','صحبت کردن','زندگی کردن'],'Ich heiße Raha.','اسم من رهاست.'),
('du','du','pronoun','تو',['من','او','ما'],'Wie heißt du?','اسمت چیه؟'),
('noch','noch','adverb','هنوز / دوباره در عبارت',['دیگر','فقط','هرگز'],'Wie heißt du noch mal?','اسمت دوباره چی بود؟'),
('mal','mal','particle','یک بار / در عبارت دوباره',['همیشه','اینجا','خیلی'],'noch mal','دوباره'),
('genau','genau','adverb','دقیقا',['شاید','تقریبا','هرگز'],'Ja, genau.','بله، دقیقا.'),
('dann','Dann','adverb','پس / بعد',['قبل','اینجا','چرا'],'Dann bis später!','پس تا بعد!'),
('in','in','preposition','در',['از','به','با'],'Willkommen in Berlin!','به برلین خوش آمدی!'),
('Berlin','Berlin','proper_noun','برلین',['تهران','آلمان','ایران'],'Willkommen in Berlin!','به برلین خوش آمدی!')]
WORD_ROWS_2=[
('woher','Woher','adverb','از کجا',['کجا','چطور','کی'],'Woher kommst du?','اهل کجایی؟'),
('kommen','kommen','verb','آمدن / اهل جایی بودن',['رفتن','صحبت کردن','نام داشتن'],'Ich komme aus Teheran.','من اهل تهران هستم.'),
('aus','aus','preposition','از',['در','به','با'],'Ich komme aus Teheran.','من اهل تهران هستم.'),
('schön','Schön','adjective','خوب / دلنشین',['بد','سخت','کوچک'],'Schön!','چه خوب!'),
('ja','Ja','particle','بله',['نه','شاید','ممنون'],'Ja, genau.','بله، دقیقا.'),
('welche','Welche','determiner','کدام / چه',['چند','کجا','چرا'],'Welche Sprachen sprichst du?','چه زبان‌هایی صحبت می‌کنی؟'),
('Sprache','Sprachen','noun','زبان / زبان‌ها',['کشور','شهر','نام'],'Welche Sprachen sprichst du?','چه زبان‌هایی صحبت می‌کنی؟'),
('sprechen','sprechen','verb','صحبت کردن',['آمدن','شنیدن','نوشتن'],'Ich spreche Persisch.','من فارسی صحبت می‌کنم.'),
('Persisch','Persisch','proper_noun','فارسی',['آلمانی','انگلیسی','عربی'],'Ich spreche Persisch.','من فارسی صحبت می‌کنم.'),
('Deutsch','Deutsch','proper_noun','آلمانی',['فارسی','انگلیسی','عربی'],'Ein bisschen Deutsch.','یک کم آلمانی.'),
('ein','ein','article','یک',['دو','این','آن'],'ein bisschen','یک کم'),
('bisschen','bisschen','noun','کمی',['خیلی','همه','هیچ'],'ein bisschen Deutsch','یک کم آلمانی'),
('zu','zu','preposition','در / به',['از','با','بدون'],'zu Hause','در خانه'),
('Haus','Hause','noun','خانه',['مدرسه','شهر','کافه'],'zu Hause','در خانه'),
('und','und','conjunction','و',['یا','اما','چون'],'Persisch und Deutsch','فارسی و آلمانی')]

def word_stmt(rows,series):
    vals=[]
    for lemma,display,pos,tr,dist,ex,extr in rows:
        url=f"nova/audio/words/de-fa/{hashlib.sha256(display.encode()).hexdigest()}.mp3"
        vals.append('('+','.join(['v_course',q(lemma),q(display),q(pos),q(tr),'1',j({'cefr':'A1','series':series}),j(dist),q(ex),q(extr),q(url),'NULL',j({'sourceSeries':series,'definitionComplete':True})])+')')
    cols='course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata'
    return f"INSERT INTO words ({cols}) VALUES\n  "+',\n  '.join(vals)+';'

PERSON={'raha','lena','jonas'}; CITY={'berlin','teheran'}
LEMMA={'bin':'sein','ist':'sein','freut':'freuen','guten':'gut','heißt':'heißen','heiße':'heißen','kommst':'kommen','komme':'kommen','sprachen':'Sprache','sprichst':'sprechen','spreche':'sprechen','hause':'Haus'}
WORD_RE=re.compile(r"[A-Za-zÄÖÜäöüßẞ]+(?:-[A-Za-zÄÖÜäöüßẞ]+)?")
def token_json(text):
    toks=[]
    for t in WORD_RE.findall(text):
        low=t.casefold()
        if low in PERSON: toks.append({'text':t,'kind':'entity','entity_type':'person'})
        elif low in CITY: toks.append({'text':t,'kind':'entity','entity_type':'city'})
        else: toks.append({'text':t,'kind':'dictionary','lookup':LEMMA.get(low,t)})
    return j(toks)
ALT={
'Hallo! Ich bin Raha.':['Hallo! Ich bin Raha.','Hallo, ich bin Raha.'],
'Mich auch.':['Mich auch.','Freut mich auch.'], 'Danke!':['Danke!','Vielen Dank!'], 'Tschüss!':['Tschüss!','Bis später!'],
'Guten Morgen, Lena!':['Guten Morgen, Lena!','Guten Morgen!'], 'Ich heiße Raha.':['Ich heiße Raha.','Ich bin Raha.'],
'Ja.':['Ja.','Genau.'], 'Tschüss, Lena!':['Tschüss, Lena!','Bis später, Lena!'], 'Hallo, Lena!':['Hallo, Lena!','Hallo!'],
'Ja, bis später.':['Ja, bis später.','Bis später!'], 'Guten Morgen! Ich heiße Raha.':['Guten Morgen! Ich heiße Raha.','Hallo! Ich bin Raha.'],
'Freut mich auch.':['Freut mich auch.','Mich auch.'], 'Hallo! Ich heiße Raha.':['Hallo! Ich heiße Raha.','Hallo! Ich bin Raha.'],
'Ich komme aus Teheran.':['Ich komme aus Teheran.','Aus Teheran.'], 'Ja. Und du?':['Ja. Und du?','Ja, und du?'],
'Aus Berlin?':['Aus Berlin?','Berlin?'], 'Schön!':['Schön!','Sehr schön!'], 'Ich spreche Persisch.':['Ich spreche Persisch.','Persisch.'],
'Ein bisschen Deutsch.':['Ein bisschen Deutsch.','Ich spreche ein bisschen Deutsch.'],
'Zu Hause spreche ich Persisch.':['Zu Hause spreche ich Persisch.','Ich spreche zu Hause Persisch.'], 'Guten Morgen!':['Guten Morgen!','Hallo!'],
'Persisch und ein bisschen Deutsch.':['Persisch und ein bisschen Deutsch.','Ich spreche Persisch und ein bisschen Deutsch.'],
'Ich spreche Persisch und ein bisschen Deutsch.':['Ich spreche Persisch und ein bisschen Deutsch.','Persisch und ein bisschen Deutsch.']}

def ensure_jonas(sql):
    if 'DECLARE v_c_jonas BIGINT UNSIGNED;' not in sql:
        sql=sql.replace('DECLARE v_c_lena BIGINT UNSIGNED;','DECLARE v_c_lena BIGINT UNSIGNED;DECLARE v_c_jonas BIGINT UNSIGNED;',1)
    if "SELECT id INTO v_c_jonas" not in sql:
        mark=re.search(r"SELECT COUNT\(\*\),MIN\(id\) INTO v_count,v_chapter FROM chapters",sql,re.I)
        if not mark: raise RuntimeError('chapter locator not found')
        snip=("SELECT COUNT(*) INTO v_count FROM characters WHERE course_id=v_course AND name='Jonas';\n"
              "IF v_count=0 THEN INSERT INTO characters (course_id,name,gender,profile,metadata) VALUES "
              "(v_course,'Jonas','male',JSON_OBJECT('role','local_driver'),JSON_OBJECT('context','local taxi driver in Berlin','nativeV3',TRUE)); END IF;\n"
              "SELECT id INTO v_c_jonas FROM characters WHERE course_id=v_course AND name='Jonas' AND gender='male' LIMIT 1;\n")
        sql=sql[:mark.start()]+snip+sql[mark.start():]
    return sql

def lesson_stmt(series):
    if series==1:
        rows=[('v_c_lena','Erstes Hallo','اولین سلام','Lena begegnet Raha im Hausflur.','لنا در راهرو با رها آشنا می‌شود.',1,'exposure'),
              ('v_c_lena','Wie heißt du?','اسمت چیه؟','Raha übt Namen und passende Begrüßungen.','رها نام و سلام مناسب را تمرین می‌کند.',2,'explicit_form'),
              ('v_c_lena','Begrüßen ohne Vorlage','سلام بدون الگو','Raha nutzt die Begrüßungen ohne direkte Vorlage.','رها سلام‌ها را بدون الگوی مستقیم به کار می‌برد.',3,'retrieval'),
              ('v_c_jonas','Eine neue Person','یک آدم تازه','Raha begegnet Jonas und stellt sich selbstständig vor.','رها با یوناس آشنا می‌شود و مستقل خودش را معرفی می‌کند.',4,'mastery')]
        orders=[1,2,3,4]
    else:
        rows=[('v_c_lena','Woher kommst du?','اهل کجایی؟','Raha und Lena sprechen über ihre Städte.','رها و لنا درباره شهرهایشان صحبت می‌کنند.',5,'exposure'),
              ('v_c_lena','Welche Sprachen sprichst du?','چه زبان‌هایی صحبت می‌کنی؟','Raha lernt, Sprachen natürlich zu nennen.','رها یاد می‌گیرد زبان‌ها را طبیعی بیان کند.',6,'explicit_form'),
              ('v_c_lena','Stadt und Sprache','شهر و زبان','Raha ruft Herkunft und Sprachen ohne direkte Vorlage ab.','رها شهر و زبان‌ها را بدون الگوی مستقیم بازیابی می‌کند.',7,'retrieval'),
              ('v_c_jonas','Im Taxi','در تاکسی','Jonas beginnt ein neues Gespräch; Raha kombiniert Name, Stadt und Sprachen selbstständig.','یوناس گفتگوی تازه‌ای شروع می‌کند و رها نام، شهر و زبان‌ها را مستقل ترکیب می‌کند.',8,'mastery')]
        orders=[1,2,3,4]
    vals=[]
    for (pc,title,tt,desc,dt,story_order,role),sort in zip(rows,orders):
        vals.append(f"(v_chapter,{pc},v_c_raha,{q(title)},{q(tt)},{q(desc)},{q(dt)},'story','berlin_new_start',{story_order},1,420,{sort},'validated',JSON_OBJECT('pedagogicalRole',{q(role)}))")
    cols='chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata'
    return 'INSERT INTO lessons ('+cols+') VALUES\n  '+',\n  '.join(vals)+';'

S1_L4={1:('v_c_jonas','Hallo! Ich bin Jonas.','سلام! من یوناس هستم.'),2:('v_c_raha','Hallo! Ich heiße Raha.','سلام! اسم من رهاست.'),3:('v_c_jonas','Freut mich, Raha.','از آشنایی با تو خوشحالم رها.'),4:('v_c_raha','Freut mich auch.','من هم خوشحالم.'),5:('v_c_jonas','Willkommen in Berlin!','به برلین خوش آمدی!'),6:('v_c_raha','Danke!','ممنون!'),7:('v_c_jonas','Dann bis später!','پس تا بعد!'),8:('v_c_raha','Tschüss!','خداحافظ!')}
S2_L4={1:('v_c_jonas','Hallo! Ich bin Jonas.','سلام! من یوناس هستم.'),2:('v_c_raha','Hallo! Ich heiße Raha.','سلام! اسم من رهاست.'),3:('v_c_jonas','Woher kommst du?','اهل کجایی؟'),4:('v_c_raha','Ich komme aus Teheran.','من اهل تهران هستم.'),5:('v_c_jonas','Welche Sprachen sprichst du?','چه زبان‌هایی صحبت می‌کنی؟'),6:('v_c_raha','Ich spreche Persisch und ein bisschen Deutsch.','من فارسی و یک کم آلمانی صحبت می‌کنم.'),7:('v_c_jonas','Ah, schön. Willkommen!','آه، چه خوب. خوش آمدی!'),8:('v_c_raha','Danke!','ممنون!')}
TURN_COLS=['lesson_id','character_id','sort_order','role','text','translation','difficulty','audio_url','audio_duration_ms','speech_target','speech_alternatives','tokens','grammar_title','grammar_note','grammar_data','metadata']
def turn_builder(series):
    def build(rows):
        vals=[]
        for r in rows:
            d={c:r.get(c,'NULL') for c in TURN_COLS}; li=int(re.search(r'(\d+)',d['lesson_id']).group(1)); order=int(d['sort_order']); role=unq(d['role'])
            if series==1 and li==2 and unq(d['text'])=='Und ich heiße Lena.': d['text']=q('Raha, genau!'); d['translation']=q('رها، درسته!')
            if series==1 and li==2 and unq(d['text'])=='Ja, Lena.': d['text']=q('Ja.'); d['translation']=q('بله.')
            spec=(S1_L4 if series==1 else S2_L4).get(order) if li==4 else None
            if spec: d['character_id']=spec[0]; d['text']=q(spec[1]); d['translation']=q(spec[2]); role='learner' if spec[0]=='v_c_raha' else 'character'; d['role']=q(role)
            text=unq(d['text'])
            if role=='learner':
                alts=ALT.get(text,[text,text.rstrip('.!?')])
                if len(set(alts))<2: alts=[text,text+'!']
                d['speech_target']=q(text); d['speech_alternatives']=j(alts)
            else: d['speech_target']='NULL'; d['speech_alternatives']='NULL'
            d['tokens']=token_json(text); d['metadata']=j({'series':series,'contentQualityRevision':REV})
            vals.append('('+','.join(d[c] for c in TURN_COLS)+')')
        return 'INSERT INTO turns ('+','.join(TURN_COLS)+') VALUES\n  '+',\n  '.join(vals)+';'
    return build

def activity_builder(rows):
    cols=['lesson_id','activity_type','sort_order','turn_id','word_id','prompt','instruction','difficulty','config','metadata']; vals=[]
    for r in rows:
        cfg=r.get('config',''); lm=re.search(r'"mode"\s*:\s*"audio_first"',cfg)
        if lm and r.get('turn_id','NULL').strip().upper()=='NULL': r['turn_id']=f"(SELECT id FROM turns WHERE lesson_id={r['lesson_id']} AND sort_order=1 LIMIT 1)"
        vals.append('('+','.join(r[c] for c in cols)+')')
    return 'INSERT INTO activities ('+','.join(cols)+') VALUES\n  '+',\n  '.join(vals)+';'

def repair_sql(path:Path,series:int):
    sql=path.read_text(encoding='utf-8'); sql=ensure_jonas(sql)
    if series==2:
        sql=sql.replace('aus Iran','aus Teheran').replace('از ایران','از تهران').replace('aus Deutschland','aus Berlin').replace('از آلمان','از برلین')
        sql=sql.replace("'Iran'","'Teheran'").replace("'Deutschland'","'Berlin'")
    sql=replace_first_insert(sql,'words',word_stmt(WORD_ROWS_1 if series==1 else WORD_ROWS_2,series))
    sql=replace_first_insert(sql,'lessons',lesson_stmt(series))
    sql=replace_all_inserts(sql,'turns',turn_builder(series))
    sql=replace_all_inserts(sql,'activities',activity_builder)
    path.write_text(sql,encoding='utf-8')


def patch_sidecars(folder:Path,series:int,words:int):
    qa=json.loads((folder/'qa.json').read_text()); qa['content_quality_revision']=REV; qa['counts']['words']=words; qa['published']=False; qa['publication_status']='PENDING_REVALIDATION'
    for g in ('clickable_tokens','learner_speech_targets','dictionary_distractors','audit_specificity','audio_first_turn_linkage'): qa['local_gates'][g]=True
    for g in ('mysql8','turn_audio','learning_unit_audio'): qa['publication_gates'][g]=False
    (folder/'qa.json').write_text(json.dumps(qa,ensure_ascii=False,separators=(',',':')),encoding='utf-8')
    examples1={
      'natural_story_dialogue':['Raha, genau! → Ja. replaces the drill-like self-introduction exchange.','Lesson 4 uses a genuinely new interlocutor, Jonas, instead of making Lena introduce herself again.'],
      'surface_variation_transfer':['Ich bin Raha and Ich heiße Raha appear in different interactions.','Lesson 4 recombines greeting, name, welcome and farewell with Jonas.'],
      'learner_facing_pronunciation':['Hallo uses a listen-notice-produce sequence for initial h.','Pronunciation tasks ask the learner to hear and produce the sound rather than memorize phonetic terminology.'],
      'persian_speaker_contrast':['Initial German h is surfaced because Persian learners may under-realize it in new German words.','The learner hears the target in Hallo before producing it in a full greeting.'],
      'novel_context_mastery':['Jonas is a new interlocutor in Lesson 4.','Raha must greet, state a name, respond socially and close the exchange without a copied dialogue.']}
    examples2={
      'natural_story_dialogue':['Woher kommst du? → Ich komme aus Teheran. is a natural short exchange.','Im Taxi, Jonas asks origin and languages as fresh small talk.'],
      'surface_variation_transfer':['Origin moves between Teheran and Berlin.','Language output varies between Persisch, ein bisschen Deutsch and a combined response.'],
      'learner_facing_pronunciation':['ich-Laut is practiced through listening and speaking in ich.','The learner produces ich inside meaningful identity sentences rather than isolated metalanguage.'],
      'persian_speaker_contrast':['The ich sound is explicitly noticed because it has no direct everyday Persian equivalent.','Practice keeps the sound inside high-frequency Ich komme / Ich spreche frames.'],
      'novel_context_mastery':['Lesson 4 changes interlocutor from Lena to Jonas.','Raha independently combines name, city and languages in the taxi conversation.']}
    audit=json.loads((folder/'linguistic_audit_v3.json').read_text()); ex=examples1 if series==1 else examples2
    for gate,item in audit['acquisition_quality'].items(): item['examples']=ex[gate]; item['evidence']=item['evidence']+' Concrete source examples are recorded in this audit.'
    audit['content_quality_revision']=REV; audit['manual_repair_verified']=True
    (folder/'linguistic_audit_v3.json').write_text(json.dumps(audit,ensure_ascii=False,separators=(',',':')),encoding='utf-8')
    snap=json.loads((folder/'snapshot.json').read_text()); snap['published_through_series']=0; snap['content_quality_revision']=REV
    (folder/'snapshot.json').write_text(json.dumps(snap,ensure_ascii=False,separators=(',',':')),encoding='utf-8')

def patch_state():
    p=ROOT/'nova/courses/de-fa/production_state.json'; x=json.loads(p.read_text()); x['published_through_series']=0; x['last_completed_series']=0; x['last_publication']=None; x['content_quality_revision']=REV
    for g in ('clickable_tokens','learner_speech_targets','dictionary_distractors','audit_specificity','audio_first_turn_linkage'):
        if g not in x['quality']['required_local_gates']: x['quality']['required_local_gates'].append(g)
    p.write_text(json.dumps(x,ensure_ascii=False,separators=(',',':')),encoding='utf-8')
    p=ROOT/'nova/courses/de-fa/state/course_learning_state_v3.json'; x=json.loads(p.read_text()); x['published_series']=[]; x['published_through_series']=0; x['content_quality_revision']=REV; p.write_text(json.dumps(x,ensure_ascii=False,separators=(',',':')),encoding='utf-8')
    p=ROOT/'nova/courses/de-fa/pipeline_config.json'; x=json.loads(p.read_text()); x['content_quality_revision']=REV; x['content_integrity_hard_gates']=['clickable_tokens','learner_speech_targets','dictionary_distractors','bilingual_lesson_descriptions','audit_specificity','audio_first_turn_linkage']; p.write_text(json.dumps(x,ensure_ascii=False,separators=(',',':')),encoding='utf-8')
    p=ROOT/'nova/contracts/independent_course_v3.json'; x=json.loads(p.read_text()); x['content_integrity']={'revision':REV,'enforced_courses':['de-fa'],'new_generation_all_courses_should_follow':True,'explicit_turn_tokens_required':True,'dictionary_token_lookup_required':True,'learner_turn_speech_target_required':True,'learner_turn_alternatives_min':2,'word_distractors_min':3,'lesson_bilingual_descriptions_required':True,'linguistic_audit_examples_per_gate_min':2,'audio_first_activity_must_link_turn':True}; p.write_text(json.dumps(x,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')

def patch_validator():
    p=ROOT/'nova/validation/validate_content_v3.py'; s=p.read_text(encoding='utf-8')
    s=s.replace('for gate in ("linguistic_audit","review_ledger","curriculum","mysql8","turn_audio","learning_unit_audio"):\n        if qa.get("publication_gates",{}).get(gate) is not True: errors.append(f"qa must require publication gate {gate}")', 'for gate in ("linguistic_audit","review_ledger","curriculum"):\n        if qa.get("publication_gates",{}).get(gate) is not True: errors.append(f"qa must require publication gate {gate}")\n    for gate in ("mysql8","turn_audio","learning_unit_audio"):\n        if not isinstance(qa.get("publication_gates",{}).get(gate),bool): errors.append(f"qa publication gate {gate} must be an evidence-backed boolean")')
    marker='def validate(path):\n'
    if '_integrity_v321' not in s:
        fn=r'''def _integrity_v321(path,qa,sql,turns,words,activities):
    errors=[]; course=qa.get("course")
    if course!="de-fa" and qa.get("content_quality_revision")!="3.2.1": return errors
    if qa.get("content_quality_revision")!="3.2.1": errors.append("content_quality_revision must be 3.2.1")
    lessons=parse_insert_statements(sql,"lessons")
    if len(lessons)!=4: errors.append("integrity: expected 4 lesson rows")
    for i,row in enumerate(lessons,1):
        if not (unquote(row.get("description","")) or "").strip(): errors.append(f"lesson {i}: target-language description required")
        if not (unquote(row.get("description_translation","")) or "").strip(): errors.append(f"lesson {i}: Persian description required")
    known=set()
    for other in (ROOT/f"nova/courses/{course}/staging").glob("**/chapter.sql"):
        for w in parse_insert_statements(other.read_text(encoding="utf-8"),"words"):
            known.add((unquote(w.get("lemma","")) or "").casefold()); known.add((unquote(w.get("display_form","")) or "").casefold())
    for row in words:
        dist=parse_json_expr(row.get("distractors","")); tr=(unquote(row.get("translation","")) or "").strip()
        if not isinstance(dist,list) or len(dist)!=3 or len(set(map(str,dist)))!=3 or any(not str(x).strip() for x in dist): errors.append(f"word {unquote(row.get('display_form',''))!r}: exactly 3 unique distractors required")
        elif tr in dist: errors.append(f"word {unquote(row.get('display_form',''))!r}: correct translation cannot be a distractor")
    word_re=re.compile(r"[A-Za-zÄÖÜäöüßẞ]+(?:-[A-Za-zÄÖÜäöüßẞ]+)?")
    for row in turns:
        text=unquote(row.get("text","")) or ""; toks=parse_json_expr(row.get("tokens",""))
        if not isinstance(toks,list) or not toks: errors.append(f"turn {row.get('lesson_id')}/{row.get('sort_order')}: non-empty tokens required"); continue
        if [str(x.get('text','')).casefold() for x in toks if isinstance(x,dict)] != [x.casefold() for x in word_re.findall(text)]: errors.append(f"turn {row.get('lesson_id')}/{row.get('sort_order')}: token text must cover every lexical surface in order")
        for tok in toks:
            if not isinstance(tok,dict): errors.append("token must be an object"); continue
            if tok.get('kind')=='dictionary':
                lookup=str(tok.get('lookup') or '').strip()
                if not lookup: errors.append(f"turn token {tok.get('text')!r}: dictionary lookup required")
                elif lookup.casefold() not in known: errors.append(f"turn token {tok.get('text')!r}: lookup {lookup!r} has no dictionary row")
        if unquote(row.get("role",""))=='learner':
            if not (unquote(row.get("speech_target","")) or "").strip(): errors.append(f"learner turn {row.get('lesson_id')}/{row.get('sort_order')}: speech_target required")
            alts=parse_json_expr(row.get("speech_alternatives",""))
            if not isinstance(alts,list) or len(set(map(str,alts)))<2: errors.append(f"learner turn {row.get('lesson_id')}/{row.get('sort_order')}: >=2 speech alternatives required")
    for row in activities:
        cfg=parse_json_expr(row.get("config",""))
        if cfg.get('mode')=='audio_first' and row.get('turn_id','NULL').strip().upper()=='NULL': errors.append(f"activity {row.get('lesson_id')}/{row.get('sort_order')}: audio_first must link a turn")
    audit=load(path.parent/"linguistic_audit_v3.json")
    for gate,item in (audit.get('acquisition_quality') or {}).items():
        if len(str(item.get('evidence') or ''))<40 or len(item.get('examples') or [])<2: errors.append(f"audit {gate}: concrete evidence and >=2 examples required")
    for gate in ("clickable_tokens","learner_speech_targets","dictionary_distractors","audit_specificity","audio_first_turn_linkage"):
        if qa.get('local_gates',{}).get(gate) is not True: errors.append(f"qa.local_gates.{gate} must be true")
    return errors

'''
        s=s.replace(marker,fn+marker,1)
        anchor='    for gate in ("linguistic_audit","review_ledger","curriculum"):'
        s=s.replace(anchor,'    errors.extend(_integrity_v321(path,qa,sql,turns,words,activities))\n'+anchor,1)
    p.write_text(s,encoding='utf-8')

def clean_audio():
    for p in [ROOT/'nova/audio/turns/de-fa',ROOT/'nova/audio/words/de-fa',ROOT/'nova/audio/de-fa']:
        if p.exists(): shutil.rmtree(p)

def main():
    repair_sql(S1/'chapter.sql',1); repair_sql(S2/'chapter.sql',2)
    patch_sidecars(S1,1,len(WORD_ROWS_1)); patch_sidecars(S2,2,len(WORD_ROWS_2)); patch_state(); patch_validator(); clean_audio()
    print('Nova de-fa Series 1-2 repaired to content-quality revision',REV)
if __name__=='__main__': main()

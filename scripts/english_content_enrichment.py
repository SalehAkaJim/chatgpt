"""Apply reviewed English corrections, teaching additions and answer feedback.

Content stays deterministic. Runtime option/token shuffling and grading policy
are deliberately independent of this enrichment pass.
"""
from __future__ import annotations

import copy
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DATA = ROOT / 'content' / 'enrichment' / 'en'

# Exact edits propagate to all dependent translations/options and source specs.
REPLACEMENTS = {
    "'Concern' is only an approximate label here; 'misgiving' captures the speaker's hesitant support more precisely.":
        "'Misgiving' conveys doubt or unease; whether the speaker supports the proposal must be established from the wider context.",
    'اینجا concern فقط یک برچسب تقریبیه؛ misgiving حمایت همراه با تردید گوینده رو دقیق‌تر می‌رسونه.':
        'misgiving تردید یا نگرانی را می‌رساند؛ اینکه گوینده از پیشنهاد حمایت می‌کند یا نه باید از بافت گسترده‌تر مشخص شود.',
    'For the argument to be sound, we need both valid reasoning and premises that are actually credible.':
        'For a deductive argument to be sound, its reasoning must be valid and all of its premises must be true.',
    'برای اینکه استدلال واقعاً درست و محکم باشه، هم منطق معتبر می‌خوایم و هم مقدماتی که واقعاً قابل اعتماد باشن.':
        'برای sound بودن یک استدلال قیاسی، صورت استدلال باید معتبر و همهٔ مقدمات آن صادق باشند.',
    'این ایده را طبیعی و کامل به انگلیسی بگو: برای اینکه استدلال واقعاً درست و محکم باشه، هم منطق معتبر می‌خوایم و هم مقدماتی که واقعاً قابل اعتماد باشن.':
        'این ایده را طبیعی و کامل به انگلیسی بگو: برای sound بودن یک استدلال قیاسی، صورت استدلال باید معتبر و همهٔ مقدمات آن صادق باشند.',
    'حجم کارم این هفته بیشتره، پس باید یک کار غیرضروری رو بندازم هفته بعد.':
        'حجم کارم این هفته بیشتره، پس باید یک کار غیرفوری رو بندازم هفته بعد.',
    'رضایت وقتی ضعیفه که افراد فنی موافقت کنن ولی نفهمن چه داده‌ای جمع می‌شه یا چطور استفاده می‌شه.':
        'رضایت وقتی ضعیفه که افراد فقط از نظر صوری موافقت کنن، بی‌آنکه بفهمن چه داده‌ای جمع می‌شه یا چطور ممکنه استفاده بشه.',
    'تصمیم سلامتی ممکنه شامل سنجیدن یک فایده نسبتاً محتمل در برابر ریسکی کم‌احتمال ولی جدی باشه.':
        'تصمیم مربوط به سلامتی ممکنه شامل سنجیدن یک فایده کوچک اما محتمل در برابر ریسکی کم‌احتمال ولی جدی باشه.',
    'Use too + adjective for more than wanted, and adjective/noun + enough for a sufficient amount.':
        'Use too + adjective for more than wanted, adjective/adverb + enough for a sufficient degree, and enough + noun for a sufficient amount.',
    'Go until the bridge.': 'Keep going until you reach the bridge.',
    'Which bus do I take to downtown?': 'Which bus should I take downtown?',
    'I work at an office.': 'I work in an office.',
    'before اسم از because of و due to و برای نتیجه از therefore، so یا as a result استفاده می‌کنیم.':
        'پیش از عبارت اسمی از because of و due to و برای بیان نتیجه از therefore، so یا as a result استفاده می‌کنیم.',
}

FORM_NOTES = {
    'eyes': 'eyes جمع eye است؛ are با اسم جمع می‌آید.',
    'by': 'by + وسیلهٔ نقلیه روش رفت‌وآمد را نشان می‌دهد؛ by bus بدون a می‌آید.',
    "'s": "پسوند ’s بعد از نام، رابطهٔ مالکیت یا نسبت را نشان می‌دهد؛ Ali’s sister یعنی خواهر علی.",
    'at': 'در at the corner، حرف اضافهٔ at یک نقطهٔ مشخص در مسیر را نشان می‌دهد.',
    'is': 'is شکل فعل be برای فاعل مفرد است؛ در there is نیز وجود یک چیز مفرد را بیان می‌کند.',
    'a': 'برای معرفی یک شغلِ مفرد که با صدای همخوان آغاز می‌شود از a استفاده می‌کنیم؛ a teacher.',
    'have': 'have در ترکیب have a headache به معنی سردرد داشتن است.',
    'has': 'با he، she و it، شکل have در حال ساده has است.',
    'wakes': 'با she در حال ساده به فعل wake پسوند s اضافه می‌شود؛ زمان جمله یک عادت روزانه است.',
    'likes': 'در جملهٔ مثبتِ حال ساده با she از likes استفاده می‌کنیم.',
    'do': 'برای سؤال حال ساده با you از Do + you + شکل پایهٔ فعل استفاده می‌کنیم.',
    'twice': 'twice یعنی دو بار؛ Tuesday و Friday دو نوبت در یک هفته‌اند.',
    'grow': 'grow up یعنی بزرگ شدن؛ بعد از did شکل پایهٔ grow می‌آید.',
    'too': 'too + صفت، بیشتر بودن از حد مطلوب را می‌رساند؛ too noisy یعنی بیش از حد پرسروصدا.',
    'enough': 'enough پیش از اسم و پس از صفت می‌آید: enough space، light enough.',
    'could': 'could در این جمله یک پیشنهاد یا امکان را بیان می‌کند؛ بعد از آن شکل پایهٔ فعل می‌آید.',
    'to': 'to پیش از شکل پایهٔ فعل می‌آید؛ در would like to و in order to جزئی از ساختار است.',
    'works': 'works for me دربارهٔ زمان یا برنامه یعنی «برای من مناسب است».',
    'leaves': 'برای برنامهٔ حرکت وسایل نقلیه می‌توان از حال ساده استفاده کرد؛ با the train از leaves استفاده می‌شود.',
    'free': 'free دربارهٔ وقتِ شخص یعنی «وقت آزاد داشتن / مشغول نبودن».',
    'attached': 'attach a file یعنی فایل را پیوست کردن؛ پس از have در این جمله، attached اسم مفعول است.',
    'back': 'call someone back یعنی به کسی که قبلاً تماس گرفته دوباره زنگ زدن.',
    'across': 'across from یعنی روبه‌روی چیزی؛ from بخش ثابت این ترکیب است.',
    'about': 'How about you? پرسش را به مخاطب برمی‌گرداند: «تو چطور؟»',
    'because': 'because یک جملهٔ دلیل را به نتیجه وصل می‌کند؛ بعد از آن فاعل و فعل می‌آیند.',
    'throat': 'sore throat یعنی گلودرد؛ sore محل درد را توصیف می‌کند.',
    'will': 'will برای بیان پیش‌بینی به کار می‌رود و بعد از آن شکل پایهٔ فعل می‌آید.',
    'visited': 'visited شکل گذشتهٔ visit است؛ در پاسخ هدف، دیدار در یک شنبهٔ گذشته روایت می‌شود.',
    'went': 'went شکل گذشتهٔ go است؛ went out یعنی بیرون رفت.',
    'did': 'برای پرسش دربارهٔ گذشته از did استفاده می‌کنیم و فعل اصلی به شکل پایه می‌آید.',
    'going': 'be going to + فعل برای بیان قصد یا برنامه به کار می‌رود.',
    'only': 'an only child یعنی فرزند تنها؛ یعنی فرد خواهر یا برادری ندارد.',
    'than': 'than دو طرف مقایسه را به هم وصل می‌کند؛ more outgoing than یعنی معاشرتی‌تر از.',
    'happened': 'happened گذشتهٔ happen است؛ What happened next? یعنی بعد چه اتفاقی افتاد؟',
    'with': 'come with در سفارش غذا یعنی چه چیزی همراه غذا ارائه می‌شود.',
    'for': 'for + مدت زمان، طول یک بازه را بیان می‌کند؛ مانند for ten minutes یا for three weeks.',
    'bottles': 'بعد از two، اسم شمارش‌پذیر bottle جمع می‌شود؛ water خودِ ماده و bottles ظرف‌های آن است.',
    'few': 'a few پیش از اسم جمع شمارش‌پذیر می‌آید و یعنی چند تا؛ a few apples.',
    'little': 'a little پیش از اسم غیرقابل‌شمارش می‌آید و یعنی کمی؛ a little milk.',
    'have to': 'have to الزام را بیان می‌کند؛ پس از آن شکل پایهٔ فعل می‌آید.',
    'should': 'should برای توصیه به کار می‌رود؛ پس از آن شکل پایهٔ فعل می‌آید.',
    "mustn't": 'mustn’t ممنوعیت را بیان می‌کند؛ don’t have to یعنی الزامی نیست و معنی متفاوتی دارد.',
    "couldn't": 'couldn’t یعنی در گذشته توانایی انجام کار را نداشتم؛ فعل بعد از آن شکل پایه دارد.',
    'backed up': 'back up یعنی نسخهٔ پشتیبان گرفتن؛ have been backed up ساختار مجهولِ حال کامل است.',
    'were': 'If I were you الگوی رایج و معیار برای نصیحت فرضی است؛ were اینجا گذشتهٔ واقعی را روایت نمی‌کند.',
    'held': 'held اسم مفعول hold است؛ is held یعنی برگزار می‌شود و ساختار مجهول دارد.',
    'waiting': 'بعد از avoid از فعل با ing استفاده می‌کنیم؛ avoid waiting.',
    'asked': 'should have + اسم مفعول دربارهٔ کاری است که بهتر بود در گذشته انجام می‌دادیم.',
    'meeting': 'am meeting برای قرارِ تنظیم‌شدهٔ آینده به کار رفته است.',
    'replaced': 'have/get + مفعول + اسم مفعول یعنی کار را به شخص دیگری سپردن؛ مثل تعویض باتری توسط تعمیرکار.',
    'told': 'tell در این کاربرد مفعول شخص می‌گیرد؛ told me یعنی به من گفت.',
    'dropped': 'dropped یک اتفاق کوتاه در گذشته است که میان یک کارِ در حال انجام رخ داده است.',
    'would': 'در نتیجهٔ شرطی فرضی از would + فعل پایه استفاده می‌کنیم.',
    'but': 'but دو دیدگاه یا واقعیت متضاد را به هم وصل می‌کند.',
    'leaving': 'در get used to، واژهٔ to حرف اضافه است و بعد از آن اسم یا فعل با ing می‌آید.',
    'pay': 'بعد از would rather فعل پایه می‌آید؛ would rather pay یعنی ترجیح می‌دهم بپردازم.',
    'moving': 'بعد از How about برای پیشنهادِ انجام یک کار از فعل با ing استفاده می‌کنیم.',
    'collected': 'will be + اسم مفعول ساختار مجهول آینده است؛ collected یعنی جمع‌آوری‌شده.',
    'are': 'در پرسش غیرمستقیم، ترتیب خبری حفظ می‌شود: what time the guests are arriving.',
    'since': 'since نقطهٔ شروع یک وضعیت را مشخص می‌کند؛ پس از since می‌تواند یک جمله دربارهٔ زمان شروع بیاید.',
    'stay': 'help + شخص + فعل پایه ساختاری رایج است؛ stay focused یعنی متمرکز ماندن.',
    'due': 'due to + عبارت اسمی برای بیان علت است؛ due to the problem یعنی به دلیل مشکل.',
    'contributed': 'contribute to یعنی در شکل‌گیری چیزی نقش داشتن، بدون اینکه الزاماً تنها علت آن باشد.',
    'key': 'key در key point صفت است و یعنی نکتهٔ اصلی یا مهم.',
    'ingredients': 'ingredients مواد تشکیل‌دهندهٔ غذا یا سس هستند؛ شکل جمع با are هماهنگ است.',
    'fair': 'a fair point یعنی نکته‌ای منصفانه یا قابل‌قبول؛ برای پذیرفتن بخشی از حرف طرف مقابل کاربرد دارد.',
    'residents': 'residents یعنی ساکنان یک محل؛ پاسخ هدف به نگرانی اهالی دربارهٔ سرویس اتوبوس اشاره دارد.',
    'tell': 'tell someone that ... یعنی مطلبی را به کسی اطلاع دادن؛ everyone مفعول شخص است.',
    'left': 'had left گذشتهٔ کامل است؛ حرکت قطار پیش از رسیدن گوینده اتفاق افتاده است.',
    'assumed': 'assumed یعنی بدون بررسی، چیزی را درست فرض کرد؛ guessing نیز در جمله همین نبودِ بررسی را روشن می‌کند.',
    'hindsight': 'in hindsight یعنی با نگاه به گذشته و اطلاعاتی که اکنون داریم.',
    'misfired': 'وقتی یک joke misfires، شوخی اثر موردنظر را نمی‌گذارد یا بد برداشت می‌شود.',
    'unfolding': 'a story is unfolding یعنی ماجرا هنوز در حال شکل‌گرفتن است؛ برای همین نتیجه‌ها موقتی‌اند.',
    'positions': 'positions در مذاکره یعنی موضع‌های اعلام‌شده؛ ممکن است با منافع زیربنایی افراد فرق داشته باشند.',
    'legitimate': 'legitimate دربارهٔ نهاد یعنی دارای مشروعیت؛ اطاعت در این جمله از پذیرفتن حقِ اعمال اقتدار ناشی می‌شود.',
    'converge': 'converge on یعنی در یک نتیجه همگرا بودن؛ diverge on یعنی دربارهٔ موضوعی اختلاف داشتن.',
    'prediction': 'prediction یعنی پیش‌بینی؛ prognosis برآورد روند احتمالی بیماری است و قطعیت نتیجه را تضمین نمی‌کند.',
}

def replace_values(value):
    if isinstance(value, str):
        return REPLACEMENTS.get(value, value)
    if isinstance(value, list):
        return [replace_values(x) for x in value]
    if isinstance(value, dict):
        return {k: replace_values(v) for k, v in value.items()}
    return value

def norm(text):
    return re.sub(r'[^a-z0-9]+', ' ', text.lower()).strip()

def feedback_for(item, items):
    d = item['data']; p = d['prompt']; a = d['answer']; typ = d['exercise_type']
    vocabulary = {norm(x['data'].get('forms', {}).get('en', '')):
                  x['data'].get('translations', {}).get('fa', '')
                  for x in items if x['kind'] == 'concept'}
    pairs = {}
    for x in items:
        if x['kind'] == 'utterance':
            pairs[norm(x['data']['text'].get('en', ''))] = x['data'].get('translations', {}).get('fa', '')
        if x['kind'] == 'dialogue':
            for turn in x['data']['turns']:
                pairs[norm(turn['text'])] = turn.get('translation_fa', '')
    if typ == 'fill_blank':
        target = str(a['value']); source = p.get('text', '').replace('___', target)
        if target.lower() == 'like':
            note = ('would like برای درخواست مؤدبانه به کار می‌رود؛ I’d like یعنی می‌خواهم.' if "I'd" in source
                    else 'What is someone like? دربارهٔ شخصیت است؛ پاسخ از ویژگی‌هایی مثل friendly و patient می‌گوید.' if "What's" in source
                    else 'like برای بیان علاقه است؛ با I شکل پایهٔ like می‌آید.')
        elif target.lower() == 'on':
            note = ('try on یعنی لباس را برای امتحان‌کردن پوشیدن.' if 'try' in source.lower()
                    else 'پیش از نام روز هفته از on استفاده می‌کنیم؛ on Monday.')
        elif target.lower() == 'by' and 'Thursday' in source:
            note = 'by Thursday یعنی حداکثر تا پنجشنبه؛ by مهلت پایان کار را مشخص می‌کند.'
        elif target.lower() == 'have' and 'rather' in source:
            note = 'بعد از would rather فعل پایه می‌آید؛ have something lighter اینجا یعنی غذای سبک‌تری خوردن.'
        elif target.lower() == 'to' and 'According' in source:
            note = 'According to یعنی طبقِ یا به گفتهٔ؛ پس از آن منبع اطلاعات می‌آید.'
        else:
            meaning = vocabulary.get(norm(target))
            note = FORM_NOTES.get(target.lower()) or (f'«{target}» در این درس یعنی «{meaning}».' if meaning else '')
        if not note:
            raise ValueError(f"Missing reviewed fill explanation: {item['external_id']} / {target}")
        return {'explanation_fa': note, 'model_answer': source,
                'retry_tip_fa': 'پیش از انتخاب، معنی جمله و شکل کلمهٔ کنار جای خالی را دوباره بررسی کن.'}
    if typ == 'translation':
        return {'explanation_fa': 'معنی عبارت: '+ ' / '.join(a['accepted']),
                'model_answer': a['accepted'][0], 'source_en': p.get('en', ''),
                'retry_tip_fa': 'معنی عبارت را به فارسی طبیعی بازگو کن؛ لازم نیست ترجمه کلمه‌به‌کلمه باشد.'}
    if typ in {'speaking', 'sentence_building'}:
        source = a.get('expected_text') or a.get('text') or ' '.join(a.get('tokens', [])) or (a.get('accepted') or [''])[0]
        if not source: source = str(a.get('value', ''))
        meaning = pairs.get(norm(source)) or p.get('fa') or p.get('value', '')
    else:
        source = p.get('audio_text') or p.get('en') or p.get('text') or p.get('value', '')
        target = str(a.get('value', ''))
        if not re.search('[a-zA-Z]', str(source)):
            source = target if re.search('[a-zA-Z]', target) else ''
        if not source:
            fa_key = lambda value: re.sub(r'[\s،؛؟.!?\u200c]+', '', str(value))
            source = next((en for en, fa in pairs.items() if fa_key(fa)==fa_key(target)), '')
            if not source:
                fragments=re.findall(r"[A-Za-z][A-Za-z '\u2019?/-]*",p.get('fa') or p.get('instruction_fa') or '')
                source=max(fragments,key=len,default='').strip()
        meaning = pairs.get(norm(str(source))) or (target if re.search('[\u0600-\u06ff]', target) else vocabulary.get(norm(target), ''))
    source = str(source)
    clues = [(en, fa) for en, fa in vocabulary.items() if en and fa and
             (' '+en+' ') in (' '+norm(source)+' ')]
    clues.sort(key=lambda x: -len(x[0]))
    clue = '؛ '.join(f'«{en}»: «{fa}»' for en, fa in clues[:2])
    # Specific learning evidence, never an assertion that every distractor is invalid.
    detail = ('معنی جمله: '+str(meaning)) if meaning and meaning != source else ''
    if clue: detail += ('\n' if detail else '') + 'نکتهٔ واژگانی: '+clue
    if typ == 'sentence_building':
        spelling = all(len(t) == 1 and t.isalpha() for t in a.get('tokens', []))
        detail += ('\n' if detail else '') + ('نام را با گفتن نام هر حرف به ترتیب هجی کن؛ این فعالیت ساختن جمله نیست.' if spelling else 'جملهٔ الگو را یک‌بار کامل بخوان؛ سپس جای فعل و عبارت زمان یا مکان را در آن پیدا کن.')
    if typ == 'speaking':
        detail += ('\n' if detail else '') + 'مدل را با گروه‌های معنایی کوتاه تمرین کن؛ میان کلماتِ یک گروه مکث اضافی نگذار.'
    if typ == 'listening':
        detail += ('\n' if detail else '') + 'دوباره گوش کن و کلماتِ مربوط به پاسخ هدف را در متن شنیده‌شده پیدا کن.'
    if not detail:
        raise ValueError(f"Needs authored feedback: {item['external_id']}")
    result = {'explanation_fa': detail, 'model_answer': source or a.get('value', ''),
              'retry_tip_fa': 'ابتدا مدل و توضیح را مرور کن؛ سپس بدون نگاه‌کردن دوباره پاسخ بده.'}
    if typ == 'listening': result['transcript_en'] = p['audio_text']
    return result

def enrich_batch(batch):
    if batch.get('target_language') != 'en': return batch
    batch = replace_values(copy.deepcopy(batch))
    path = DATA / 'additions.json'
    additions = json.loads(path.read_text()) if path.exists() else {}
    for name in ('performance-additions.json', 'c2-performance-additions.json'):
        extra = DATA / name
        if extra.exists():
            for unit, items in json.loads(extra.read_text()).items():
                additions.setdefault(unit, []).extend(items)
    authored_feedback={x['external_id']:x['data']['feedback'] for values in additions.values()
                       for x in values if x['kind']=='exercise' and x['data'].get('feedback')}
    ids = {x['external_id'] for x in batch['items']}
    for item in additions.get(batch['curriculum_unit'], []):
        if item['external_id'] not in ids:
            batch['items'].append(copy.deepcopy(item)); ids.add(item['external_id'])
    path = DATA / 'feedback-overrides.json'
    overrides = json.loads(path.read_text()) if path.exists() else {}
    dialogues = {}
    for name in ('dialogue-overrides.json', 'c2-dialogue-overrides.json'):
        dialogue_path = DATA / name
        if dialogue_path.exists():
            patches = json.loads(dialogue_path.read_text())
            if dialogues.keys() & patches.keys():
                raise ValueError('Duplicate authored dialogue override')
            dialogues.update(patches)
    prompt_path = DATA / 'prompt-overrides.json'
    prompts = json.loads(prompt_path.read_text()) if prompt_path.exists() else {}
    for item in batch['items']:
        if item['external_id'] in dialogues:
            item['data'].update(copy.deepcopy(dialogues[item['external_id']]))
        if item['external_id'] in prompts:
            item['data']['prompt'].update(prompts[item['external_id']])
        if item['external_id'] == 'g_a2_detailed_directions_until_past_across':
            item['data']['audio_examples'] = True
        if item['kind'] == 'exercise':
            d = item['data']
            forced_feedback = overrides.get(item['external_id']) or authored_feedback.get(item['external_id'])
            if forced_feedback:
                d['feedback'] = forced_feedback
            elif not d.get('feedback'):
                d['feedback'] = feedback_for(item, batch['items'])
    return batch

def main():
    count = 0
    for path in sorted((ROOT / 'content/production/en').glob('*/*.json')):
        original = json.loads(path.read_text())
        updated = enrich_batch(original)
        if updated != original:
            path.write_text(json.dumps(updated, ensure_ascii=False, indent=2)+'\n')
            count += 1
    print(json.dumps({'updated_batches': count}))

if __name__ == '__main__': main()
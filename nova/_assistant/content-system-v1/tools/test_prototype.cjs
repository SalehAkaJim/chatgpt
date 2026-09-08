const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');
const {webcrypto, createHash} = require('node:crypto');
const {JSDOM, VirtualConsole} = require('jsdom');
const root = process.env.NOVA_CONTENT_ROOT || (fs.existsSync(path.resolve(__dirname, '../dist/nova/courses')) ? path.resolve(__dirname, '../dist') : path.resolve(__dirname, '../../../..'));
const prototype = process.env.NOVA_PROTOTYPE_DIR || (fs.existsSync(path.join(root, 'index.html')) ? root : path.join(root, 'nova/prototype'));
const course = JSON.parse(fs.readFileSync(path.join(root, 'nova/courses/en-fa/course.source.json')));
const sources = [1, 2, 3].map(n => JSON.parse(fs.readFileSync(path.join(root, `nova/courses/en-fa/lessons/${String(n).padStart(4, '0')}/lesson.source.json`))));
const html = fs.readFileSync(path.join(prototype, 'index.html'), 'utf8');
const code = fs.readFileSync(path.join(prototype, 'app.js'), 'utf8');
const tick = () => new Promise(resolve => setImmediate(resolve));
async function settle() { for (let i=0;i<8;i++) await tick(); }
async function page(number, stale=false, mutate=null, review=false) {
  const lessons = structuredClone(sources);
  if (mutate) mutate(lessons[number - 1]);
  const errors = [];
  const virtualConsole = new VirtualConsole();
  virtualConsole.on('jsdomError', error => errors.push(error.message));
  const dom = new JSDOM(html, {url:`https://nova.test/nova/prototype/index.html${number ? `?course=en-fa&lesson=000${number}${review ? '&test=1' : ''}` : ''}`, runScripts:'outside-only', virtualConsole});
  const w = dom.window;
  Object.defineProperty(w, 'crypto', {value:webcrypto}); w.TextEncoder = TextEncoder;
  class Audio extends w.EventTarget {
    constructor(src) { super(); this.src=src; }
    async play() { queueMicrotask(() => { if(this.onended)this.onended(); }); }
    pause() {}
  }
  w.Audio=Audio;
  w.SpeechRecognition=class {
    start() { queueMicrotask(() => {
      const shown = w.document.querySelector('.bubble.you .en')?.textContent;
      this.onresult({results:[[{transcript:shown}]]}); this.onend();
    }); }
    abort() { this.onend?.(); }
  };
  const catalog = lessons.map((lesson, i) => ({courseCode:'en-fa',lessonNumber:`000${i+1}`,titleFa:lesson.titleFa,
    lessonSource:`courses/en-fa/lessons/000${i+1}/lesson.source.json`,courseSource:'courses/en-fa/course.source.json',audioManifest:`courses/en-fa/lessons/000${i+1}/audio.manifest.json`}));
  w.fetch=async url => {
    const relative=new URL(url).pathname.replace(/^\/nova\//,'');
    let data;
    if(relative==='courses/index.json') data={lessons:catalog};
    else if(relative==='courses/en-fa/course.source.json')data=course;
    else {
      const entry=catalog.find(x=>x.lessonSource===relative||x.audioManifest===relative);
      if(!entry)throw Error('Unexpected fetch '+relative);
      const lesson=lessons[Number(entry.lessonNumber)-1];
      const source=JSON.stringify(lesson);
      data=relative===entry.lessonSource?lesson:{lessonKey:lesson.lessonKey,status:'PASS',sourceHash:stale?'bad':createHash('sha256').update(source).digest('hex'),items:[
        ...lesson.turns.filter(x=>x.audioRequired).map(x=>({sourceKey:x.turnKey,audioClass:'turn',path:`nova/audio/turns/en-fa/${lesson.lessonKey}/${x.turnKey}.mp3`})),
        ...lesson.lexicalItems.filter(x=>x.audioEligible).map(x=>({sourceKey:x.lexicalKey,audioClass:'lexical_item',path:`nova/audio/lexical/en-fa/${x.lexicalKey}.mp3`}))]};
    }
    return {ok:true,json:async()=>structuredClone(data),text:async()=>JSON.stringify(data)};
  };
  w.eval(code);
  for(let i=0;i<1000 && !(number ? w.document.querySelector('.bubble.you, .status-error') : w.document.querySelector('.lesson-link, .status-error'));i++)await settle();
  return {dom,w,lessons,errors};
}
async function complete(number, mutate=null, review=false) {
  const {dom,w,lessons,errors}=await page(number,false,mutate,review); const d=w.document;
  const lesson=lessons[number-1];
  assert.equal(d.querySelectorAll('#lessonSelect option').length,3);
  assert.equal(Boolean(d.querySelector('.test-pass')),review,'Only explicit review mode exposes a speech skip');
  let didWrongChoice=false,didWrongOrder=false;
  for(let iteration=0;iteration<45;iteration++) {
    await settle();
    if(d.querySelector('#screens h1')?.textContent===(review ? 'مرور درس تموم شد' : 'درس تموم شد'))break;
    if(d.getElementById('feedbackPanel').classList.contains('show')) {d.getElementById('feedbackContinue').click();continue;}
    const activity=lesson.activities.find(a=>a.activityKey===d.getElementById('screens').dataset.activityKey);
    assert.ok(activity,'A canonical activity should be rendered');
    if(activity.type==='dialogue') {d.querySelector(review ? '.test-pass' : '.mic').click();continue;}
    if(activity.type==='lexical_teach') {d.querySelector('#screens .play')?.click();d.getElementById('nextBtn').click();continue;}
    if(activity.type==='sentence_order') {
      const tokens=didWrongOrder?activity.config.answerTokensEn:[...activity.config.answerTokensEn].reverse();
      for(const text of tokens) {
        const button=[...d.querySelectorAll('.bank .token')].find(b=>b.textContent===text&&!b.disabled);assert.ok(button);button.click();
      }
      d.getElementById('nextBtn').click();
      if(!didWrongOrder) {assert.ok(d.getElementById('feedbackPanel').classList.contains('bad'));d.getElementById('feedbackContinue').click();d.querySelector('.reset').click();didWrongOrder=true;}
      continue;
    }
    const options=[...d.querySelectorAll('.options .option')];
    const index=didWrongChoice?activity.config.answerIndex:(activity.config.answerIndex+1)%options.length;
    options[index].click();d.getElementById('nextBtn').click();
    if(!didWrongChoice) {assert.ok(d.getElementById('feedbackPanel').classList.contains('bad'));d.getElementById('feedbackContinue').click();didWrongChoice=true;}
  }
  assert.equal(d.querySelector('#screens h1')?.textContent,review ? 'مرور درس تموم شد' : 'درس تموم شد');
  d.getElementById('homeBtn').click();
  assert.equal(d.getElementById('homeScreen').hidden,false);
  assert.equal(d.getElementById('homeCount').textContent,'۱ از ۳ درس');
  assert.ok(d.querySelector('.lesson-link.completed .lesson-state').textContent.includes(review ? 'مرور شد' : 'تمرین شد'));
  assert.ok(d.getElementById('screens').textContent.includes(lesson.outcomeFa));
  assert.deepEqual(errors,[]);
  // Changing the selector reloads another canonical Lesson without retained answers.
  const select=d.getElementById('lessonSelect');select.value=String(number===3?0:2);select.dispatchEvent(new w.Event('change'));await settle();
  for(let i=0;i<30 && !d.querySelector('.bubble.you');i++)await settle();
  assert.ok(d.querySelector('.bubble.you'),d.getElementById('screens').textContent);
  assert.equal(d.querySelector('#screens h1'),null);
  dom.window.close();
}
(async()=>{
  for(const number of [1,2,3])await complete(number);
  await complete(1,null,true);
  const home=await page(null);
  assert.equal(home.w.document.getElementById('homeScreen').hidden,false);
  assert.equal(home.w.document.querySelectorAll('.lesson-link').length,3);
  assert.equal(home.w.document.getElementById('homeCount').textContent,'۰ از ۳ درس');
  home.w.document.getElementById('startBtn').click();
  for(let i=0;i<100 && !home.w.document.querySelector('.bubble.you');i++)await settle();
  home.w.document.querySelector('.mic').click();await settle();
  home.w.document.getElementById('feedbackContinue').click();
  const response=home.w.document.querySelector('.bubble.you .en').textContent;
  home.w.document.getElementById('homeBtn').click();
  assert.equal(home.w.document.getElementById('startBtn').textContent,'ادامهٔ درس');
  home.w.document.getElementById('startBtn').click();
  for(let i=0;i<100 && !home.w.document.querySelector('.bubble.you');i++)await settle();
  assert.equal(home.w.document.querySelector('.bubble.you .en').textContent,response,'Resume must retain the exchange, not restart the dialogue');
  home.dom.window.close();
  await complete(1, lesson=>{lesson.titleFa='درس تغییر داده شده';const a=lesson.activities.find(a=>a.type==='fill_blank');a.config.optionsEn.reverse();a.config.answerIndex=a.config.optionsEn.length-1-a.config.answerIndex;});
  const stale=await page(1,true);
  assert.ok(stale.w.document.querySelector('.status-error').textContent.includes('صداهای این نسخه'));
  assert.equal(stale.w.document.querySelector('.mic'),null);
  stale.dom.window.close();
  console.log('PASS: home, session progress, exact exchange resume, explicit review mode, 3 complete Lessons, incorrect-answer recovery, changed canonical answers, Lesson selection, stale-manifest rejection. Speech/audio are mocked DOM tests.');
})().catch(error=>{console.error(error);process.exitCode=1;});

'use strict';
// Canonical Lesson and manifest data drive every learner-visible content choice.
const $ = id => document.getElementById(id);
const params = new URLSearchParams(location.search);
const testMode = params.get('test') === '1';
let catalog = [], lesson, course, audioItems, steps = [], step = 0, generation = 0;
let playback = null, recognizer = null, order = [], selected = null, check = null, mediaGeneration = 0;
let afterFeedback = null, feedbackOpen = false, advancing = false;
const el = (tag, className, text) => {
  const node = document.createElement(tag);
  if (className) node.className = className;
  if (text !== undefined) node.textContent = text;
  return node;
};
function button(text, action, className = 'option') {
  const node = el('button', className, text);
  node.type = 'button'; node.onclick = action;
  return node;
}
const novaUrl = path => new URL('../' + path.replace(/^nova\//, ''), location.href).href;
const speechNorm = text => String(text || '').toLowerCase().replaceAll('’', "'").replace(/[^a-z0-9']/g, ' ').replace(/\s+/g, ' ').trim();
function stopMedia() {
  mediaGeneration++;
  if (playback) { playback.pause(); playback.dispatchEvent(new Event('ended')); playback = null; }
  if (recognizer) { recognizer.abort(); recognizer = null; }
}
function audioError() { showFeedback(false, 'صدا پخش نشد. اتصال را بررسی کن و دوباره امتحان کن.'); }
async function playAudio(sourceKey, kind = 'turn') {
  stopMedia();
  const item = audioItems.get(kind + ':' + sourceKey);
  if (!item) { audioError(); return; }
  const current = generation;
  const audio = new Audio(novaUrl(item.path)); playback = audio;
  try { await audio.play(); } catch { if (current === generation) audioError(); }
}
async function playSequence(keys) {
  stopMedia(); const current = generation, mediaToken = mediaGeneration;
  for (const key of keys) {
    if (current !== generation || mediaToken !== mediaGeneration) return;
    const item = audioItems.get('turn:' + key);
    if (!item) { audioError(); return; }
    const audio = new Audio(novaUrl(item.path)); playback = audio;
    const ended = new Promise(resolve => {
      audio.onended = () => resolve(true);
      audio.onerror = () => resolve(false);
    });
    try { await audio.play(); } catch { if (current === generation) audioError(); return; }
    if (!await ended) { if (current === generation) audioError(); return; }
  }
}
function showFeedback(ok, text, onContinue = null) {
  feedbackOpen = true; afterFeedback = onContinue;
  $('feedbackPanel').className = 'feedback show ' + (ok ? 'good' : 'bad');
  $('feedbackTitle').textContent = ok ? 'درسته ✓' : 'دوباره امتحان کن';
  $('feedbackText').textContent = text;
  $('feedbackContinue').textContent = ok ? 'ادامه' : 'باشه';
}
$('feedbackContinue').onclick = () => {
  if (!feedbackOpen) return;
  const action = afterFeedback; afterFeedback = null; feedbackOpen = false;
  $('feedbackPanel').className = 'feedback';
  if (action) action();
};
function nextStep() {
  if (advancing) return;
  advancing = true;
  showStep(step + 1);
}
function startSpeech(turn, state, mic, accepted) {
  if (recognizer) return;
  const SR = window.SpeechRecognition || window.webkitSpeechRecognition;
  if (!SR) { state.textContent = 'تشخیص صدا روی این مرورگر در دسترس نیست. از مرورگر پشتیبانی شده استفاده کن.'; return; }
  stopMedia(); const current = generation;
  const recognition = new SR(); recognizer = recognition;
  recognition.lang = 'en-US'; recognition.interimResults = false;
  mic.disabled = true; mic.classList.add('listening'); state.textContent = 'دارم گوش می کنم...';
  recognition.onresult = event => {
    if (current !== generation) return;
    const said = speechNorm(event.results[0][0].transcript);
    const ok = accepted.some(value => speechNorm(value) === said);
    state.textContent = ok ? 'بازخوانی انجام شد ✓' : 'یک بار دیگه امتحان کن';
    if (ok) { mic.disabled = true; showFeedback(true, 'بازخوانی انجام شد.', nextStep); }
  };
  recognition.onerror = () => { if (current === generation) state.textContent = 'صدا دریافت نشد؛ دوباره امتحان کن.'; };
  recognition.onend = () => {
    if (recognizer === recognition) recognizer = null;
    mic.classList.remove('listening'); if (!feedbackOpen) mic.disabled = false;
  };
  try { recognition.start(); } catch { recognizer = null; mic.disabled = false; state.textContent = 'میکروفن در دسترس نیست.'; }
}
function turnBubble(turn, response, config) {
  const bubble = el('div', 'bubble' + (response ? ' you' : ''));
  const showText = response ? config.showResponseText !== false : config.showPromptText !== false;
  const showTranslation = response ? config.showResponseTranslation !== false : config.showPromptTranslation !== false;
  if (showText) bubble.append(el('div', 'en', turn.textEn));
  if (showTranslation) bubble.append(el('div', 'fa', turn.translationFa));
  return bubble;
}
function renderExchange(activity, exchange, host) {
  const turns = new Map(lesson.turns.map(t => [t.turnKey, t]));
  const prompt = turns.get(exchange.promptTurnKey), response = turns.get(exchange.responseTurnKey);
  const config = activity.config;
  const card = el('div', 'card');
  const row = el('div', 'speaker');
  const character = course.characters.find(c => c.characterKey === prompt.characterKey);
  row.append(el('div', 'avatar', (character?.name || '').slice(0, 1)));
  const promptBubble = turnBubble(prompt, false, config);
  if (exchange.allowPromptReplay !== false) promptBubble.append(button('▶', () => playAudio(prompt.turnKey), 'play small'));
  row.append(promptBubble); card.append(row);
  const responseBox = el('div', 'response');
  responseBox.append(el('div', 'response-label', 'جواب تو'));
  const responseBubble = turnBubble(response, true, config);
  if (exchange.allowResponseModelAudio) responseBubble.append(button('▶', () => playAudio(response.turnKey), 'play'));
  responseBox.append(responseBubble); card.append(responseBox);
  const wrap = el('div', 'mic-wrap'), state = el('div', 'state', 'برای بازخوانی روی میکروفن بزن');
  const mic = button('🎙', () => startSpeech(response, state, mic, response.acceptedSpeechEn || [response.speechTargetEn]), 'mic');
  mic.setAttribute('aria-label', 'بازخوانی پاسخ');
  wrap.append(mic, state);
  if (testMode) wrap.append(button('حالت تست: بازخوانی انجام شد', () => showFeedback(true, 'ادامه در حالت تست.', nextStep), 'test-pass'));
  card.append(wrap); host.append(card); $('nextBtn').hidden = true;
}
function revealTranscript(config, host) {
  if (!(config.transcriptAfterAttempt || config.translationAfterAttempt) || host.querySelector('.transcript')) return;
  const transcript = el('div', 'transcript');
  for (const key of config.sourceTurnKeys || []) {
    const turn = lesson.turns.find(t => t.turnKey === key);
    transcript.append(el('div', 'en', turn.textEn), el('div', 'fa', turn.translationFa));
  }
  host.append(transcript);
}
function renderOrder(activity, host) {
  const config = activity.config, card = el('div', 'card');
  card.append(button('▶', () => playAudio(config.audioSourceTurnKey), 'play big'));
  const zone = el('div', 'zone'), bank = el('div', 'bank');
  const redraw = () => {
    zone.replaceChildren(); bank.replaceChildren();
    for (const index of order) zone.append(button(config.tokensEn[index], () => { order = order.filter(i => i !== index); redraw(); }, 'token'));
    config.tokensEn.forEach((text, index) => {
      const token = button(text, () => { if (!order.includes(index)) { order.push(index); redraw(); } }, 'token');
      token.disabled = order.includes(index); token.classList.toggle('used', token.disabled); bank.append(token);
    });
    $('nextBtn').disabled = order.length !== config.tokensEn.length;
  };
  card.append(zone, bank, button('از اول بچین', () => { order = []; redraw(); }, 'reset'));
  host.append(card); redraw();
  check = () => {
    const answer = order.map(i => config.tokensEn[i]);
    const ok = JSON.stringify(answer) === JSON.stringify(config.answerTokensEn);
    showFeedback(ok, ok ? 'ترتیب جمله درست بود.' : 'دوباره گوش کن و ترتیب کلمه ها را عوض کن.', ok ? nextStep : null);
  };
}
function renderChoice(activity, host) {
  const config = activity.config, card = el('div', 'card');
  const options = activity.type === 'fill_blank' ? config.optionsEn : (config.options || config.optionsEn);
  if (activity.type === 'fill_blank') card.append(el('div', 'sentence', config.sentenceEn));
  if (activity.type === 'comprehension') card.append(button('▶', () => playSequence(config.sourceTurnKeys), 'play big'));
  const group = el('div', 'options');
  options.forEach((text, index) => {
    const option = button(text, () => {
      selected = index;
      [...group.children].forEach((node, i) => node.classList.toggle('selected', i === index));
      $('nextBtn').disabled = false;
    }, 'option' + (activity.type === 'fill_blank' || config.optionsEn ? ' en-button' : ''));
    group.append(option);
  });
  card.append(group); host.append(card); $('nextBtn').disabled = true;
  check = () => {
    const ok = selected === config.answerIndex;
    revealTranscript(config, card);
    showFeedback(ok, ok ? 'پاسخ درست بود.' : 'یک بار دیگر به جمله و معنی آن توجه کن.', ok ? nextStep : null);
  };
}
function showStep(index) {
  generation++; stopMedia(); step = index; advancing = false; selected = null; order = []; check = null;
  feedbackOpen = false; afterFeedback = null; $('feedbackPanel').className = 'feedback';
  const host = $('screens'); host.replaceChildren();
  $('nextBtn').hidden = false; $('nextBtn').disabled = false; $('nextBtn').textContent = 'بررسی';
  $('backBtn').hidden = step === 0;
  $('progressBar').style.width = Math.min(100, (step + 1) / (steps.length + 1) * 100) + '%';
  $('stepCount').textContent = Math.min(step + 1, steps.length + 1) + ' / ' + (steps.length + 1);
  if (step >= steps.length) {
    host.append(el('div', 'tick', '✓'), el('h1', '', 'درس تموم شد'), el('p', 'sub', lesson.outcomeFa));
    $('bottomBar').hidden = true; return;
  }
  $('bottomBar').hidden = false;
  const {activity, exchange} = steps[step];
  host.dataset.activityKey = activity.activityKey;
  host.append(el('div', 'tag', lesson.titleFa), el('p', 'sub', activity.instructionFa));
  if (activity.promptFa || activity.promptEn) host.append(el('div', activity.promptFa ? 'question' : 'en', activity.promptFa || activity.promptEn));
  if (exchange) renderExchange(activity, exchange, host);
  else if (activity.type === 'lexical_teach') {
    if (activity.config.explanationFa) host.append(el('div', 'explanation', activity.config.explanationFa));
    const words = el('div', 'words');
    for (const key of activity.config.lexicalKeys) {
      const item = lesson.lexicalItems.find(i => i.lexicalKey === key);
      const card = el('div', 'card word-card');
      card.append(el('div', 'word', item.displayForm), el('div', 'meaning', item.translationFa));
      if (item.audioEligible) card.append(button('▶', () => playAudio(key, 'lexical_item'), 'play'));
      words.append(card);
    }
    host.append(words); $('nextBtn').textContent = 'ادامه'; check = nextStep;
  } else if (activity.type === 'sentence_order') renderOrder(activity, host);
  else if (['fill_blank', 'comprehension', 'response_choice'].includes(activity.type)) renderChoice(activity, host);
  else if (activity.type === 'speak') {
    const state = el('div', 'state');
    host.append(el('div', 'en', activity.config.textEn));
    if (activity.config.sourceTurnKey) host.append(button('▶', () => playAudio(activity.config.sourceTurnKey), 'play'));
    const mic = button('🎙', () => startSpeech(null, state, mic, activity.config.acceptedAnswersEn), 'mic');
    host.append(mic, state); $('nextBtn').hidden = true;
  } else { host.append(el('p', 'status-error', 'این نوع تمرین هنوز در نمایشگر پشتیبانی نمی شود.')); $('nextBtn').disabled = true; }
}
$('nextBtn').onclick = () => { if (!feedbackOpen && !advancing && !$('nextBtn').disabled && check) check(); };
$('backBtn').onclick = () => { if (step > 0) showStep(step - 1); };
async function jsonFile(path) {
  const response = await fetch(novaUrl(path), {cache: 'no-store'});
  if (!response.ok) throw new Error('دریافت فایل درس انجام نشد.');
  return response.json();
}
async function loadLesson(entry) {
  generation++; const current = generation; stopMedia();
  $('screens').replaceChildren(el('p', 'sub', 'در حال دریافت درس...')); $('bottomBar').hidden = true;
  try {
    const sourceResponse = await fetch(novaUrl(entry.lessonSource), {cache: 'no-store'});
    if (!sourceResponse.ok) throw new Error('دریافت محتوای درس انجام نشد.');
    const source = await sourceResponse.text();
    const [loadedCourse, manifest] = await Promise.all([jsonFile(entry.courseSource), jsonFile(entry.audioManifest)]);
    const loadedLesson = JSON.parse(source);
    if (!crypto.subtle) throw new Error('برای بررسی فایل های درس، صفحه را با HTTPS یا localhost باز کن.');
    const hash = [...new Uint8Array(await crypto.subtle.digest('SHA-256', new TextEncoder().encode(source)))].map(x => x.toString(16).padStart(2, '0')).join('');
    if (manifest.status !== 'PASS' || manifest.sourceHash !== hash || manifest.lessonKey !== loadedLesson.lessonKey) {
      throw new Error('صداهای این نسخه از درس هنوز آماده نیستند. کمی بعد دوباره امتحان کن.');
    }
    if (current !== generation) return;
    course = loadedCourse; lesson = loadedLesson;
    audioItems = new Map(manifest.items.map(item => [item.audioClass + ':' + item.sourceKey, item]));
    steps = lesson.activities.flatMap(activity => activity.type === 'dialogue'
      ? activity.config.exchanges.map(exchange => ({activity, exchange})) : [{activity}]);
    const query = new URLSearchParams(location.search);
    query.set('course', entry.courseCode); query.set('lesson', entry.lessonNumber);
    history.replaceState(null, '', '?' + query);
    showStep(0);
  } catch (error) {
    if (current === generation) $('screens').replaceChildren(el('p', 'status-error', error.message));
  }
}
$('lessonSelect').onchange = () => loadLesson(catalog[Number($('lessonSelect').value)]);
(async () => {
  try {
    catalog = (await jsonFile('courses/index.json')).lessons;
    if (!catalog.length) throw new Error('هنوز درسی آماده نشده.');
    catalog.forEach((entry, index) => {
      const option = el('option', '', entry.lessonNumber + ' · ' + entry.titleFa);
      option.value = String(index); $('lessonSelect').append(option);
    });
    const requested = catalog.findIndex(e => e.courseCode === (params.get('course') || catalog[0].courseCode)
      && e.lessonNumber === (params.get('lesson') || catalog[0].lessonNumber));
    const index = Math.max(0, requested); $('lessonSelect').value = String(index);
    await loadLesson(catalog[index]);
  } catch (error) { $('screens').replaceChildren(el('p', 'status-error', error.message)); }
})();

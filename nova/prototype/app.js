'use strict';
// Canonical Lesson and manifest data drive every learner-visible content choice.
const $ = id => document.getElementById(id);
const params = new URLSearchParams(location.search);
let testMode = params.get('test') === '1';
let catalog = [], lesson, course, audioItems, steps = [], step = 0, generation = 0;
let playback = null, recognizer = null, order = [], selected = null, check = null, mediaGeneration = 0;
let afterFeedback = null, feedbackOpen = false, advancing = false;
let activeEntry = null, activeSession = null, priorFocus = null;
const sessions = new Map();
const faNumber = value => Number(value).toLocaleString('fa-IR');
const entryKey = entry => entry.lessonKey || entry.courseCode + ':' + entry.lessonNumber;
const el = (tag, className, text) => {
  const node = document.createElement(tag);
  if (className) node.className = className;
  if (text !== undefined) node.textContent = text;
  return node;
};
function button(text, action, className = 'option') {
  const node = el('button', className, text);
  node.type = 'button'; node.onclick = action;
  if (text === '▶') node.setAttribute('aria-label', 'پخش صدا');
  return node;
}
const novaUrl = path => new URL(document.documentElement.dataset.novaRoot + path.replace(/^nova\//, ''), location.href).href;
const audioUrl = item => {
  const url = new URL(novaUrl(item.path));
  if (item.fileSha256) url.searchParams.set('sha256', item.fileSha256);
  return url.href;
};
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
  const audio = new Audio(audioUrl(item)); playback = audio;
  audio.onerror = () => { if (current === generation && playback === audio) audioError(); };
  try { await audio.play(); } catch { if (current === generation && playback === audio) audioError(); }
}
async function playSequence(keys) {
  stopMedia(); const current = generation, mediaToken = mediaGeneration;
  for (const key of keys) {
    if (current !== generation || mediaToken !== mediaGeneration) return;
    const item = audioItems.get('turn:' + key);
    if (!item) { audioError(); return; }
    const audio = new Audio(audioUrl(item)); playback = audio;
    const ended = new Promise(resolve => {
      audio.onended = () => resolve(true);
      audio.onerror = () => resolve(false);
    });
    try { await audio.play(); } catch { if (current === generation && mediaToken === mediaGeneration) audioError(); return; }
    if (!await ended) { if (current === generation && mediaToken === mediaGeneration) audioError(); return; }
  }
}
function showFeedback(ok, text, onContinue = null) {
  priorFocus = document.activeElement;
  feedbackOpen = true; afterFeedback = onContinue;
  $('feedbackPanel').hidden = false;
  $('screens').inert = true; $('lessonHeader').inert = true; $('bottomBar').inert = true;
  $('feedbackPanel').className = 'feedback show ' + (ok ? 'good' : 'bad');
  $('feedbackTitle').textContent = ok ? 'درسته ✓' : 'دوباره امتحان کن';
  $('feedbackText').textContent = text;
  $('feedbackContinue').textContent = ok ? 'ادامه' : 'باشه';
  $('feedbackContinue').focus();
}
$('feedbackContinue').onclick = () => {
  if (!feedbackOpen) return;
  const action = afterFeedback; afterFeedback = null; feedbackOpen = false;
  $('feedbackPanel').className = 'feedback';
  $('feedbackPanel').hidden = true;
  $('screens').inert = false; $('lessonHeader').inert = false; $('bottomBar').inert = false;
  if (action) action();
  else if (priorFocus?.isConnected) priorFocus.focus();
};
document.addEventListener('keydown', event => {
  if (!feedbackOpen) return;
  if (event.key === 'Tab') { event.preventDefault(); $('feedbackContinue').focus(); }
  if (event.key === 'Escape') { event.preventDefault(); $('feedbackContinue').click(); }
});
function nextStep() {
  if (advancing) return;
  advancing = true;
  showStep(step + 1);
}
function startSpeech(turn, state, mic, accepted) {
  if (recognizer) return;
  const SR = window.SpeechRecognition || window.webkitSpeechRecognition;
  if (!SR) { state.textContent = 'تشخیص گفتار روی این مرورگر در دسترس نیست. از خانه، مرور بدون میکروفن رو انتخاب کن.'; return; }
  stopMedia(); const current = generation;
  const recognition = new SR(); recognizer = recognition;
  recognition.lang = 'en-US'; recognition.interimResults = false;
  mic.disabled = true; mic.classList.add('listening'); state.textContent = 'دارم گوش می کنم...';
  recognition.onresult = event => {
    if (current !== generation) return;
    const transcript = event.results[0][0].transcript;
    const said = speechNorm(transcript);
    const ok = accepted.some(value => speechNorm(value) === said);
    state.replaceChildren(document.createTextNode(ok ? 'بازخوانی انجام شد ✓' : 'این رو شنیدم؛ دوباره امتحان کن:'), el('span', 'heard', transcript));
    if (ok) { mic.disabled = true; showFeedback(true, 'بازخوانی انجام شد.', nextStep); }
  };
  recognition.onerror = event => {
    if (current !== generation) return;
    state.textContent = ['not-allowed', 'service-not-allowed'].includes(event.error)
      ? 'دسترسی میکروفن رو در مرورگر فعال کن؛ یا از خانه، مرور بدون میکروفن رو انتخاب کن.'
      : 'صدا دریافت نشد؛ دوباره امتحان کن.';
  };
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
  promptBubble.prepend(el('div', 'speaker-name', character?.name || ''));
  if (exchange.allowPromptReplay !== false) promptBubble.append(button('▶', () => playAudio(prompt.turnKey), 'play small'));
  row.append(promptBubble); card.append(row);
  const responseBox = el('div', 'response');
  const learnerCharacter = course.characters.find(c => c.characterKey === response.characterKey);
  responseBox.append(el('div', 'response-label', 'پاسخ تو در نقش ' + (learnerCharacter?.metadata?.nameFa || learnerCharacter?.name || '')));
  responseBox.dataset.characterKey = response.characterKey;
  const responseBubble = turnBubble(response, true, config);
  if (exchange.allowResponseModelAudio) responseBubble.append(button('▶', () => playAudio(response.turnKey), 'play'));
  responseBox.append(responseBubble); card.append(responseBox);
  const wrap = el('div', 'mic-wrap'), state = el('div', 'state', 'برای بازخوانی روی میکروفن بزن');
  const mic = button('🎙', () => startSpeech(response, state, mic, response.acceptedSpeechEn || [response.speechTargetEn]), 'mic');
  mic.setAttribute('aria-label', 'بازخوانی پاسخ');
  wrap.append(mic, state);
  if (testMode) wrap.append(button('ادامه مرور بدون میکروفن', skipSpeech, 'test-pass'));
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
  $('feedbackPanel').hidden = true;
  $('screens').inert = false; $('lessonHeader').inert = false; $('bottomBar').inert = false;
  const host = $('screens'); host.replaceChildren();
  host.classList.remove('completion');
  delete host.dataset.activityKey;
  $('nextBtn').hidden = false; $('nextBtn').disabled = false; $('nextBtn').textContent = 'بررسی';
  $('backBtn').hidden = step === 0;
  const percent = Math.round(Math.min(step, steps.length) / steps.length * 100);
  $('progressBar').style.width = percent + '%';
  $('lessonProgress').setAttribute('aria-valuenow', String(percent));
  $('stepCount').textContent = faNumber(Math.min(step + 1, steps.length)) + ' / ' + faNumber(steps.length);
  activeSession.position = step < steps.length ? {activityKey: steps[step].activity.activityKey, exchangeKey: steps[step].exchange?.exchangeKey} : null;
  activeSession.finished = step >= steps.length;
  if (step >= steps.length) {
    if (activeSession.skippedSpeech) activeSession.reviewed = true;
    else activeSession.completedPractice = true;
    host.classList.add('completion');
    host.append(el('div', 'tick', '✓'), el('h1', '', activeSession.skippedSpeech ? 'مرور درس تموم شد' : 'درس تموم شد'), el('p', 'sub', lesson.outcomeFa));
    if (activeSession.skippedSpeech) host.append(el('p', 'small-note', 'تمرین گفتاری در این مرور ارزیابی نشد.'));
    const actions = el('div', 'completion-actions');
    const following = catalog[catalog.indexOf(activeEntry) + 1];
    if (following) actions.append(button('درس بعدی', () => loadLesson(following), 'next'));
    actions.append(button('بازگشت به خانه', showHome, 'secondary'), button('دوباره تمرین کن', () => loadLesson(activeEntry, false), 'secondary'));
    host.append(actions);
    $('bottomBar').hidden = true; return;
  }
  $('bottomBar').hidden = false;
  const {activity, exchange} = steps[step];
  host.dataset.activityKey = activity.activityKey;
  host.append(el('div', 'tag', lesson.titleFa));
  const learnerCharacter = course.characters.find(c => c.characterKey === lesson.curriculum.story.learnerRoleKey);
  const roleLabel = el('div', 'role-label', 'نقش تو: ' + (learnerCharacter?.metadata?.nameFa || learnerCharacter?.name || ''));
  roleLabel.dataset.characterKey = lesson.curriculum.story.learnerRoleKey;
  host.append(roleLabel);
  if (step === 0) host.append(el('p', 'explanation story-context', lesson.scenarioFa));
  host.append(el('p', 'sub', activity.instructionFa));
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
    mic.setAttribute('aria-label', 'بازخوانی پاسخ');
    host.append(mic, state); $('nextBtn').hidden = true;
    if (testMode) host.append(button('ادامه مرور بدون میکروفن', skipSpeech, 'test-pass'));
  } else { host.append(el('p', 'status-error', 'این نوع تمرین هنوز در نمایشگر پشتیبانی نمی شود.')); $('nextBtn').disabled = true; }
}
$('nextBtn').onclick = () => { if (!feedbackOpen && !advancing && !$('nextBtn').disabled && check) check(); };
$('backBtn').onclick = () => { if (step > 0) showStep(step - 1); };
function skipSpeech() {
  activeSession.skippedSpeech = true;
  stopMedia();
  nextStep();
}
function showHome() {
  generation++; stopMedia(); feedbackOpen = false; afterFeedback = null;
  $('feedbackPanel').hidden = true;
  $('screens').inert = false; $('lessonHeader').inert = false; $('bottomBar').inert = false;
  $('screens').hidden = true; $('lessonHeader').hidden = true; $('bottomBar').hidden = true;
  $('homeScreen').hidden = false;
  const query = new URLSearchParams(location.search); query.delete('lesson'); query.delete('course');
  history.replaceState(null, '', location.pathname + (query.size ? '?' + query : ''));
  const completed = catalog.filter(entry => {
    const saved = sessions.get(entryKey(entry)); return saved?.completedPractice || saved?.reviewed;
  }).length;
  $('homeCount').textContent = faNumber(completed) + ' از ' + faNumber(catalog.length) + ' درس';
  $('homeProgress').style.width = completed / catalog.length * 100 + '%';
  $('lessonTotal').textContent = faNumber(catalog.length) + ' درس برای تست';
  const unfinished = catalog.find(entry => {
    const saved = sessions.get(entryKey(entry)); return saved?.position && !saved.finished;
  });
  const next = unfinished || catalog.find(entry => {
    const saved = sessions.get(entryKey(entry)); return !saved?.completedPractice && !saved?.reviewed;
  }) || catalog[0];
  $('nextLessonLabel').textContent = completed === catalog.length && !unfinished ? 'یک بار دیگه تمرین کن' : unfinished ? 'ادامه درس' : 'درس بعدی';
  $('nextLessonTitle').textContent = next.titleFa;
  $('nextLessonSummary').textContent = completed === catalog.length && !unfinished ? 'همه درس ها رو دیدی؛ می تونی دوباره تمرینشون کنی.' : 'مکالمه، شنیدن و تمرین کوتاه';
  $('startBtn').textContent = unfinished ? 'ادامه درس' : completed === catalog.length ? 'مرور دوباره' : 'شروع درس';
  $('startBtn').onclick = () => loadLesson(next);
  const list = $('lessonList'); list.replaceChildren();
  catalog.forEach((entry, index) => {
    const saved = sessions.get(entryKey(entry));
    const completed = saved?.completedPractice || saved?.reviewed;
    const node = button('', () => loadLesson(entry), 'lesson-link' + (completed ? ' completed' : ''));
    const text = el('span', 'lesson-copy');
    text.append(el('span', 'lesson-title', entry.titleFa), el('span', 'lesson-state', saved?.completedPractice ? 'تمرین شد' : saved?.reviewed ? 'مرور شد' : saved?.position ? 'ادامه بده' : 'آماده شروع'));
    node.append(el('span', 'lesson-number', completed ? '✓' : faNumber(index + 1)), text, el('span', 'lesson-arrow', '‹'));
    list.append(node);
  });
}
$('homeBtn').onclick = () => { if (catalog.length) showHome(); };
$('reviewMode').checked = testMode;
$('reviewMode').onchange = () => { testMode = $('reviewMode').checked; };
async function jsonFile(path) {
  const response = await fetch(novaUrl(path), {cache: 'no-store'});
  if (!response.ok) throw new Error('دریافت فایل درس انجام نشد.');
  return response.json();
}
async function loadLesson(entry, resume = true) {
  generation++; const current = generation; stopMedia();
  $('homeScreen').hidden = true; $('screens').hidden = false; $('lessonHeader').hidden = false;
  $('lessonSelect').value = String(catalog.indexOf(entry));
  $('feedbackPanel').hidden = true; feedbackOpen = false;
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
    activeEntry = entry;
    const saved = sessions.get(entryKey(entry));
    activeSession = saved?.sourceHash === hash ? {...saved} : {sourceHash: hash};
    audioItems = new Map(manifest.items.map(item => [item.audioClass + ':' + item.sourceKey, item]));
    steps = lesson.activities.flatMap(activity => activity.type === 'dialogue'
      ? activity.config.exchanges.map(exchange => ({activity, exchange})) : [{activity}]);
    const query = new URLSearchParams(location.search);
    query.set('course', entry.courseCode); query.set('lesson', entry.lessonNumber);
    history.replaceState(null, '', '?' + query);
    let position = resume && !activeSession.finished && activeSession.position
      ? steps.findIndex(s => s.activity.activityKey === activeSession.position.activityKey && s.exchange?.exchangeKey === activeSession.position.exchangeKey) : 0;
    if (position < 0) position = 0;
    if (!resume || activeSession.finished) activeSession.skippedSpeech = false;
    sessions.set(entryKey(entry), activeSession);
    showStep(position);
  } catch (error) {
    if (current === generation) $('screens').replaceChildren(el('p', 'status-error', error.message), button('دوباره تلاش کن', () => loadLesson(entry, resume), 'secondary'));
  }
}
$('lessonSelect').onchange = () => loadLesson(catalog[Number($('lessonSelect').value)]);
(async () => {
  try {
    catalog = (await jsonFile('courses/index.json')).lessons;
    if (!catalog.length) throw new Error('هنوز درسی آماده نشده.');
    const initialCourse = await jsonFile(catalog[0].courseSource);
    $('languageTitle').textContent = new Intl.DisplayNames(['fa'], {type: 'language'}).of(initialCourse.learningLanguage);
    catalog.forEach((entry, index) => {
      const option = el('option', '', entry.lessonNumber + ' · ' + entry.titleFa);
      option.value = String(index); $('lessonSelect').append(option);
    });
    const requested = catalog.findIndex(e => e.courseCode === (params.get('course') || catalog[0].courseCode)
      && e.lessonNumber === (params.get('lesson') || catalog[0].lessonNumber));
    const index = Math.max(0, requested); $('lessonSelect').value = String(index);
    if (params.has('lesson')) await loadLesson(catalog[index]);
    else showHome();
  } catch (error) { $('screens').replaceChildren(el('p', 'status-error', error.message)); }
})();

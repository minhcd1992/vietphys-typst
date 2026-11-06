// Ứng dụng khóa học XSTK cấp tốc – điều hướng, hiển thị, luyện tập, thi thử, tiến độ.
(function () {
  const COURSE = window.COURSE;
  const $ = (s, el = document) => el.querySelector(s);
  // Trong công thức \( \) và \[ \], dấu < > sẽ bị HTML hiểu nhầm thành thẻ ⇒ đổi sang \lt, \gt
  const fx = s => String(s).replace(/\\\([\s\S]*?\\\)|\\\[[\s\S]*?\\\]/g, m => m.replace(/</g, '\\lt ').replace(/>/g, '\\gt '));
  const setHTML = (el, html) => { el.innerHTML = fx(html); };
  window.fixMathHTML = fx;
  const esc = s => String(s).replace(/[&<>"]/g, c => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;' }[c]));

  // ---------------- Lưu tiến độ ----------------
  const KEY = 'xstk-khoa-hoc-v1';
  let PG = { theory: {}, ex: {}, prac: {}, exams: [] };
  try { const raw = localStorage.getItem(KEY); if (raw) PG = Object.assign(PG, JSON.parse(raw)); } catch (e) { }
  const save = () => { try { localStorage.setItem(KEY, JSON.stringify(PG)); } catch (e) { } };

  const chapters = () => COURSE.chapters.slice().sort((a, b) => a.id - b.id);
  const chap = id => COURSE.chapters.find(c => c.id === +id);

  function chapterProgress(c) {
    const exDone = c.examples.filter(e => PG.ex[e.id]).length;
    const pr = PG.prac[c.id] || { ok: 0, tried: 0 };
    const parts = [PG.theory[c.id] ? 1 : 0, c.examples.length ? exDone / c.examples.length : 1, Math.min(pr.ok, 5) / 5];
    return { pct: Math.round(100 * (parts[0] * 0.2 + parts[1] * 0.5 + parts[2] * 0.3)), exDone, pr };
  }

  // ---------------- KaTeX ----------------
  function math(el) {
    if (window.renderMathInElement) {
      try {
        window.renderMathInElement(el, {
          delimiters: [{ left: '\\[', right: '\\]', display: true }, { left: '\\(', right: '\\)', display: false }],
          throwOnError: false, strict: false
        });
      } catch (e) { console.warn(e); }
    }
  }
  window.addEventListener('load', () => math(document.body));

  // ---------------- Kiểm tra đáp án ----------------
  function parseNum(s) {
    if (s == null) return NaN; s = String(s).trim().replace(/\s/g, '');
    if (!s) return NaN;
    let pct = false; if (s.endsWith('%')) { pct = true; s = s.slice(0, -1); }
    // "1.234,5" hoặc "1234,5" hoặc "1234.5"
    if (s.includes(',') && s.includes('.')) s = s.replace(/\./g, '').replace(',', '.'); else s = s.replace(',', '.');
    let v;
    if (/^-?\d+(\.\d+)?\/-?\d+(\.\d+)?$/.test(s)) { const [a, b] = s.split('/'); v = +a / +b; } else v = +s;
    return pct ? v / 100 : v;
  }
  function checkField(f, raw) {
    if (f.choices) return +raw === f.ans;
    const v = parseNum(raw); if (!isFinite(v)) return false;
    const tol = f.tol != null ? f.tol : Math.max(Math.abs(f.ans) * 0.01, 0.0015);
    return Math.abs(v - f.ans) <= tol;
  }
  function fieldHTML(f, i, uid) {
    if (f.choices) {
      return `<div class="field"><span class="flabel">${f.label}</span><div class="choices">` +
        f.choices.map((c, j) => `<label class="choice"><input type="radio" name="${uid}-${i}" value="${j}"> <span>${c}</span></label>`).join('') + `</div></div>`;
    }
    return `<label class="field"><span class="flabel">${f.label}</span><input class="num" inputmode="decimal" autocomplete="off" data-i="${i}" placeholder="vd: 0,2578"></label>`;
  }
  function readField(box, f, i, uid) {
    if (f.choices) { const r = box.querySelector(`input[name="${uid}-${i}"]:checked`); return r ? r.value : null; }
    return box.querySelector(`input.num[data-i="${i}"]`).value;
  }
  const fmtAns = f => f.choices ? f.choices[f.ans] : (f.show || T(f.ans, f.dp != null ? f.dp : 4));

  let uidc = 0;
  // Hiển thị một bài tự sinh. opts: {onResult(ok), exam:true}
  function renderProblem(box, prob, opts = {}) {
    const uid = 'p' + (++uidc);
    box.innerHTML = fx(`<div class="prob-q">${prob.q}</div>
      <div class="fields">${prob.fields.map((f, i) => fieldHTML(f, i, uid)).join('')}</div>
      ${opts.exam ? '' : `<div class="btnrow"><button class="btn primary act-check">Kiểm tra</button><button class="btn act-sol">Xem lời giải</button>${opts.newBtn ? '<button class="btn ghost act-new">Đề khác ↻</button>' : ''}</div>`}
      <div class="feedback" hidden></div><div class="solution" hidden>${prob.sol}</div>`);
    box._grade = () => {
      const res = prob.fields.map((f, i) => checkField(f, readField(box, f, i, uid)));
      const ok = res.every(Boolean);
      const fb = box.querySelector('.feedback'); fb.hidden = false;
      fb.className = 'feedback ' + (ok ? 'ok' : 'bad');
      fb.innerHTML = (ok ? '✔ Chính xác! ' : '✘ Chưa đúng. ') + prob.fields.map((f, i) => `<span class="fres ${res[i] ? 'ok' : 'bad'}">${f.label.replace(/<[^>]+>/g, '')}: ${res[i] ? 'đúng' : 'đáp số ' + fmtAns(f)}</span>`).join(' ');
      math(fb);
      return { ok, n: res.filter(Boolean).length, total: res.length };
    };
    box._showSol = () => { const s = box.querySelector('.solution'); s.hidden = false; };
    if (!opts.exam) {
      box.querySelector('.act-check').onclick = () => { const r = box._grade(); opts.onResult && opts.onResult(r.ok); };
      box.querySelector('.act-sol').onclick = () => box._showSol();
      const nb = box.querySelector('.act-new'); if (nb) nb.onclick = opts.newBtn;
      box.querySelectorAll('input.num').forEach(inp => inp.addEventListener('keydown', e => { if (e.key === 'Enter') box.querySelector('.act-check').click(); }));
    }
    math(box);
  }

  // ---------------- Trang ----------------
  const main = () => $('#main');
  function setActive(hash) {
    document.querySelectorAll('#nav a').forEach(a => a.classList.toggle('active', a.getAttribute('href') === hash));
  }

  function pageHome() {
    const cs = chapters();
    const total = Math.round(cs.reduce((a, c) => a + chapterProgress(c).pct, 0) / cs.length);
    const days = COURSE.plan;
    let html = `<section class="hero">
      <p class="kicker">Khóa cấp tốc · dựa trên tập bài tập <em>Xác suất thống kê và ứng dụng trong Vật lí</em></p>
      <h1>Xác suất – Thống kê trong 3 ngày</h1>
      <p class="lead">9 chương, ${cs.reduce((a, c) => a + c.examples.length, 0)} bài mẫu có lời giải, bài luyện tự sinh không giới hạn và đề thi thử chấm điểm tự động. Mỗi chương đi theo vòng: <b>nắm công thức → nhận dạng dạng bài → tự giải bài mẫu → luyện bài tương tự đến khi đúng liên tục</b>.</p>
      <div class="overall"><div class="bar"><span style="width:${total}%"></span></div><span>Tiến độ tổng: <b>${total}%</b></div>
    </section>`;
    html += `<h2>Lộ trình 3 ngày</h2><div class="days">`;
    days.forEach((d, di) => {
      html += `<article class="day"><header><span class="daynum">Ngày ${di + 1}</span><h3>${d.title}</h3></header><ol class="sessions">`;
      d.sessions.forEach(s => {
        const c = s.ch ? chap(s.ch) : null; const p = c ? chapterProgress(c).pct : null;
        html += `<li><div class="sess-time">${s.time}</div><div class="sess-body"><a href="${s.href || '#/ch/' + s.ch}">${s.label}</a><p>${s.note}</p>${p != null ? `<div class="bar sm"><span style="width:${p}%"></span></div>` : ''}</div></li>`;
      });
      html += `</ol></article>`;
    });
    html += `</div>`;
    html += `<h2>Cách học để đạt điểm cao</h2><div class="grid2">${COURSE.tips.map(t => `<div class="card"><h4>${t[0]}</h4><p>${t[1]}</p></div>`).join('')}</div>`;
    html += `<h2>Bản đồ chương</h2><div class="chgrid">` + cs.map(c => {
      const p = chapterProgress(c);
      return `<a class="chcard" href="#/ch/${c.id}"><span class="chno">${c.id}</span><span class="chtitle">${c.title}${c.isNew ? ' <em class="new">mới</em>' : ''}</span><span class="chmeta">${c.examples.length} bài mẫu · luyện đúng ${p.pr.ok}</span><div class="bar sm"><span style="width:${p.pct}%"></span></div></a>`;
    }).join('') + `</div>`;
    setHTML(main(), html); math(main());
  }

  function pageChapter(id, tab) {
    const c = chap(id); if (!c) return pageHome();
    tab = tab || 'ly-thuyet';
    const p = chapterProgress(c);
    const tabs = [['ly-thuyet', 'Lý thuyết'], ['dang-bai', 'Nhận dạng dạng bài'], ['bai-mau', `Bài mẫu (${p.exDone}/${c.examples.length})`], ['luyen-tap', `Luyện tập (${p.pr.ok}✔)`], ['bay', 'Bẫy hay gặp']];
    const prev = chap(c.id - 1), next = chap(c.id + 1);
    let html = `<header class="chhead"><p class="kicker">${c.when}</p><h1>Chương ${c.id}. ${c.title}${c.isNew ? ' <em class="new">mới bổ sung</em>' : ''}</h1>
      <p class="lead">${c.intro}</p><div class="bar"><span style="width:${p.pct}%"></span></div>
      <nav class="tabs">${tabs.map(t => `<a href="#/ch/${c.id}/${t[0]}" class="${t[0] === tab ? 'on' : ''}">${t[1]}</a>`).join('')}</nav></header><div class="tabbody">`;
    if (tab === 'ly-thuyet') {
      html += `<div class="goals"><h4>Mục tiêu sau buổi học</h4><ul>${c.goals.map(g => `<li>${g}</li>`).join('')}</ul></div>`;
      html += `<div class="theory">${c.theory}</div>`;
      html += `<label class="done-toggle"><input type="checkbox" id="thdone" ${PG.theory[c.id] ? 'checked' : ''}> Tôi đã nắm phần lý thuyết này</label>`;
    } else if (tab === 'dang-bai') {
      html += `<p class="muted">Đọc đề → tìm <b>dấu hiệu</b> ở cột trái → dùng ngay <b>công cụ</b> ở cột phải. Đây là "phản xạ" giúp làm nhanh và đúng trong phòng thi.</p>`;
      html += `<div class="recipes">${c.recipes.map((r, i) => `<div class="recipe"><div class="sign"><span class="rno">${i + 1}</span>${r[0]}</div><div class="tool">${r[1]}</div>${r[2] ? `<div class="ref">Bài mẫu: ${r[2]}</div>` : ''}</div>`).join('')}</div>`;
    } else if (tab === 'bai-mau') {
      html += `<p class="muted">Tự giải ra giấy trước (che lời giải), sau đó mở lời giải để đối chiếu. Đánh dấu ✔ khi bạn tự làm đúng được.</p>`;
      html += c.examples.map(e => `<article class="ex" id="ex-${e.id.replace(/\W/g, '_')}">
        <header><span class="exid">Bài ${e.id}</span>${e.tag ? `<span class="tag">${e.tag}</span>` : ''}<label class="exdone"><input type="checkbox" data-ex="${e.id}" ${PG.ex[e.id] ? 'checked' : ''}> Tự làm được</label></header>
        <div class="exq">${e.q}</div>
        <details><summary>Xem lời giải</summary><div class="exsol">${e.sol}</div></details></article>`).join('');
    } else if (tab === 'luyen-tap') {
      html += `<p class="muted">Bài được sinh ngẫu nhiên theo đúng các dạng trong chương – số liệu mới mỗi lần. Nhập số thập phân dạng <code>0,2578</code>, <code>25,78%</code> hoặc phân số <code>3/7</code>. Sai số cho phép khoảng 1% (do làm tròn khi tra bảng). Mục tiêu: <b>đúng ít nhất 5 bài</b>.</p>`;
      html += `<div class="genpick">${c.gens.map((g, i) => `<button class="btn chip" data-g="${i}">${g.name}</button>`).join('')}<button class="btn chip" data-g="rand">🎲 Ngẫu nhiên</button></div><div id="probbox" class="prob"></div>`;
    } else if (tab === 'bay') {
      html += `<ul class="traps">${c.traps.map(t => `<li>${t}</li>`).join('')}</ul>`;
    }
    html += `</div><nav class="pager">${prev ? `<a href="#/ch/${prev.id}">← Chương ${prev.id}</a>` : '<span></span>'}${next ? `<a href="#/ch/${next.id}">Chương ${next.id} →</a>` : `<a href="#/thi-thu">Thi thử →</a>`}</nav>`;
    setHTML(main(), html);

    const th = $('#thdone'); if (th) th.onchange = () => { PG.theory[c.id] = th.checked; save(); };
    main().querySelectorAll('input[data-ex]').forEach(cb => cb.onchange = () => { PG.ex[cb.dataset.ex] = cb.checked; save(); });
    if (tab === 'luyen-tap') {
      let current = 'rand';
      const run = () => {
        const gi = current === 'rand' ? Math.floor(Math.random() * c.gens.length) : +current;
        const prob = c.gens[gi].gen();
        main().querySelectorAll('.genpick .chip').forEach(b => b.classList.toggle('on', b.dataset.g === String(current)));
        let counted = false;
        renderProblem($('#probbox'), prob, {
          newBtn: run,
          onResult: ok => {
            if (counted) return; counted = true;
            const pr = PG.prac[c.id] || (PG.prac[c.id] = { ok: 0, tried: 0 });
            pr.tried++; if (ok) pr.ok++; save();
            const t = main().querySelector('.tabs a:nth-child(4)'); if (t) t.textContent = `Luyện tập (${pr.ok}✔)`;
          }
        });
      };
      main().querySelectorAll('.genpick .chip').forEach(b => b.onclick = () => { current = b.dataset.g; run(); });
      run();
    }
    math(main());
    if (location.hash.includes('#ex-')) { }
  }

  // ---------------- Thi thử ----------------
  let examTimer = null;
  function pageExam() {
    clearInterval(examTimer);
    const cs = chapters();
    main().innerHTML = `<header class="chhead"><p class="kicker">Ngày 3 · buổi tối</p><h1>Đề thi thử tự sinh</h1>
      <p class="lead">Mỗi đề lấy ngẫu nhiên một dạng bài của từng chương (chọn chương bên dưới). Làm trong thời gian quy định, nộp bài để chấm điểm và xem lời giải từng câu.</p></header>
      <div class="card"><div class="examcfg"><div><b>Chương đưa vào đề</b><div class="chk">${cs.map(c => `<label><input type="checkbox" value="${c.id}" checked> C${c.id}</label>`).join('')}</div></div>
      <label>Thời gian <select id="dur"><option value="60">60 phút</option><option value="90" selected>90 phút</option><option value="120">120 phút</option></select></label>
      <button class="btn primary" id="startExam">Bắt đầu làm bài</button></div></div>
      ${PG.exams.length ? `<h3>Lịch sử</h3><ul class="hist">${PG.exams.slice(-8).reverse().map(e => `<li>${e.date} — <b>${T(e.score, 1)}/10</b> (${e.n} câu)</li>`).join('')}</ul>` : ''}`;
    $('#startExam').onclick = () => {
      const ids = [...main().querySelectorAll('.chk input:checked')].map(i => +i.value);
      if (!ids.length) return;
      runExam(ids, +$('#dur').value);
    };
  }
  function runExam(ids, minutes) {
    const probs = ids.map(id => { const c = chap(id); const g = R.pick(c.gens); return { c, g, p: g.gen() }; });
    main().innerHTML = `<header class="chhead examhead"><h1>Đề thi thử – ${probs.length} câu</h1><div class="timer" id="timer"></div></header>
      ${probs.map((x, i) => `<section class="examq"><h3>Câu ${i + 1} <span class="tag">C${x.c.id} · ${x.g.name}</span></h3><div class="prob" id="eq${i}"></div></section>`).join('')}
      <div class="btnrow"><button class="btn primary" id="submitExam">Nộp bài</button></div><div id="examResult"></div>`;
    probs.forEach((x, i) => renderProblem($('#eq' + i), x.p, { exam: true }));
    let left = minutes * 60;
    const tick = () => { const m = Math.floor(left / 60), s = left % 60; $('#timer').textContent = `⏱ ${m}:${String(s).padStart(2, '0')}`; if (left-- <= 0) submit(); };
    const submit = () => {
      clearInterval(examTimer);
      let pts = 0;
      probs.forEach((x, i) => { const box = $('#eq' + i); const r = box._grade(); pts += r.n / r.total; box._showSol(); box.querySelectorAll('input').forEach(inp => inp.disabled = true); });
      const score = Math.round(pts / probs.length * 100) / 10;
      PG.exams.push({ date: new Date().toLocaleString('vi-VN'), score, n: probs.length }); save();
      $('#submitExam').remove();
      $('#examResult').innerHTML = `<div class="card result"><h2>Điểm: ${T(score, 1)} / 10</h2><p>${score >= 8 ? 'Rất tốt! Bạn sẵn sàng cho kỳ thi.' : score >= 5 ? 'Khá. Xem lại lời giải các câu sai, rồi luyện thêm dạng đó trong chương tương ứng.' : 'Cần ôn lại: mở tab "Nhận dạng dạng bài" của các chương có câu sai.'}</p><a class="btn" href="#/thi-thu">Làm đề khác</a></div>`;
      math(main()); $('#timer').textContent = 'Đã nộp';
      window.scrollTo({ top: 0, behavior: 'smooth' });
    };
    $('#submitExam').onclick = () => { if (confirm('Nộp bài và chấm điểm?')) submit(); };
    tick(); examTimer = setInterval(tick, 1000);
    math(main());
  }

  // ---------------- Sổ tay công thức ----------------
  function pageFormulas() {
    setHTML(main(), `<header class="chhead"><h1>Sổ tay công thức</h1><p class="lead">Toàn bộ phần lý thuyết cốt lõi của 9 chương trên một trang – dùng để ôn nhanh tối trước ngày thi (có thể in: Ctrl + P).</p></header>` +
      chapters().map(c => `<section class="fsec"><h2>Chương ${c.id}. ${c.title}</h2><div class="theory">${c.theory}</div></section>`).join(''));
    math(main());
  }

  // ---------------- Router ----------------
  function route() {
    clearInterval(examTimer);
    const h = location.hash || '#/';
    const parts = h.replace(/^#\/?/, '').split('/');
    setActive(parts[0] === 'ch' ? '#/ch/' + parts[1] : '#/' + parts[0]);
    if (parts[0] === 'ch') pageChapter(parts[1], parts[2]);
    else if (parts[0] === 'thi-thu') pageExam();
    else if (parts[0] === 'cong-cu') window.pageTools(main(), math);
    else if (parts[0] === 'cong-thuc') pageFormulas();
    else pageHome();
    if (!h.includes('/luyen-tap')) window.scrollTo(0, 0);
    document.body.classList.remove('navopen');
  }

  function buildNav() {
    $('#nav').innerHTML = `<a href="#/">🏠 Lộ trình 3 ngày</a>` +
      COURSE.plan.map((d, i) => `<div class="navday">Ngày ${i + 1} · ${d.short}</div>` + d.sessions.filter(s => s.ch).map(s => { const c = chap(s.ch); return `<a href="#/ch/${c.id}"><span class="navno">${c.id}</span>${c.short}${c.isNew ? ' <em class="new">mới</em>' : ''}</a>`; }).join('')).join('') +
      `<div class="navday">Ôn tập</div><a href="#/thi-thu">📝 Thi thử</a><a href="#/cong-thuc">📘 Sổ tay công thức</a><a href="#/cong-cu">🧮 Công cụ & bảng tra</a>`;
  }

  document.addEventListener('DOMContentLoaded', () => {
    buildNav();
    $('#menuBtn').onclick = () => document.body.classList.toggle('navopen');
    window.addEventListener('hashchange', route);
    route();
  });
  window.APP = { math, renderProblem };
})();

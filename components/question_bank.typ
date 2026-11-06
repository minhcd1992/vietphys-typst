#import "../themes/default_theme.typ": *
#import "../themes/theme_colors.typ": *

#let vp-q-counter = counter("vp-question")
#let vp-show-ans = state("vp-show-ans", false)
#let vp-show-sol = state("vp-show-sol", false)
#let vp-show-level = state("vp-show-level", true)
#let vp-show-source = state("vp-show-source", true)
#let vp-sol-store = state("vp-sol-store", ())

// Visible wording. Defaults reproduce the original Vietnamese output exactly.
#let vp-default-labels = (
  statement: "Phát biểu", tf-true: "Đ", tf-false: "S",
  solution: "Lời giải:", answer: "➜ Đáp số:",
  keys-title: "BẢNG ĐÁP ÁN NHANH", solutions-title: "HƯỚNG DẪN GIẢI CHI TIẾT",
  keys-mcq: "PHẦN I. TRẮC NGHIỆM NHIỀU PHƯƠNG ÁN",
  keys-tf: "PHẦN II. TRẮC NGHIỆM ĐÚNG/SAI",
  keys-short: "PHẦN III. TRẢ LỜI NGẮN & TỰ LUẬN",
  keys-question: "Câu",
)
#let vp-labels = state("vp-labels", vp-default-labels)

#let _vp-check-keys(given, allowed, what) = {
  for key in given.keys() {
    assert(key in allowed, message: "vietphys: " + what + " không có khóa '" + key
      + "'. Các khóa hợp lệ: " + allowed.keys().join(", "))
  }
}

// Change any label for the following content: #vp-set-labels(solution: "Solution:").
#let vp-set-labels(..labels) = {
  assert(labels.pos().len() == 0, message: "vietphys: vp-set-labels chỉ nhận tham số có tên")
  _vp-check-keys(labels.named(), vp-default-labels, "vp-set-labels")
  vp-labels.update(old => old + labels.named())
}

// User question types: each renderer receives one dictionary (see vp-register-question-type).
#let _vp-builtin-types = ("mcq", "tf", "short", "essay")
#let vp-question-types = state("vp-question-types", (:))
#let vp-register-question-type(name, render, keys: "short") = {
  assert(type(name) == str and name not in _vp-builtin-types,
    message: "vietphys: tên loại câu phải là chuỗi khác mcq, tf, short, essay")
  assert(type(render) == function, message: "vietphys: render phải là một hàm")
  assert(keys in ("mcq", "short", none), message: "vietphys: keys phải là \"mcq\", \"short\" hoặc none")
  vp-question-types.update(old => old + ((name): (render: render, keys: keys)))
}

// Each vp-print-keys(scope: "batch") call closes a batch: the next one prints only newer questions.
#let _vp-keys-batch = counter("vp-keys-batch")
// Separate counters: printing keys must not empty the next solution batch.
#let _vp-sol-batch = counter("vp-sol-batch")

// Scoped layout settings. Existing vp-question calls keep their original defaults.
#let _vp-exercise-defaults = (
  q-spacing: auto, stem-spacing: 12pt, line-spacing: 1.2em, lines-above: 8pt,
  keep-first-line: false, keep-together: (), tf-inset: auto, instruction-gap: 12pt,
  show-answers: auto, show-solutions: auto, show-levels: auto, show-sources: auto,
)
#let _vp-exercise-style = state("vp-exercise-style", _vp-exercise-defaults)

// Parameters override the enclosing layout and are restored after body.
#let vp-exercise-layout(body, ..settings) = context {
  assert(settings.pos().len() == 0, message: "Layout options must be named")
  let overrides = settings.named()
  for key in overrides.keys() {
    assert(key in _vp-exercise-defaults, message: "Unknown exercise layout option: " + key)
  }
  let previous = _vp-exercise-style.get()
  let current = previous + overrides
  let visibility = (
    (vp-show-ans, "show-answers"), (vp-show-sol, "show-solutions"),
    (vp-show-level, "show-levels"), (vp-show-source, "show-sources"),
  ).map(((s, key)) => (s, s.get(), current.at(key)))
  _vp-exercise-style.update(current)
  for (s, old, value) in visibility { if value != auto { s.update(value) } }
  body
  for (s, old, value) in visibility { if value != auto { s.update(old) } }
  _vp-exercise-style.update(previous)
}

// Use after a section heading; the instruction stays with the next question.
#let vp-instructions(body, gap: auto, sticky: true, reset: false) = context {
  if reset { vp-q-counter.update(0) }
  block(sticky: sticky, above: 0pt,
    below: if gap == auto { _vp-exercise-style.get().instruction-gap } else { gap }, body)
}

#let vp-ans-shape = state("vp-ans-shape", auto)
#let vp-ans-mark-border = state("vp-ans-mark-border", auto)
#let vp-ans-mark-bg = state("vp-ans-mark-bg", auto)
#let vp-ans-mark-width = state("vp-ans-mark-width", auto)
#let vp-ans-text-color = state("vp-ans-text-color", auto)

#let vp-opt-color = state("vp-opt-color", auto)
#let vp-opt-bg = state("vp-opt-bg", auto)
#let vp-opt-border = state("vp-opt-border", auto)
#let vp-opt-radius = state("vp-opt-radius", auto)

#let vp-q-prefix = state("vp-q-prefix", "Câu")
#let vp-q-icon-before = state("vp-q-icon-before", none)
#let vp-q-icon-after = state("vp-q-icon-after", none)
#let vp-q-lbl-color = state("vp-q-lbl-color", auto)
#let vp-q-lbl-bg = state("vp-q-lbl-bg", auto)
#let vp-q-lbl-border = state("vp-q-lbl-border", auto)
#let vp-q-lbl-radius = state("vp-q-lbl-radius", auto)
#let vp-q-lbl-padding = state("vp-q-lbl-padding", auto)

#let vp-q-bg = state("vp-q-bg", auto)
#let vp-q-border = state("vp-q-border", auto)
#let vp-q-radius = state("vp-q-radius", auto)
#let vp-q-padding = state("vp-q-padding", auto)

#let vp-set-ans-style(
  shape: auto,
  border: auto,
  bg: auto,
  width: auto,
  text-color: auto,
) = {
  if shape != auto { vp-ans-shape.update(shape) }
  if border != auto { vp-ans-mark-border.update(border) }
  if bg != auto { vp-ans-mark-bg.update(bg) }
  if width != auto { vp-ans-mark-width.update(width) }
  if text-color != auto { vp-ans-text-color.update(text-color) }
}

#let vp-q-num-style = state("vp-q-num-style", "1")
#let vp-q-lines = state("vp-q-lines", auto)

#let vp-set-question-style(
  num-style: auto,
  lines: auto,
  prefix: auto,
  icon-before: auto,
  icon-after: auto,
  lbl-color: auto,
  lbl-bg: auto,
  lbl-border: auto,
  lbl-radius: auto,
  lbl-padding: auto,
  opt-color: auto,
  opt-bg: auto,
  opt-border: auto,
  opt-radius: auto,
  ans-shape: auto,
  ans-mark-border: auto,
  ans-mark-bg: auto,
  ans-mark-width: auto,
  ans-text-color: auto,
  q-bg: auto,
  q-border: auto,
  q-radius: auto,
  q-padding: auto,
) = {
  if num-style != auto { vp-q-num-style.update(num-style) }
  if lines != auto { vp-q-lines.update(lines) }
  if prefix != auto { vp-q-prefix.update(prefix) }
  if icon-before != auto { vp-q-icon-before.update(icon-before) }
  if icon-after != auto { vp-q-icon-after.update(icon-after) }
  if lbl-color != auto { vp-q-lbl-color.update(lbl-color) }
  if lbl-bg != auto { vp-q-lbl-bg.update(lbl-bg) }
  if lbl-border != auto { vp-q-lbl-border.update(lbl-border) }
  if lbl-radius != auto { vp-q-lbl-radius.update(lbl-radius) }
  if lbl-padding != auto { vp-q-lbl-padding.update(lbl-padding) }
  if opt-color != auto { vp-opt-color.update(opt-color) }
  if opt-bg != auto { vp-opt-bg.update(opt-bg) }
  if opt-border != auto { vp-opt-border.update(opt-border) }
  if opt-radius != auto { vp-opt-radius.update(opt-radius) }
  if ans-shape != auto { vp-ans-shape.update(ans-shape) }
  if ans-mark-border != auto { vp-ans-mark-border.update(ans-mark-border) }
  if ans-mark-bg != auto { vp-ans-mark-bg.update(ans-mark-bg) }
  if ans-mark-width != auto { vp-ans-mark-width.update(ans-mark-width) }
  if ans-text-color != auto { vp-ans-text-color.update(ans-text-color) }
  if q-bg != auto { vp-q-bg.update(q-bg) }
  if q-border != auto { vp-q-border.update(q-border) }
  if q-radius != auto { vp-q-radius.update(q-radius) }
  if q-padding != auto { vp-q-padding.update(q-padding) }
}

#let _vp-style-states = (
  num-style: vp-q-num-style, lines: vp-q-lines, prefix: vp-q-prefix,
  icon-before: vp-q-icon-before, icon-after: vp-q-icon-after,
  lbl-color: vp-q-lbl-color, lbl-bg: vp-q-lbl-bg, lbl-border: vp-q-lbl-border,
  lbl-radius: vp-q-lbl-radius, lbl-padding: vp-q-lbl-padding,
  opt-color: vp-opt-color, opt-bg: vp-opt-bg, opt-border: vp-opt-border, opt-radius: vp-opt-radius,
  ans-shape: vp-ans-shape, ans-mark-border: vp-ans-mark-border, ans-mark-bg: vp-ans-mark-bg,
  ans-mark-width: vp-ans-mark-width, ans-text-color: vp-ans-text-color,
  q-bg: vp-q-bg, q-border: vp-q-border, q-radius: vp-q-radius, q-padding: vp-q-padding,
)

// Scoped form of vp-set-question-style: settings apply to body only.
// #show: vp-question-style.with(prefix: "Ví dụ") or #vp-question-style(prefix: "Bài")[...]
#let vp-question-style(body, ..settings) = context {
  assert(settings.pos().len() == 0, message: "vietphys: vp-question-style chỉ nhận tham số có tên")
  let named = settings.named()
  _vp-check-keys(named, _vp-style-states, "vp-question-style")
  let previous = named.keys().map(key => (key, _vp-style-states.at(key).get()))
  vp-set-question-style(..named)
  body
  for (key, old) in previous { _vp-style-states.at(key).update(old) }
}

#let vp-question-theme = (
  mcq: (bg: none, border: none, lines: 0, ans-color: vp-colors.danger, ans-shape: "circle", ans-mark-bg: none, ans-mark-border: rgb("#333"), ans-mark-width: 0.8pt, ans-text-color: rgb("#333"), level-color: vp-colors.primary, source-color: vp-colors.text-muted),
  tf: (bg: none, border: none, lines: 0, tf-header: rgb("#1A73E8"), tf-correct-color: vp-colors.success, tf-wrong-color: vp-colors.danger, ans-mark-bg: none, ans-mark-border: rgb("#333"), ans-mark-width: 0.8pt, level-color: vp-colors.primary, source-color: vp-colors.text-muted),
  short: (bg: none, border: none, lines: 0, ans-color: vp-colors.danger, level-color: vp-colors.primary, source-color: vp-colors.text-muted),
  essay: (bg: none, border: none, lines: 5, ans-color: vp-colors.danger, level-color: vp-colors.primary, source-color: vp-colors.text-muted),
)
#let vp-theme-state = state("vp-theme-state", vp-question-theme)

#let _typst-type = type

#let _render-dotlines(lines-count, spacing: 1.2em, above: 8pt) = {
  if lines-count > 0 {
    v(above)
    for i in range(lines-count) {
      line(length: 100%, stroke: (paint: luma(120), thickness: 0.8pt, dash: "dotted"))
      v(spacing)
    }
  }
}

#let _render-short-boxes(border-color, bg-color, ans-str, show-ans, ans-color, count: 4) = {
  assert(_typst-type(count) == int and count > 0, message: "short-boxes phải là số nguyên dương")
  v(8pt)
  let chars = ()
  if show-ans and ans-str != none { chars = str(ans-str).clusters() }
  while chars.len() < count { chars.push("") }
  chars = chars.slice(0, count)
  align(right)[
    #stack(dir: ltr, spacing: 6pt,
      ..chars.map(c => box(
        width: 1.8em, height: 1.8em,
        stroke: if c != "" { 1.2pt + ans-color } else if _typst-type(border-color) == stroke { border-color } else { 1.2pt + border-color },
        fill: bg-color,
        radius: 2pt,
        align(center + horizon)[#text(fill: ans-color, weight: "bold", size: 14pt)[#c]]
      ))
    )
  ]
}

#let bg-color-or(c) = if _typst-type(c) == color { c.lighten(85%) } else { rgb("#FFF1F0") }

// Option letters A, B, ..., Z, AA ... and statement letters a, b, c, ...
#let _vp-opt-letter(i) = numbering("A", i + 1)
#let _vp-tf-letter(i) = numbering("a", i + 1)

// Canonical answers: "A".."Z" for mcq and "Đ"/"S" for true/false items.
#let _vp-normalize-mcq-ans(ans, count) = {
  if ans == none or count == 0 { return ans }
  let a = if _typst-type(ans) == int and ans >= 1 { _vp-opt-letter(ans - 1) } else { ans }
  assert(_typst-type(a) == str, message: "vietphys: ans của câu mcq phải là chữ cái như \"B\"")
  a = upper(a.trim())
  let valid = range(count).map(_vp-opt-letter)
  assert(a in valid, message: "vietphys: ans \"" + a + "\" không khớp phương án nào ("
    + valid.join(", ") + ")")
  a
}
#let _vp-normalize-tf-ans(ans-tf) = {
  assert(_typst-type(ans-tf) == array, message: "vietphys: ans-tf phải là mảng, ví dụ (\"Đ\", \"S\")")
  ans-tf.map(a => {
    if a == true or a in ("Đ", "đ", "D", "d") { "Đ" }
    else if a == false or a in ("S", "s") { "S" }
    else if a == none or a == "" { "" }
    else { panic("vietphys: mỗi phần tử ans-tf phải là \"Đ\", \"S\", true hoặc false, không phải " + repr(a)) }
  })
}

#let _render-tf(statements, style, header-bg, header-color, border-color, row-bg, ans-tf, show-ans, correct-color, wrong-color, box-bg, box-border, box-width, inset: auto, labels: vp-default-labels) = {
  if statements.len() > 0 {
    v(8pt)
    let fill-val = if box-bg == auto or box-bg == none { none } else { box-bg }
    let stroke-val = if box-border == auto or box-border == none {
      let w = if box-width == auto { 0.8pt } else { box-width }
      w + luma(150)
    } else if _typst-type(box-border) == stroke {
      box-border
    } else {
      let w = if box-width == auto { 0.8pt } else { box-width }
      w + box-border
    }

    let empty-box = box(width: 12pt, height: 12pt, fill: fill-val, stroke: stroke-val, radius: 2pt)

    if style == "table" {
      // Split between statements; keep every statement and its Đ/S cells intact.
      set table.cell(breakable: false)
      let final-header-color = if header-color == auto { white } else { header-color }
      let table-stroke = if _typst-type(border-color) == stroke { border-color } else { 0.5pt + border-color }
      table(
        ..(if inset == auto { (:) } else { (inset: inset) }),
        columns: (1fr, 35pt, 35pt), align: (left+horizon, center+horizon, center+horizon), stroke: table-stroke,
        table.header(repeat: true,
          table.cell(fill: header-bg, align: center, text(fill: final-header-color, weight: "bold")[#labels.statement]),
          table.cell(fill: header-bg, align: center, text(fill: final-header-color, weight: "bold")[#labels.tf-true]),
          table.cell(fill: header-bg, align: center, text(fill: final-header-color, weight: "bold")[#labels.tf-false]),
        ),
        ..statements.enumerate().map(((i, s)) => {
          let is-d = show-ans and ans-tf.len() > i and ans-tf.at(i) == "Đ"
          let is-s = show-ans and ans-tf.len() > i and ans-tf.at(i) == "S"
          (
            table.cell(fill: row-bg, align: left, [
              #show math.equation.where(block: false): it => box(inset: (y: 6pt), it)
              *#_vp-tf-letter(i))* #s
            ]),
            table.cell(fill: if is-d { bg-color-or(correct-color) } else { row-bg })[#if is-d { text(fill: correct-color, weight: "bold")[✓] } else { empty-box }],
            table.cell(fill: if is-s { bg-color-or(wrong-color) } else { row-bg })[#if is-s { text(fill: wrong-color, weight: "bold")[✗] } else { empty-box }],
          )
        }).flatten()
      )
    } else {
      for (i, s) in statements.enumerate() [
        *#_vp-tf-letter(i))*
        #if show-ans and ans-tf.len() > i and ans-tf.at(i) != "" [
          #let correct = ans-tf.at(i) == "Đ"
          #text(fill: if correct { correct-color } else { wrong-color }, weight: "bold")[ (#if correct [✓ #labels.tf-true] else [✗ #labels.tf-false])]
        ]
        #s \ #v(4pt)
      ]
    }
  }
}

#let _render-mcq-marker(char, is-correct, shape, mark-bg, mark-border, mark-width, ans-text-color, opt-color, opt-bg, opt-border, opt-radius) = {
  set par(first-line-indent: 0pt, hanging-indent: 0pt)
  let r = if shape == "square" { 0% } else if shape == "round-rect" or shape == "rounded" { 2.5pt } else { 50% }
  let fill-val = if mark-bg == auto or mark-bg == none { none } else { mark-bg }
  let stroke-val = if mark-border == auto or mark-border == none { 0.8pt + black } else if type(mark-border) == stroke { mark-border } else { mark-width + mark-border }
  let text-col = if is-correct and ans-text-color != auto and ans-text-color != none { ans-text-color } else { opt-color }

  if is-correct and shape != "none" {
    h(2pt)
    box[
      #place(
        center + horizon,
        dy: -0.05em,
        box(
          width: 1.35em,
          height: 1.35em,
          radius: r,
          stroke: stroke-val,
          fill: fill-val,
        )
      )
      #text(weight: "bold", fill: text-col)[#char]
    ]
    h(2pt)
  } else if opt-bg != none or opt-border != none {
    box(
      inset: (x: 4pt, y: 1.5pt),
      fill: opt-bg,
      stroke: opt-border,
      radius: opt-radius,
      text(weight: "bold", fill: opt-color)[#char.]
    )
  } else {
    h(2pt)
    text(weight: "bold", fill: opt-color)[#char.]
  }
}

#let _render-essay-answer(ans, show-ans, ans-color, labels: vp-default-labels) = {
  if show-ans and ans != none {
    v(8pt)
    text(fill: ans-color, weight: "bold")[#labels.answer #ans]
  }
}

#let vp-question(
  stem, listEs: (), items: none, num-style: auto, type: "mcq", options: (), statements: (), ans: none, ans-tf: (), sol: none, level: none, source: none, stem2: none, image-scope: "stem",
  prefix: auto, points: none, data: none,
  q-spacing: auto, stem-spacing: auto, keep-first-line: auto,
  line-spacing: auto, lines-above: auto, tf-inset: auto, breakable: auto,
  short-boxes: 4, short-fields: (),

  lines: auto, q-bg: auto, q-border: auto, tf-header-bg: auto, ans-color: auto, tf-correct-color: auto, tf-wrong-color: auto, ans-shape: auto, ans-mark-bg: auto, ans-mark-border: auto, ans-mark-width: auto, ans-text-color: auto, level-color: auto, source-color: auto,
  q-radius: auto, q-padding: auto, q-margin: 6pt, lbl-color: auto, lbl-bg: auto, lbl-border: auto, lbl-radius: auto, lbl-padding: auto, icon-before: auto, icon-after: auto, opt-color: auto, opt-bg: auto, opt-border: auto, opt-radius: auto, opt-padding: 0pt, tf-style: "table", tf-header-color: white, tf-border: rgb("#E8E8E8"), tf-row-bg: none, short-border: rgb("#333333"), short-bg: none, image: none, image-ratio: 0.65, image-gap: 4%, image-side: "right", image-valign: top,
) = {
  let listEs = if items != none { items } else { listEs }
  let ans-tf = _vp-normalize-tf-ans(ans-tf)
  let ans = if type == "mcq" { _vp-normalize-mcq-ans(ans, options.len()) } else { ans }
  vp-q-counter.step()
  context {
    let custom-types = vp-question-types.get()
    assert(type in _vp-builtin-types or type in custom-types,
      message: "vietphys: loại câu " + repr(type) + " chưa được hỗ trợ. Dùng mcq, tf, short, essay"
        + if custom-types.len() > 0 { " hoặc " + custom-types.keys().join(", ") } else { "" }
        + ", hoặc đăng ký bằng vp-register-question-type.")
    let labels = vp-labels.get()
    let layout-style = _vp-exercise-style.get()
    let q-spacing = if q-spacing == auto { layout-style.q-spacing } else { q-spacing }
    // Set only when requested: do not alter spacing in existing documents.
    set block(spacing: q-spacing) if q-spacing != auto
    let q-spacing = if q-spacing == auto { 12pt } else { q-spacing }
    let stem-spacing = if stem-spacing == auto { layout-style.stem-spacing } else { stem-spacing }
    let keep-first-line = if keep-first-line == auto { layout-style.keep-first-line } else { keep-first-line }
    let line-spacing = if line-spacing == auto { layout-style.line-spacing } else { line-spacing }
    let lines-above = if lines-above == auto { layout-style.lines-above } else { lines-above }
    let tf-inset = if tf-inset == auto { layout-style.tf-inset } else { tf-inset }
    let breakable = if breakable == auto { not layout-style.keep-together.contains(type) } else { breakable }
    let index = vp-q-counter.get().first()
    let num-format = if num-style == auto { vp-q-num-style.get() } else { num-style }
    let num = index
    let display-num = numbering(num-format, num)
    let is-ans = vp-show-ans.get()
    let is-sol = vp-show-sol.get()
    let is-level = vp-show-level.get()
    let is-source = vp-show-source.get()

    let theme-dict = vp-theme-state.get()
    let theme = theme-dict.at(type, default: theme-dict.mcq)

    let g-q-bg = vp-q-bg.get()
    let g-q-border = vp-q-border.get()
    let g-q-radius = vp-q-radius.get()
    let g-q-padding = vp-q-padding.get()

    let final-bg = if q-bg != auto { q-bg } else if g-q-bg != auto { g-q-bg } else { theme.at("bg", default: none) }
    let final-border = if q-border != auto { q-border } else if g-q-border != auto { g-q-border } else { theme.at("border", default: none) }
    let final-q-radius = if q-radius != auto { q-radius } else if g-q-radius != auto { g-q-radius } else { 5pt }
    let final-q-padding = if q-padding != auto { q-padding } else if g-q-padding != auto { g-q-padding } else { 12pt }

    let final-lines = if lines != auto { lines } else if vp-q-lines.get() != auto { vp-q-lines.get() } else { theme.at("lines", default: 0) }
    let pal = vp-resolve-palette()
    let final-tf-header = if tf-header-bg == auto { theme.at("tf-header", default: pal.primary) } else { tf-header-bg }
    let final-ans-color = if ans-color == auto { theme.at("ans-color", default: vp-colors.danger) } else { ans-color }
    let final-tf-correct = if tf-correct-color == auto { theme.at("tf-correct-color", default: vp-colors.success) } else { tf-correct-color }
    let final-tf-wrong = if tf-wrong-color == auto { theme.at("tf-wrong-color", default: vp-colors.danger) } else { tf-wrong-color }

    let g-ans-shape = vp-ans-shape.get()
    let g-ans-mark-bg = vp-ans-mark-bg.get()
    let g-ans-mark-border = vp-ans-mark-border.get()
    let g-ans-mark-width = vp-ans-mark-width.get()
    let g-ans-text-color = vp-ans-text-color.get()

    let final-ans-shape = if ans-shape != auto { ans-shape } else if g-ans-shape != auto { g-ans-shape } else { theme.at("ans-shape", default: "circle") }
    let final-ans-mark-bg = if ans-mark-bg != auto { ans-mark-bg } else if g-ans-mark-bg != auto { g-ans-mark-bg } else { theme.at("ans-mark-bg", default: none) }
    let final-ans-mark-border = if ans-mark-border != auto { ans-mark-border } else if g-ans-mark-border != auto { g-ans-mark-border } else { theme.at("ans-mark-border", default: rgb("#333")) }
    let final-ans-mark-width = if ans-mark-width != auto { ans-mark-width } else if g-ans-mark-width != auto { g-ans-mark-width } else { theme.at("ans-mark-width", default: 0.8pt) }
    let final-ans-text-color = if ans-text-color != auto { ans-text-color } else if g-ans-text-color != auto { g-ans-text-color } else { theme.at("ans-text-color", default: rgb("#333")) }

    let g-opt-color = vp-opt-color.get()
    let g-opt-bg = vp-opt-bg.get()
    let g-opt-border = vp-opt-border.get()
    let g-opt-radius = vp-opt-radius.get()

    let final-opt-color = if opt-color != auto { opt-color } else if g-opt-color != auto { g-opt-color } else { rgb("#333333") }
    let final-opt-bg = if opt-bg != auto { opt-bg } else if g-opt-bg != auto { g-opt-bg } else { none }
    let final-opt-border = if opt-border != auto { opt-border } else if g-opt-border != auto { g-opt-border } else { none }
    let final-opt-radius = if opt-radius != auto { opt-radius } else if g-opt-radius != auto { g-opt-radius } else { 0pt }

    let g-prefix = vp-q-prefix.get()
    let final-prefix = if prefix != auto { prefix } else if g-prefix != auto { g-prefix } else { "Câu" }

    let g-icon-before = vp-q-icon-before.get()
    let final-icon-before = if icon-before != auto { icon-before } else { g-icon-before }

    let g-icon-after = vp-q-icon-after.get()
    let final-icon-after = if icon-after != auto { icon-after } else { g-icon-after }

    let g-lbl-color = vp-q-lbl-color.get()
    let final-lbl-color = if lbl-color != auto { lbl-color } else if g-lbl-color != auto { g-lbl-color } else { pal.dark }

    let g-lbl-bg = vp-q-lbl-bg.get()
    let final-lbl-bg = if lbl-bg != auto { lbl-bg } else if g-lbl-bg != auto { g-lbl-bg } else { none }

    let g-lbl-border = vp-q-lbl-border.get()
    let final-lbl-border = if lbl-border != auto { lbl-border } else if g-lbl-border != auto { g-lbl-border } else { none }

    let g-lbl-radius = vp-q-lbl-radius.get()
    let final-lbl-radius = if lbl-radius != auto { lbl-radius } else if g-lbl-radius != auto { g-lbl-radius } else { 0pt }

    let g-lbl-padding = vp-q-lbl-padding.get()
    let final-lbl-padding = if lbl-padding != auto { lbl-padding } else if g-lbl-padding != auto { g-lbl-padding } else { 0pt }

    let final-level-color = if level-color == auto { theme.at("level-color", default: pal.primary) } else { level-color }
    let final-source-color = if source-color == auto { theme.at("source-color", default: vp-colors.text-muted) } else { source-color }

    let entry = (num: num, display-num: display-num, type: type, ans: ans, ans-tf: ans-tf, sol: sol, shown_inline: is-sol, prefix: final-prefix,
      chapter: counter("vp-chapter").get().first(), lesson: counter("vp-lesson").get().first(),
      batch: _vp-keys-batch.get().first(), sol-batch: _vp-sol-batch.get().first(),
      keys: if type in custom-types { custom-types.at(type).keys } else { auto })
    vp-sol-store.update(arr => {
      arr.push(entry)
      arr
    })

    let final-inset = if final-bg == none and final-border == none { 0pt } else { final-q-padding }
    let final-outset = if final-bg == none and final-border == none { 0pt } else { q-margin }

    let has-visible-level = is-level and level != none
    let has-visible-source = is-source and source != none

    let prefix-str = if final-prefix != "" and final-prefix != none [#final-prefix ] else []
    let lbl-content = [#if final-icon-before != none [#final-icon-before ]#prefix-str#display-num#if final-icon-after != none [ #final-icon-after]]

    let _make_styled_lbl(content) = {
      if final-lbl-bg != none or final-lbl-border != none {
        let pad = if final-lbl-padding != 0pt and final-lbl-padding != none { final-lbl-padding } else { (x: 6pt, y: 2pt) }
        box(fill: final-lbl-bg, stroke: final-lbl-border, radius: final-lbl-radius, inset: pad, text(weight: "bold", fill: final-lbl-color)[#content])
      } else {
        text(weight: "bold", fill: final-lbl-color)[#content]
      }
    }

    // Keep the end of a flowing question's stem with its first option/table row.
    let keep-stem = (
      (type == "mcq" and options.len() > 0)
      or (type == "tf" and statements.len() > 0)
    )
    let stem-block = if not has-visible-level and not has-visible-source {
      let pts-str = if type == "essay" and points != none [ (#points)] else []
      let final-lbl = _make_styled_lbl([#lbl-content#pts-str.])
      block(spacing: stem-spacing, sticky: keep-stem)[#final-lbl #stem]
    } else {
      let header-items = ()
      header-items.push(_make_styled_lbl([#lbl-content:]))
      if has-visible-level { header-items.push(text(fill: final-level-color, weight: "bold")[\[#level\]]) }
      if has-visible-source { header-items.push(text(fill: final-source-color, style: "italic")[\[#source\]]) }
      [#block(spacing: 8pt, sticky: keep-stem)[#header-items.join("  ")] #block(spacing: stem-spacing, sticky: keep-stem)[#stem]]
    }

    let options-block = if type == "mcq" and options.len() > 0 { layout(size => {
      let max-w = 0pt
      for opt in options {
        let size = measure(opt)
        if size.width > max-w { max-w = size.width }
      }

      let total-w = max-w + 35pt
      let avail-w = size.width
      let cols-count = if total-w * 4 + 36pt <= avail-w { 4 } else if total-w * 2 + 12pt <= avail-w { 2 } else { 1 }

      let col-width = (avail-w - (cols-count - 1) * 12pt) / cols-count
      let cells = options.enumerate().map(((i, opt)) => {
          let char = _vp-opt-letter(i)
          let is-correct = is-ans and ans == char

          let marker = _render-mcq-marker(
            char,
            is-correct,
            final-ans-shape,
            final-ans-mark-bg,
            final-ans-mark-border,
            final-ans-mark-width,
            final-ans-text-color,
            final-opt-color,
            final-opt-bg,
            final-opt-border,
            final-opt-radius,
          )

          let opt-content = if is-correct {
            let tc = if final-ans-text-color != auto and final-ans-text-color != none { final-ans-text-color } else { final-opt-color }
            text(fill: tc, weight: "bold")[#opt]
          } else {
            opt
          }

          // Keep the marker on the first text baseline, including tall fractions.
          // Wrapped lines retain the same indent as the option's first word.
          let marker-width = measure(marker).width
          box(width: col-width, inset: (y: 6pt),
            par(first-line-indent: 0pt, hanging-indent: marker-width + 3pt)[
              #marker#h(3pt)#opt-content
            ])
        })
      // Inline boxes share their first baseline across each row. Grid top/center
      // alignment cannot keep labels level when only one option has a fraction.
      grid(
        columns: (1fr,), row-gutter: 12pt,
        ..cells.chunks(cols-count).map(row =>
          par(first-line-indent: 0pt, hanging-indent: 0pt)[#row.join(h(12pt))]),
      )
    }) } else if type == "tf" [
      #_render-tf(statements, tf-style, final-tf-header, tf-header-color, tf-border, tf-row-bg, ans-tf, is-ans, final-tf-correct, final-tf-wrong, final-ans-mark-bg, final-ans-mark-border, final-ans-mark-width, inset: tf-inset, labels: labels)
    ] else if type == "short" [
      #if short-fields.len() == 0 {
        _render-short-boxes(short-border, short-bg, ans, is-ans, final-ans-color, count: short-boxes)
      } else {
        for field in short-fields {
          block(width: 100%, breakable: false,
            grid(columns: (1fr, auto), column-gutter: 12pt, align: horizon,
              field.at("label", default: []),
              _render-short-boxes(short-border, short-bg, field.at("ans", default: none), is-ans, final-ans-color, count: field.at("boxes", default: short-boxes)),
            ))
        }
      }
    ] else if type == "essay" [
      #_render-essay-answer(ans, is-ans, final-ans-color, labels: labels)
    ] else if type in custom-types {
      (custom-types.at(type).render)((
        num: num, display-num: display-num, options: options, statements: statements,
        ans: ans, ans-tf: ans-tf, show-ans: is-ans, ans-color: final-ans-color,
        palette: pal, labels: labels, data: data,
      ))
    }

    let content-with-image = if image != none {
      if image-side == "bottom" {
        [
          #stem-block
          #if stem2 != none [#block(spacing: 12pt)[#stem2]]
          #v(8pt)
          #align(center)[#image]
          #v(8pt)
          #options-block
        ]
      } else {
        let left-col = if image-side == "left" { 1fr * image-ratio } else { 1fr }
        let right-col = if image-side == "left" { 1fr } else { 1fr * image-ratio }

        if image-scope == "full" {
          grid(columns: (left-col, right-col), gutter: image-gap, align: image-valign,
            if image-side == "left" { image } else { [#stem-block #if stem2 != none [#block(spacing: 12pt)[#stem2]] #options-block] },
            if image-side == "left" { [#stem-block #if stem2 != none [#block(spacing: 12pt)[#stem2]] #options-block] } else { image }
          )
        } else {
          let top-grid = grid(columns: (left-col, right-col), gutter: image-gap, align: image-valign,
            if image-side == "left" { image } else { stem-block },
            if image-side == "left" { stem-block } else { image }
          )
          [ #top-grid #if stem2 != none [#block(spacing: 12pt)[#stem2]] #options-block ]
        }
      }
    } else {
      [#stem-block #if stem2 != none [#block(spacing: 12pt)[#stem2]] #options-block]
    }

    let question-body = [
      #content-with-image
      #if listEs != none and listEs.len() > 0 { enum(..listEs, numbering: "a)") }
    ]
    let has-writing-lines = final-lines > 0 and not (is-sol and sol != none)
    let final-content = [
      #if keep-first-line and has-writing-lines {
        block(sticky: true, above: 0pt, below: 0pt, question-body)
      } else { question-body }
      #if not (is-sol and sol != none) [ #_render-dotlines(final-lines, spacing: line-spacing, above: lines-above) ]
      #if is-sol and sol != none [
        #v(12pt)
        #let sol-bg = pal.bg
        #let sol-stroke = pal.primary
        #let sol-title = pal.dark
        #block(fill: sol-bg, stroke: (left: 3pt + sol-stroke), radius: (right: 4pt), inset: 12pt, width: 100%, breakable: true)[
          #text(fill: sol-title, weight: "bold")[#labels.solution] \ #v(4pt) #sol
        ]
      ]
    ]

    block(breakable: breakable, fill: final-bg, stroke: final-border, radius: final-q-radius, inset: final-inset, outset: final-outset, width: 100%)[#final-content]
    v(q-spacing)
  }
}

// scope: "all" (default), "chapter", "lesson", "batch" (since the previous batch call)
// or a function item => bool. groups: true prefixes numbers after each counter reset.
#let _vp-select-items(store, scope, batch) = {
  if scope == "all" { return store }
  if type(scope) == function { return store.filter(scope) }
  assert(scope in ("chapter", "lesson", "batch"),
    message: "vietphys: scope phải là \"all\", \"chapter\", \"lesson\", \"batch\" hoặc một hàm")
  let chapter = counter("vp-chapter").get().first()
  let lesson = counter("vp-lesson").get().first()
  if scope == "chapter" { store.filter(x => x.at("chapter", default: 0) == chapter) }
  else if scope == "lesson" {
    store.filter(x => x.at("chapter", default: 0) == chapter and x.at("lesson", default: 0) == lesson)
  } else { store.filter(x => x.at(batch.key, default: 0) == batch.value) }
}

#let _vp-with-groups(items, groups, group-numbering) = {
  let group = 0
  let previous = none
  let result = ()
  for item in items {
    if previous != none and item.num <= previous { group += 1 }
    previous = item.num
    result.push(item + (group: group))
  }
  let label-of = if groups and group > 0 {
    it => numbering(group-numbering, it.group + 1) + "." + str(it.at("display-num", default: it.num))
  } else {
    it => it.at("display-num", default: it.num)
  }
  (result, label-of)
}

#let vp-print-solutions(title: auto, scope: "all", groups: false, group-numbering: "I") = {
  context {
    let labels = vp-labels.get()
    let store = _vp-select-items(vp-sol-store.get(), scope,
      (key: "sol-batch", value: _vp-sol-batch.get().first()))
    let (store, label-of) = _vp-with-groups(store, groups, group-numbering)
    let arr = store.filter(item => item.sol != none and not item.shown_inline)
    if arr.len() > 0 {
      let pal = vp-resolve-palette()
      let c-success = pal.primary
      let title = if title == auto { labels.solutions-title } else { title }
      if title != none { heading(level: 1)[#text(fill: c-success)[#title]] }
      for item in arr {
        let p = item.at("prefix", default: "Câu")
        block(fill: pal.bg, stroke: 1pt + c-success, radius: 4pt, inset: 12pt, width: 100%, breakable: true)[
          *#p #label-of(item):* \ #v(4pt) #item.sol
        ]
        v(10pt)
      }
    }
  }
  // Only batch mode adds a marker, so default calls leave layout untouched.
  if scope == "batch" { _vp-sol-batch.step() }
}

#let vp-print-keys(title: auto, scope: "all", groups: false, group-numbering: "I",
  accent: auto, mcq-columns: 5, short-columns: 4) = {
  context {
    let labels = vp-labels.get()
    let store = _vp-select-items(vp-sol-store.get(), scope,
      (key: "batch", value: _vp-keys-batch.get().first()))
    let (store, label-of) = _vp-with-groups(store, groups, group-numbering)
    let kind(x) = x.at("keys", default: auto)
    let mcqs = store.filter(x => (x.type == "mcq" or kind(x) == "mcq") and x.ans != none)
    let tfs = store.filter(x => x.type == "tf" and x.ans-tf != ())
    let shorts = store.filter(x => (x.type == "short" or x.type == "essay" or kind(x) == "short") and x.ans != none)

    let c-border = vp-colors.at("border", default: rgb("#E8E8E8"))
    let c-danger = if accent == auto { vp-colors.at("danger", default: rgb("#FF4D4F")) } else { accent }
    let c-primary = vp-colors.at("primary", default: rgb("#1890FF"))
    let c-success = vp-colors.at("success", default: rgb("#52C41A"))
    let table-stroke = 0.5pt + c-border

    if store.len() > 0 {
      let title = if title == auto { labels.keys-title } else { title }
      if title != none { heading(level: 1)[#text(fill: c-danger)[#title]] }

      if mcqs.len() > 0 {
        heading(level: 2)[#labels.keys-mcq]
        table(
          columns: (1fr,) * mcq-columns, stroke: table-stroke, align: center + horizon,
          ..mcqs.map(it => [ *#label-of(it).* #text(fill: c-danger, weight: "bold")[#it.ans] ])
        )
      }

      if tfs.len() > 0 {
        let n = calc.max(4, ..tfs.map(it => it.ans-tf.len()))
        heading(level: 2)[#labels.keys-tf]
        table(
          columns: (auto,) + (1fr,) * n, stroke: table-stroke, align: center + horizon,
          table.cell(fill: rgb("#FAFAFA"))[*#labels.keys-question*],
          ..range(n).map(i => table.cell(fill: rgb("#FAFAFA"))[*#_vp-tf-letter(i))*]),
          ..tfs.map(it => {
            let cells = (table.cell(fill: rgb("#FAFAFA"))[*#label-of(it)*],)
            let ans = it.ans-tf
            while ans.len() < n { ans.push("") }
            for a in ans.slice(0, n) {
              let c = if a == "Đ" { c-success } else if a == "S" { c-danger } else { black }
              let shown = if a == "Đ" { labels.tf-true } else if a == "S" { labels.tf-false } else { a }
              cells.push(text(fill: c, weight: "bold")[#shown])
            }
            cells
          }).flatten()
        )
      }

      if shorts.len() > 0 {
        heading(level: 2)[#labels.keys-short]
        table(
          columns: (1fr,) * short-columns, stroke: table-stroke, align: center + horizon,
          ..shorts.map(it => [ *#label-of(it).* #text(fill: c-danger, weight: "bold")[#it.ans] ])
        )
      }
    }
  }
  // Only batch mode adds a marker, so default calls leave layout untouched.
  if scope == "batch" { _vp-keys-batch.step() }
}

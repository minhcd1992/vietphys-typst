#import "../themes/default_theme.typ": *
#import "../themes/theme_colors.typ": *

#let vp-q-counter = counter("vp-question")
#let vp-show-ans = state("vp-show-ans", false)
#let vp-show-sol = state("vp-show-sol", false)
#let vp-show-level = state("vp-show-level", true)
#let vp-show-source = state("vp-show-source", true)
#let vp-sol-store = state("vp-sol-store", ())

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

#let _render-tf(statements, style, header-bg, header-color, border-color, row-bg, ans-tf, show-ans, correct-color, wrong-color, box-bg, box-border, box-width, inset: auto) = {
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
          table.cell(fill: header-bg, align: center, text(fill: final-header-color, weight: "bold")[Phát biểu]),
          table.cell(fill: header-bg, align: center, text(fill: final-header-color, weight: "bold")[Đ]),
          table.cell(fill: header-bg, align: center, text(fill: final-header-color, weight: "bold")[S]),
        ),
        ..statements.enumerate().map(((i, s)) => {
          let is-d = show-ans and ans-tf.len() > i and ans-tf.at(i) == "Đ"
          let is-s = show-ans and ans-tf.len() > i and ans-tf.at(i) == "S"
          (
            table.cell(fill: row-bg, align: left, [
              #show math.equation.where(block: false): it => box(inset: (y: 6pt), it)
              *#("abcd".at(i)))* #s
            ]),
            table.cell(fill: if is-d { bg-color-or(correct-color) } else { row-bg })[#if is-d { text(fill: correct-color, weight: "bold")[✓] } else { empty-box }],
            table.cell(fill: if is-s { bg-color-or(wrong-color) } else { row-bg })[#if is-s { text(fill: wrong-color, weight: "bold")[✗] } else { empty-box }],
          )
        }).flatten()
      )
    } else {
      for (i, s) in statements.enumerate() [
        *#("abcd".at(i)))*
        #if show-ans and ans-tf.len() > i [
          #let correct = ans-tf.at(i) == "Đ"
          #text(fill: if correct { correct-color } else { wrong-color }, weight: "bold")[ (#if correct [✓ Đ] else [✗ S])]
        ]
        #s \ #v(4pt)
      ]
    }
  }
}

#let _render-mcq-marker(char, is-correct, shape, mark-bg, mark-border, mark-width, ans-text-color, opt-color, opt-bg, opt-border, opt-radius) = {
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

#let _render-essay-answer(ans, show-ans, ans-color) = {
  if show-ans and ans != none {
    v(8pt)
    text(fill: ans-color, weight: "bold")[➜ Đáp số: #ans]
  }
}

#let vp-question(
  stem, listEs: (), num-style: auto, type: "mcq", options: (), statements: (), ans: none, ans-tf: (), sol: none, level: none, source: none, stem2: none, image-scope: "stem",
  prefix: auto, points: none,
  q-spacing: auto, stem-spacing: auto, keep-first-line: auto,
  line-spacing: auto, lines-above: auto, tf-inset: auto, breakable: auto,
  short-boxes: 4, short-fields: (),

  lines: auto, q-bg: auto, q-border: auto, tf-header-bg: auto, ans-color: auto, tf-correct-color: auto, tf-wrong-color: auto, ans-shape: auto, ans-mark-bg: auto, ans-mark-border: auto, ans-mark-width: auto, ans-text-color: auto, level-color: auto, source-color: auto,
  q-radius: auto, q-padding: auto, q-margin: 6pt, lbl-color: auto, lbl-bg: none, lbl-border: none, lbl-radius: 0pt, lbl-padding: 0pt, icon-before: none, icon-after: none, opt-color: auto, opt-bg: none, opt-border: none, opt-radius: 0pt, opt-padding: 0pt, tf-style: "table", tf-header-color: white, tf-border: rgb("#E8E8E8"), tf-row-bg: none, short-border: rgb("#333333"), short-bg: none, image: none, image-ratio: 0.65, image-gap: 4%, image-side: "right", image-valign: top,
) = {
  vp-q-counter.step()
  context {
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
    let final-opt-bg = if opt-bg != none { opt-bg } else if g-opt-bg != auto { g-opt-bg } else { none }
    let final-opt-border = if opt-border != none { opt-border } else if g-opt-border != auto { g-opt-border } else { none }
    let final-opt-radius = if opt-radius != 0pt { opt-radius } else if g-opt-radius != auto { g-opt-radius } else { 0pt }

    let g-prefix = vp-q-prefix.get()
    let final-prefix = if prefix != auto { prefix } else if g-prefix != auto { g-prefix } else { "Câu" }

    let g-icon-before = vp-q-icon-before.get()
    let final-icon-before = if icon-before != none { icon-before } else { g-icon-before }

    let g-icon-after = vp-q-icon-after.get()
    let final-icon-after = if icon-after != none { icon-after } else { g-icon-after }

    let g-lbl-color = vp-q-lbl-color.get()
    let final-lbl-color = if lbl-color != auto { lbl-color } else if g-lbl-color != auto { g-lbl-color } else { pal.dark }

    let g-lbl-bg = vp-q-lbl-bg.get()
    let final-lbl-bg = if lbl-bg != none { lbl-bg } else if g-lbl-bg != auto { g-lbl-bg } else { none }

    let g-lbl-border = vp-q-lbl-border.get()
    let final-lbl-border = if lbl-border != none { lbl-border } else if g-lbl-border != auto { g-lbl-border } else { none }

    let g-lbl-radius = vp-q-lbl-radius.get()
    let final-lbl-radius = if lbl-radius != 0pt { lbl-radius } else if g-lbl-radius != auto { g-lbl-radius } else { 0pt }

    let g-lbl-padding = vp-q-lbl-padding.get()
    let final-lbl-padding = if lbl-padding != 0pt { lbl-padding } else if g-lbl-padding != auto { g-lbl-padding } else { 0pt }

    let final-level-color = if level-color == auto { theme.at("level-color", default: pal.primary) } else { level-color }
    let final-source-color = if source-color == auto { theme.at("source-color", default: vp-colors.text-muted) } else { source-color }

    vp-sol-store.update(arr => {
      arr.push((num: num, display-num: display-num, type: type, ans: ans, ans-tf: ans-tf, sol: sol, shown_inline: is-sol, prefix: final-prefix))
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
          let is-correct = is-ans and ans == str("ABCD".at(i))
          let char = str("ABCD".at(i))

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
      #_render-tf(statements, tf-style, final-tf-header, tf-header-color, tf-border, tf-row-bg, ans-tf, is-ans, final-tf-correct, final-tf-wrong, final-ans-mark-bg, final-ans-mark-border, final-ans-mark-width, inset: tf-inset)
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
      #_render-essay-answer(ans, is-ans, final-ans-color)
    ]

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
          #text(fill: sol-title, weight: "bold")[Lời giải:] \ #v(4pt) #sol
        ]
      ]
    ]

    block(breakable: breakable, fill: final-bg, stroke: final-border, radius: final-q-radius, inset: final-inset, outset: final-outset, width: 100%)[#final-content]
    v(q-spacing)
  }
}

#let vp-print-solutions(title: "HƯỚNG DẪN GIẢI CHI TIẾT") = {
  context {
    let arr = vp-sol-store.get().filter(item => item.sol != none and not item.shown_inline)
    if arr.len() > 0 {
      let pal = vp-resolve-palette()
      let c-success = pal.primary
      heading(level: 1)[#text(fill: c-success)[#title]]
      for item in arr {
        let p = item.at("prefix", default: "Câu")
        block(fill: pal.bg, stroke: 1pt + c-success, radius: 4pt, inset: 12pt, width: 100%, breakable: true)[
          *#p #(item.at("display-num", default: item.num)):* \ #v(4pt) #item.sol
        ]
        v(10pt)
      }
    }
  }
}

#let vp-print-keys(title: "BẢNG ĐÁP ÁN NHANH") = {
  context {
    let store = vp-sol-store.get()
    let mcqs = store.filter(x => x.type == "mcq" and x.ans != none)
    let tfs = store.filter(x => x.type == "tf" and x.ans-tf != ())
    let shorts = store.filter(x => (x.type == "short" or x.type == "essay") and x.ans != none)

    let c-border = vp-colors.at("border", default: rgb("#E8E8E8"))
    let c-danger = vp-colors.at("danger", default: rgb("#FF4D4F"))
    let c-primary = vp-colors.at("primary", default: rgb("#1890FF"))
    let c-success = vp-colors.at("success", default: rgb("#52C41A"))
    let table-stroke = 0.5pt + c-border

    if store.len() > 0 {
      heading(level: 1)[#text(fill: c-danger)[#title]]

      if mcqs.len() > 0 {
        heading(level: 2)[PHẦN I. TRẮC NGHIỆM NHIỀU PHƯƠNG ÁN]
        table(
          columns: (1fr,) * 5, stroke: table-stroke, align: center + horizon,
          ..mcqs.map(it => [ *#(it.at("display-num", default: it.num)).* #text(fill: c-danger, weight: "bold")[#it.ans] ])
        )
      }

      if tfs.len() > 0 {
        heading(level: 2)[PHẦN II. TRẮC NGHIỆM ĐÚNG/SAI]
        table(
          columns: (auto, 1fr, 1fr, 1fr, 1fr), stroke: table-stroke, align: center + horizon,
          table.cell(fill: rgb("#FAFAFA"))[*Câu*], table.cell(fill: rgb("#FAFAFA"))[*a)*], table.cell(fill: rgb("#FAFAFA"))[*b)*], table.cell(fill: rgb("#FAFAFA"))[*c)*], table.cell(fill: rgb("#FAFAFA"))[*d)*],
          ..tfs.map(it => {
            let cells = (table.cell(fill: rgb("#FAFAFA"))[*#(it.at("display-num", default: it.num))*],)
            let ans = it.ans-tf
            while ans.len() < 4 { ans.push("") }
            for a in ans.slice(0, 4) {
              let c = if a == "Đ" { c-success } else if a == "S" { c-danger } else { black }
              cells.push(text(fill: c, weight: "bold")[#a])
            }
            cells
          }).flatten()
        )
      }

      if shorts.len() > 0 {
        heading(level: 2)[PHẦN III. TRẢ LỜI NGẮN & TỰ LUẬN]
        table(
          columns: (1fr,) * 4, stroke: table-stroke, align: center + horizon,
          ..shorts.map(it => [ *#(it.at("display-num", default: it.num)).* #text(fill: c-danger, weight: "bold")[#it.ans] ])
        )
      }
    }
  }
}

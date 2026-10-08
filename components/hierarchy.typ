// Public hierarchy API: renderers only draw, this module owns structure and counters.
#import "headings/modern.typ": vp-chapter-modern, vp-lesson-modern
#import "headings/basic.typ": _vp-chapter-basic, _vp-lesson-basic, vp-lesson-star as _vp-lesson-star
#import "hierarchy_rules.typ": vp-hierarchy
#import "document_state.typ": vp-is-first-lesson
#let vp-chapter-counter = counter("vp-chapter")
#let vp-lesson-counter = counter("vp-lesson")

#let _vp-step-structure(c, num) = {
  if num == auto { c.step() }
  else if type(num) == int { c.update(num) }
  else if type(num) == str and num.match(regex("^[0-9]+$")) != none { c.update(int(num)) }
  else { c.step() }
}

#let _vp-structural-heading(level, num, title, supplement, target) = {
  place({
    set heading(offset: 0)
    show heading: it => hide(it)
    let marker = heading(level: level, numbering: (..values) => str(num),
      supplement: supplement, outlined: true, title)
    if target == none { marker } else { [#marker #target] }
  })
}

#let vp-chapter(num: auto, title: "TÊN CHƯƠNG", style: "chap_modern",
  color: auto, font: auto, label: none) = {
  assert(("chap_modern", "chap_hexagon", "default").contains(style), message: "Unknown chapter style")
  pagebreak(weak: true)
  _vp-step-structure(vp-chapter-counter, num)
  vp-lesson-counter.update(0)
  vp-is-first-lesson.update(true)
  context {
    let n = if num == auto { str(vp-chapter-counter.get().first()) } else { str(num) }
    [#metadata("vp-chapter") <vp-chapter-mark>]
    [#metadata((num: n, title: title)) <vp-chapter-info>]
    [#metadata([Chương #n: #title]) <vp-chapter-title>]
    _vp-structural-heading(1, n, title, [Chương], label)
    counter(heading).update(0)
    let f = if font == auto { ("Rounded Mplus 1c", "Arial") } else { font }
    if style == "chap_modern" {
      vp-chapter-modern(num: n, title: title, color: color, font: f)
    } else {
      _vp-chapter-basic(num: n, title: title, style: style, color: color, font: f)
    }
  }
}

#let vp-lesson(num: auto, title: "TÊN BÀI HỌC", subtitle: none,
  style: "less_modern", color: auto, font: auto, tab-text: "BÀI HỌC",
  new-page: auto, label: none) = {
  assert(("less_modern", "less_ribbon", "less_default", "default", "less_star").contains(style),
    message: "Unknown lesson style")
  _vp-step-structure(vp-lesson-counter, num)
  context {
    let should-break = if new-page == auto { not vp-is-first-lesson.get() } else { new-page }
    if should-break { pagebreak(weak: true) }
    vp-is-first-lesson.update(false)
    let n = if num == auto { str(vp-lesson-counter.get().first()) } else { str(num) }
    [#metadata([Bài #n: #title]) <vp-lesson-title>]
    _vp-structural-heading(if heading.offset == 2 { 2 } else { 1 }, n, title, [Bài], label)
    counter(heading).update(0)
    let f = if font == auto { ("Rounded Mplus 1c", "Arial") } else { font }
    if style == "less_modern" {
      vp-lesson-modern(num: n, title: title, subtitle: subtitle, color: color, font: f, tab-text: tab-text)
    } else if style == "less_star" {
      _vp-lesson-star(num: n, title: title, subtitle: subtitle, color: color, font: f, tab-text: tab-text)
    } else {
      _vp-lesson-basic(num: n, title: title, subtitle: subtitle, style: style,
        color: color, font: f, tab-text: tab-text)
    }
  }
}

#let vp-lesson-star = vp-lesson.with(style: "less_star")
#let vp-lesson-title = vp-lesson-star

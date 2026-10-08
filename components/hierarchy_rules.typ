// Semantic nesting is independent of the visual chapter/lesson style.
#let _vp-hierarchy-offset(mode: auto) = {
  if mode == "book" { 2 }
  else if mode == "lesson" { 1 }
  else if mode == "standalone" { 0 }
  else if query(<vp-chapter-title>).len() > 0 { 2 }
  else if query(<vp-lesson-title>).len() > 0 { 1 }
  else { 0 }
}

#let _vp-heading-numbering(pattern, offset: 0) = {
  if pattern == none { none } else {
    (..values) => {
      let all-nums = values.pos()
      let nums = if all-nums.len() > offset { all-nums.slice(offset) } else { all-nums }
      if nums.len() > 0 {
        if type(pattern) == function { pattern(..nums) }
        else {
          let result = numbering(pattern, ..nums)
          // A first-level section reads "1." or "I." in text, TOC and references.
          if nums.len() == 1 and not result.ends-with(".") { result + "." }
          else { result }
        }
      }
    }
  }
}

#let _vp-heading-depth(it) = if it.level > it.offset { it.level - it.offset } else { it.level }

#let vp-hierarchy(mode: auto, body) = {
  assert((auto, "book", "lesson", "standalone").contains(mode),
    message: "hierarchy must be auto, book, lesson, or standalone")
  context {
    let offset = _vp-hierarchy-offset(mode: mode)
    set heading(offset: offset)
    show outline.entry: it => {
      let el = it.element
      if el.func() == heading and el.offset == 0 and el.level <= offset {
        link(el.location(), it.indented(
          [#el.supplement #it.prefix():], it.inner()))
      } else { it }
    }
    body
  }
}

// Shared document state and contextual title queries.
#let vp-is-first-lesson = state("vp-is-first-lesson", true)
#let vp-current-part = state("vp-current-part", "")
#let current-part = vp-current-part // Alias tương thích ngược

#let vp-set-part(title) = [
  #metadata(title)<vp-part-marker>
  #vp-current-part.update(title)
]
#let vp-part = vp-set-part // Alias tiện dụng
#let vp-part-marker(title) = [#metadata(title)<vp-part-marker>]

#let _vp-get-active-part() = {
  let here-loc = here()
  let here-page = here-loc.page()
  let markers-on-page = query(selector(<vp-part-marker>)).filter(m => m.location().page() == here-page)
  let markers-before = query(selector(<vp-part-marker>).before(here-loc))

  if markers-on-page.len() > 0 {
    markers-on-page.last().value
  } else if markers-before.len() > 0 {
    markers-before.last().value
  } else {
    vp-current-part.get()
  }
}

#let _vp-get-smart-heading() = {
  let here-page = here().page()
  let headings = query(heading)
  let valid-headings = headings.filter(h => (h.offset > 0 or h.level <= 3) and
    h.supplement != [Chương] and h.supplement != [Bài])

  let headings-on-page = valid-headings.filter(h => h.location().page() == here-page)
  let headings-before = valid-headings.filter(h => h.location().page() < here-page)

  if headings-on-page.len() > 0 {
    let sorted = headings-on-page.sorted(key: h => h.location().position().y)
    sorted.last().body
  } else if headings-before.len() > 0 {
    let sorted = headings-before.sorted(key: h => h.location().page() * 10000pt + h.location().position().y)
    sorted.last().body
  } else {
    ""
  }
}


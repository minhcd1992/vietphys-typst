#import "@preview/fontawesome:0.6.2": *

#import "../components/document_state.typ": *
#import "../components/document_state.typ": _vp-get-active-part, _vp-get-smart-heading

#let _vp-w-icon(ic, size: 9pt, fill: none) = {
  if ic == none or ic == "" {
    none
  } else if type(ic) == str {
    text(fill: fill, size: size)[#fa-icon(ic)]
  } else {
    text(fill: fill, size: size)[#ic]
  }
}

#let _vp-shorten-title(t, max-len: 26) = {
  let s = if type(t) == str {
    t
  } else if type(t) == content {
    if t.has("text") { t.text } else { repr(t).trim("\"").trim("[").trim("]") }
  } else {
    str(t)
  }
  let cl = s.clusters()
  if cl.len() > max-len {
    cl.slice(0, max-len).join() + "…"
  } else {
    s
  }
}

#let vp-widget-smart-heading(
  title: none,
  icon: "hashtag",
  color: rgb("#1890FF"),
  bg: none,
  font: "Times New Roman",
) = context {
  let actual-title = if title != none { title } else { _vp-get-smart-heading() }
  if actual-title != "" and actual-title != none [
    #let actual-bg = if bg != none { bg } else { color.lighten(92%) }
    #box(
      fill: actual-bg,
      stroke: 0.8pt + color,
      radius: 4pt,
      inset: (x: 6pt, y: 3pt),
    )[
      #grid(
        columns: (auto, auto),
        column-gutter: 4pt,
        align: horizon,
        if icon != none [ #_vp-w-icon(icon, size: 8.5pt, fill: color) ],
        text(fill: color, size: 9pt, weight: "bold", font: font)[#actual-title],
      )
    ]
  ]
}

#let vp-widget-part(
  title: none,
  icon: "bookmark",
  color: rgb("#1890FF"),
  bg: none,
  font: "Times New Roman",
) = context {
  let actual-title = if title != none { title } else { _vp-get-active-part() }
  if actual-title != "" and actual-title != none [
    #let actual-bg = if bg != none { bg } else { color.lighten(92%) }
    #box(
      fill: actual-bg,
      stroke: 0.8pt + color,
      radius: 4pt,
      inset: (x: 6pt, y: 3pt),
    )[
      #grid(
        columns: (auto, auto),
        column-gutter: 4pt,
        align: horizon,
        if icon != none [ #_vp-w-icon(icon, size: 8.5pt, fill: color) ],
        text(fill: color, size: 8.5pt, weight: "bold", font: font)[#_vp-shorten-title(actual-title)],
      )
    ]
  ]
}

#let vp-widget-heading(
  level: 1,
  icon: "hashtag",
  color: rgb("#1890FF"),
  bg: none,
  font: "Times New Roman",
) = context {
  let here-page = here().page()
  let content-headings = query(heading).filter(h => h.level - h.offset == level and
    (h.offset > 0 or h.supplement != [Chương] and h.supplement != [Bài]))
  let headings-on-page = content-headings.filter(h => h.location().page() == here-page)
  let headings-before = query(selector(heading).before(here())).filter(h =>
    h.level - h.offset == level and (h.offset > 0 or h.supplement != [Chương] and h.supplement != [Bài]))

  let target-heading = if headings-on-page.len() > 0 {
    headings-on-page.last().body
  } else if headings-before.len() > 0 {
    headings-before.last().body
  } else {
    none
  }

  if target-heading != none [
    #let actual-bg = if bg != none { bg } else { color.lighten(92%) }
    #box(
      fill: actual-bg,
      stroke: 0.8pt + color,
      radius: 4pt,
      inset: (x: 7pt, y: 3.5pt),
    )[
      #grid(
        columns: (auto, auto),
        column-gutter: 4pt,
        align: horizon,
        if icon != none [ #_vp-w-icon(icon, size: 9pt, fill: color) ],
        text(fill: color, size: 9.5pt, weight: "bold", font: font)[#target-heading],
      )
    ]
  ]
}

#let vp-widget-date(
  date: "24/07/2026",
  icon: "calendar-days",
  color: rgb("#1890FF"),
  bg: none,
  font: "Times New Roman",
) = {
  if date != none and date != "" [
    #let actual-bg = if bg != none { bg } else { color.lighten(94%) }
    #box(
      fill: actual-bg,
      stroke: 0.8pt + color,
      radius: 4pt,
      inset: (x: 6pt, y: 3pt),
    )[
      #grid(
        columns: (auto, auto),
        column-gutter: 4pt,
        align: horizon,
        if icon != none [ #_vp-w-icon(icon, size: 8.5pt, fill: color) ],
        text(fill: color, size: 9pt, weight: "medium", font: font)[#date],
      )
    ]
  ]
}

#let vp-widget-author(
  name: "Thầy Minh",
  role: "GV",
  icon: "chalkboard-user",
  color: rgb("#1890FF"),
  bg: none,
  font: "Times New Roman",
) = {
  let actual-bg = if bg != none { bg } else { color.lighten(92%) }
  box(
    fill: actual-bg,
    stroke: 0.8pt + color,
    radius: 4pt,
    inset: (x: 6pt, y: 3pt),
  )[
    #grid(
      columns: (auto, auto),
      column-gutter: 4pt,
      align: horizon,
      if icon != none [ #_vp-w-icon(icon, size: 9pt, fill: color) ],
      text(fill: color, size: 9pt, font: font)[
        #if role != none and role != "" [*#role:* ]
        #name
      ],
    )
  ]
}

#let vp-widget-school(
  school: "THPT Chuyên",
  class-name: "Lớp 12",
  icon: "school",
  color: rgb("#1890FF"),
  bg: none,
  font: "Times New Roman",
) = {
  let actual-bg = if bg != none { bg } else { color.lighten(92%) }
  box(
    fill: actual-bg,
    stroke: 0.8pt + color,
    radius: 4pt,
    inset: (x: 6pt, y: 3pt),
  )[
    #grid(
      columns: (auto, auto),
      column-gutter: 4pt,
      align: horizon,
      if icon != none [ #_vp-w-icon(icon, size: 9pt, fill: color) ],
      text(fill: color, size: 9pt, font: font)[
        *#school* #if class-name != none [– #class-name]
      ],
    )
  ]
}

#let vp-widget-exam(
  code: "MÃ ĐỀ 101",
  time: "50 phút",
  color: rgb("#D32F2F"),
  font: "Times New Roman",
) = {
  box(
    stroke: 1pt + color,
    radius: 3pt,
    inset: 0pt,
    clip: true,
  )[
    #grid(
      columns: (auto, auto),
      align: center + horizon,
      box(fill: color, inset: (x: 5pt, y: 3pt))[
        #text(fill: white, size: 8.5pt, weight: "bold", font: font)[#code]
      ],
      if time != none [
        #box(fill: color.lighten(93%), inset: (x: 5pt, y: 3pt))[
          #text(fill: color, size: 8.5pt, weight: "bold", font: font)[#time]
        ]
      ],
    )
  ]
}

#let vp-widget-target(
  target: "9+",
  slogan: "Chinh phục điểm 10",
  icon: "bullseye",
  color: rgb("#D35400"),
  font: "Times New Roman",
) = {
  box(
    fill: color.lighten(92%),
    stroke: 0.8pt + color,
    radius: 4pt,
    inset: (x: 6pt, y: 3pt),
  )[
    #grid(
      columns: (auto, auto),
      column-gutter: 4pt,
      align: horizon,
      if icon != none [ #_vp-w-icon(icon, size: 9pt, fill: color) ],
      text(fill: color, size: 9pt, font: font)[
        *Mục tiêu #target* #if slogan != none [– #text(style: "italic")[#slogan]]
      ],
    )
  ]
}

#let vp-widget-pill(
  content,
  icon: none,
  color: rgb("#1890FF"),
  bg: none,
  radius: 4pt,
  font: "Times New Roman",
) = {
  let actual-bg = if bg != none { bg } else { color.lighten(92%) }
  box(
    fill: actual-bg,
    stroke: 0.8pt + color,
    radius: radius,
    inset: (x: 6pt, y: 3pt),
  )[
    #grid(
      columns: (auto, auto),
      column-gutter: 4pt,
      align: horizon,
      if icon != none [ #_vp-w-icon(icon, size: 9pt, fill: color) ], text(fill: color, size: 9pt, font: font)[#content],
    )
  ]
}

#let vp-widget-stack(
  ..widgets,
  spacing: 5pt,
) = {
  let items = widgets.pos()
  grid(
    columns: (auto,) * items.len(),
    column-gutter: spacing,
    align: horizon,
    ..items
  )
}

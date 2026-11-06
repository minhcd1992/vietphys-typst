// Render physics quantities with upright units and Vietnamese decimals.
// Word aliases: exact words, micro prefixes (u, mu, micro) and ohm/Omega suffixes.
#let _vp-unit-words = (
  degree: "°", degC: "°C", degF: "°F", deg: "°",
  Angstrom: "Å", angstrom: "Å", pi: "π", mu: "μ", micro: "μ",
)
#let _vp-micro-units = ("m", "C", "F", "s", "A", "V", "g", "L", "H", "T", "W", "J", "N", "Pa", "mol", "Wb", "Hz")
#let _vp-unit-word(word) = {
  if word in _vp-unit-words { return _vp-unit-words.at(word) }
  for suffix in ("ohm", "Omega") {
    if word.ends-with(suffix) { return word.slice(0, word.len() - suffix.len()) + "Ω" }
  }
  for prefix in ("micro", "mu") {
    if word.starts-with(prefix) { return "μ" + word.slice(prefix.len()) }
  }
  if word.starts-with("u") and word.slice(1) in _vp-micro-units { return "μ" + word.slice(1) }
  word
}

#let vp-unit(unit) = {
  if type(unit) != str { return unit }
  // Rewrite whole ASCII words only, so "lumen" or "bus" keep their letters.
  let source = unit.replace(regex("[A-Za-z]+"), m => _vp-unit-word(m.text))
    .replace("/", "\\/")
    .replace(regex("\\^([+-]?[0-9]+(?:\\.[0-9]+)?)"), exponent => "^(" + exponent.captures.first() + ")")
  source = source.replace(regex("[0-9]+\\.[0-9]+"), token => token.text.replace(".", "§"))
    .replace(regex("[\\p{L}\\p{M}°]+"), token => "\"" + token.text + "\"")
    .replace(regex("[*.]"), " dot.c ").replace("§", ".")
  math.upright(eval(source, mode: "math"))
}

#let vp-qty(val, unit) = {
  let parts = lower(str(val)).split("e")
  assert(parts.len() <= 2, message: "Invalid scientific notation")
  let value = parts.first().replace(".", ",")
  let number = if parts.len() == 2 {
    math.attach([#value #sym.times #sym.space.thin 10], t: [#int(parts.last())])
  } else { [#value] }
  [#number#h(0.15em)#vp-unit(unit)]
}

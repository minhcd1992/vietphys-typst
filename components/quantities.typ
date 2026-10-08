// Render physics quantities with upright units and Vietnamese decimals.
#let vp-unit(unit) = {
  if type(unit) != str { return unit }
  let source = unit.replace("ohm", "Ω")
    .replace("um", "μm").replace("uC", "μC")
    .replace("uF", "μF").replace("us", "μs")
  source = source.replace("Omega", "Ω").replace("micro", "μ").replace("mu", "μ")
    .replace("degree", "°").replace("degC", "°C").replace("degF", "°F").replace("deg", "°")
    .replace("Angstrom", "Å").replace("angstrom", "Å").replace("pi", "π")
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

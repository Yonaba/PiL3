local are_they_valid_numerals = {
  ".0e12",
  ".e12",
  "0.0e",
  "0x12",
  "0xABFG",
  "0xA",
  "FFFF",
  "0xFFFFFFFF",
  "0x",
  "0x1P10",
  "0.1e1",
  "0x0.1p1",
}

for i, numeral in ipairs(are_they_valid_numerals) do
  print(('tonumber(%10s): %s'):format(numeral,tonumber(numeral)))
end
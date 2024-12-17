def number?(input)
  (input.to_i.to_s == input) || (input.to_f.to_s == input)
end

p number?("1")
p number?("2.4")
p number?("0.00")
p number?("00")
p number?("abc")
p number?("&")

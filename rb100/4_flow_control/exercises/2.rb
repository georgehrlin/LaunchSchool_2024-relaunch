def all_caps_0(input)
  return input.upcase if input.length > 10
  input
end

p all_caps_0("Joe Smith")
p all_caps_0("Joe Robertson")

def all_caps_1(input)
  case
  when input.length > 10
    input.upcase
  else
    input
  end
end

p all_caps_1("Joe Smith")
p all_caps_1("Joe Robertson")

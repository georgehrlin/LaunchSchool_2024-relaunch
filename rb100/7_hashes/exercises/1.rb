family = { uncles: ["bob", "joe", "steve"],
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank", "rob", "david"],
           aunts: ["mary", "sally", "susan"]
          }

siblings_hsh = family.select do |title, name|
  title == :sisters || title == :brothers
end

siblings_arr = siblings_hsh.values.flatten

p siblings_hsh
p siblings_arr

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

names_and_indices = flintstones.each_with_object({}) do |name, result|
  result[name] = flintstones.index(name)
end

p names_and_indices

# Official Solution
flintstones_hash = {}
flintstones.each_with_index { |name, index| flintstones_hash[name] = index }

p flintstones_hash

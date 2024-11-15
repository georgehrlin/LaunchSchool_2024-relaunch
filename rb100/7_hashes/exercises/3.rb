gen_1 = { grass: "Bulbasaur", fire: "Charmander", water: "Squirtle" }

gen_1.each_key { |k| puts k }
gen_1.each_value { |v| puts v }
gen_1.each_pair { |k, v| puts "The type is #{k} and pokemon #{v}!"}

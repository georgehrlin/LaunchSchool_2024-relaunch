gen_1 = { grass: "Bulbasaur", fire: "Charmander", water: "Squirtle" }

p gen_1.has_value?("Mudkip")

p gen_1.has_value?("Charmander")

p gen_1.values.include?("Charmander")

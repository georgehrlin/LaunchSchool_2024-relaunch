=begin
#merge is not destructive to the caller hash but #merge! is.
=end

gen_1 = { grass: "Bulbasaur", fire: "Charmander", water: "Squirtle" }
gen_2 = { grass: "Chikorita", fire: "Cyndaquil",  water: "Totodile" }
gen_3 = { grass: "Treecko",   fire: "Torchic",    water: "Mudkip"   }

gen_123 = gen_1.merge(gen_2, gen_3) do |type, old_v, new_v|
  old_v + " " + new_v
end

p gen_123
p gen_1
#=> {:grass=>"Bulbasaur", :fire=>"Charmander", :water=>"Squirtle"}
# The value associated with gen_1 was not mutated by #merge

gen_i_ii_iii = gen_1.merge!(gen_2, gen_3) do |type, old_v, new_v|
  "#{old_v} + #{new_v}"
end

p gen_i_ii_iii
p gen_1
#=> {:grass=>"Bulbasaur + Chikorita + Treecko", 
#    :fire=>"Charmander + Cyndaquil + Torchic", 
#    :water=>"Squirtle + Totodile + Mudkip"}
# gen_1 is mutated to point to a different value because #merge! is destructive

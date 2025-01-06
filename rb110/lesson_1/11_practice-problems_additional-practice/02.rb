ages = { 
  "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 5843,
  "Eddie" => 10,
  "Marilyn" => 22,
  "Spot" => 237
}

age_total = 0
ages.each { |_, age| age_total += age }

p age_total

# Or:
p ages.values.sum

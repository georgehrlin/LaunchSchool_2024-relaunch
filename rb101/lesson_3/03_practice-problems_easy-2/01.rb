ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.key?('Spot')  # => false

# Sort of?
p ages.assoc('Spot') # => nil

p ages['Spot'] # => nil

p ages.fetch('Spot', "No such key!") # => "No such key!"

# Sort of?
p ages.filter { |key, _| key == 'Spot' } # => {}

# Aliases for key?
p ages.has_key?('Spot')
p ages.member?('Spot')
p ages.include?('Spot')

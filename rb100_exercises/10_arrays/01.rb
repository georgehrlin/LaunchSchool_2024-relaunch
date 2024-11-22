pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = pets[2]

puts my_pet

# From Bob Rodes
puts pets[-2]
puts pets.at(2)
puts pets.find { |i| i == 'fish' }
puts pets.bsearch { |x| x == 'fish' }
puts pets[pets.index('fish')]
puts pets.select { |i| i == 'fish' }

pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets.select { |pet| pet == 'fish' || pet == 'lizard' }

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

puts "I have a pet #{my_pets[my_pets.index('fish')]} and a pet " \
     "#{my_pets[my_pets.index('lizard')]}!"

# Official Answer
my_pets = pets[2..3]

# From Jongchan Son
my_pets = pets.select { |pet| pet.include?('fish') || pet.include?('lizard') }

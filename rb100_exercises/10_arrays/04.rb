pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

my_pets << pets[1]
puts "I have a pet #{my_pets.first} and a pet #{my_pets.last}!"


pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

my_pets.push(pets.find { |pet| pet == 'dog'})
puts "I have a pet #{my_pets.first} and a pet #{my_pets.last}!"


pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

my_pets.append(pets.find { |pet| pet.start_with?('d')})
puts "I have a pet #{my_pets.first} and a pet #{my_pets.last}!"

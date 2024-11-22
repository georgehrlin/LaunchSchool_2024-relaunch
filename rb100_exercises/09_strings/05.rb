first_name = 'John'
last_name = 'Doe'
full_name = "#{first_name} #{last_name}"

puts full_name

# Official Answer
# full_name = first_name + ' ' + last_name

# Further Exploration
puts [first_name, ' ', last_name].join

puts first_name.insert(-1, ' ')
puts first_name.insert(-1, last_name)

# From Therese Stokkan
first_name = 'John'
last_name = 'Doe'
puts first_name.concat(' ', last_name)

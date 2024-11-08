# Use the modulo operator, division, or a combination of both to take a 4 digit
# number and find the digit in the: 1) thousands place 2) hundreds place 3)
# tens place 4) ones place

# Digit in the thousands place
puts 4321 / 1000

# Digit in the hundreds place
puts 4321 % 1000 / 100

# Digit in the tens place
puts 4321 % 1000 % 100 / 10
# Or
puts 4321 % 100 / 10

# Digit in the ones place
puts 4321 % 10

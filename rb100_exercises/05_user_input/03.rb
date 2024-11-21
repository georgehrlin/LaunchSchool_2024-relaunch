puts ">> Do you want me to print something? (y/n)"
input = gets.chomp
puts "something" if input == "y"

# Further Exploration
puts ">> Do you want me to print something? (y/n)"
input = gets.chomp
puts "something" if input == "y" || input == "Y"

# Or:
puts ">> Do you want me to print something? (y/n)"
input = gets.chomp
puts "something" if /^[yY]$/.match?(input)

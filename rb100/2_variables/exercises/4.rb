=begin
Modify name.rb again so that it first asks the user for their first name, saves
it into a variable, and then does the same for the last name. Then outputs
their full name all at once.
=end
puts "Hi, what is your first name?\n"
first_name = gets.chomp

puts "Hi, what is your last name?\n"
last_name = gets.chomp

puts "Ah, so your full name is...\n"
puts first_name + ' ' + last_name

# Add another section onto name.rb that prints the name of the user 10 times.
# You must do this without explicitly writing the puts method 10 times in a
# row. Hint: you can use the times method to do something repeatedly.
puts "May I have your name please?\n"

user_name = gets.chomp

puts "So you are #{user_name}! Howdy!"
10.times { puts user_name }

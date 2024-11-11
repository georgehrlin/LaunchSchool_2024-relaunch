=begin
def prompt_user
  puts "Should I stop? Type STOP if you want me to stop."
  user_input = gets.chomp
end

prompt_user

while user_input != "STOP"
  puts "OK! I'm gonna keep on goin'!"
  prompt_user
end
=end

puts "Should I stop? Type STOP if you want me to stop."
user_input = gets.chomp

while user_input != "STOP"
  puts "OK! I'm gonna keep on goin'!"
  puts "Should I stop? Type STOP if you want me to stop."
  user_input = gets.chomp
end

# Official Answer
x = ''
while x != "STOP"
  puts "Hi, how are you feelin'?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end

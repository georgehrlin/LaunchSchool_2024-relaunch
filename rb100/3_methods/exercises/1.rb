puts "May I have your name please?\n"

user_name = gets.chomp

def greeting(name)
  puts "Hi, #{name}! Welcome!"
end

greeting(user_name)

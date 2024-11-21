=begin
PASSWORD = 'SecreT'

input = nil

loop do
  puts '>> Please enter your password:'
  input = gets.chomp
  if input == PASSWORD
    puts 'Welcome!'
    break
  else
    puts '>> Invalid password!'
  end
end

# Official Answer
PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your password:'
  password_try = gets.chomp
  break if password_try == PASSWORD
  puts '>> Invalid password!'
end

puts 'Welcome!'
=end

# From Bob Rodes
require 'io/console'

PASSWORD = 'password'

until STDIN.getpass("Password 1: ") == PASSWORD do
  puts 'Nope, sorry. Try again.'
end
puts 'Access granted 1.'

3.times do |i|
  if STDIN.getpass("Password 2: ") == PASSWORD
    puts 'Access granted 2.'
    break
  elsif i < 2
    puts "Strike #{i + 1}. Try again."
    next
  end
  puts 'Acount locked. you hacker. Bye now.'
end

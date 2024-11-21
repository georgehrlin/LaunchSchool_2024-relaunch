require 'io/console'

USERNAME = 'admin'
PASSWORD = 'SecreT'

loop do
  puts '>> Please enter user name:'
  input_username = gets.chomp
  # puts '>> Please enter your password:'
  input_password = STDIN.getpass('>> Please enter your password:')
  break if input_username == USERNAME && input_password == PASSWORD
  puts '>> Authorization failed!'
end

puts 'Welcome!'

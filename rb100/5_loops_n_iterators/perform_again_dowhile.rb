loop do
  puts "I'm doing something!"
  puts "Do you want to do that again?"
  answer = gets.chomp
  break if answer != 'Y'
end

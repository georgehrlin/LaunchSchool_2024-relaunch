loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer.match(/[yY][eE][sS]/)
  puts "Imma keep goin'! Answer 'yes' if you want me to stop!"
end

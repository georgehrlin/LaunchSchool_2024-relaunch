loop do
  puts ">> Do you want me to print something? (y/n)"
  input = gets.chomp

  if input == "y" || input == "Y"
    puts "something"
    break
  elsif input == "n" || input == "N"
    break
  else
    puts "Invalid input! Please enter y or n"
  end
end

# Official Answer
choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == y

# From Alexandra Prodan
loop do
  puts ">> Do you want me to print something? (y/n)"
  answer = gets.chomp.downcase

  case answer
  when 'y' then ptus 'something'
  when 'n' then break
  else puts ">> Invalid input! Please enter y or n"
  end
end

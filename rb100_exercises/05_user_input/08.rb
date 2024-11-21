def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil

message_invalid_input = '>> Invalid input. Only integers are allowed.'
messsage_zero_denominator = '>> Invalid input. A denominator of 0 is not allowed.'

loop do
  puts '>> Please enter the numerator:'
  numerator = gets.chomp
  unless valid_number?(numerator)
    puts message_invalid_input
  else
    break
  end
end

loop do
  puts '>> Please enter the denominator:'
  denominator = gets.chomp
  if denominator == '0'
    puts messsage_zero_denominator
  elsif valid_number?(denominator) == false
    puts message_invalid_input
  else
    break
  end
end

puts ">> #{numerator} / #{denominator} is #{numerator.to_i / denominator.to_i}"

# Official Answer
loop do
  puts '>> Please enter the numerator:'
  numerator = gets.chomp

  break if valid_number?(numerator)
  puts '>> Invalid input. Only integers are allowed.'
end

loop do
  puts '>> Please enter the denominator:'
  denominator = gets.chomp

  if denominator == '0'
    puts '>> Invalid input. A denominator of 0 is not allowed.'
  else
    break if valid_number?(denominator)
    puts '>> Invalid input. Only integers are allowed.'
  end
end

result = numerator.to_i / denominator.to_i
puts ">> #{numerator} / #{denominator} = #{result}"

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def positive_negative?(num1, num2)
  (num1 > 0 && num2 < 0) || (num1 < 0 && num2 > 0)
end

integer1 = nil
integer2 = nil
message_prompt_input = '>> Please enter a positive or negative integer:'
message_non_zero = '>> Invalid input. Only non-zero integers are allowed.'
message_positive_negative = '>> Sorry. One integer must be positive, ' \
                            'one must be negative.'
message_start_over = '>> Please start over.'

loop do
  loop do
    puts message_prompt_input
    integer1 = gets.chomp
    break if valid_number?(integer1)
    puts message_non_zero
  end

  loop do
    puts message_prompt_input
    integer2 = gets.chomp
    break if valid_number?(integer2)
    puts message_non_zero
  end

  break if positive_negative?(integer1.to_i, integer2.to_i)
  puts message_positive_negative
  puts message_start_over
end

puts "#{integer1} + #{integer2} = #{integer1.to_i + integer2.to_i}"

# Official Answer
def read_number
  loop do
    puts message_prompt_input
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts message_non_zero
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts message_positive_negative
  puts message_start_over
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"

=begin
user_input = nil

loop do
  puts '>> How many output lines do you want? Enter a number >= 3 (Q to Quit):'
  user_input = gets.chomp
  break if user_input.downcase == 'q'

  if user_input.to_i < 3
    puts ">> That's not enough lines."
  else
    while user_input.to_i > 0
      puts 'Launch School is the best!'
      user_input = user_input.to_i
      user_input -= 1
    end
  end
end
=end

=begin
# Official Answer
loop do
  input_string = nil
  number_of_lines = nil

  loop do
    puts '>> How many output lines do you want?' \
         'Enter a number >= 3 (Q to Quit):'

    input_string = gets.chomp.downcase
    break if input_string == 'q'

    number_of_lines = input_string.to_i
    break if number_of_lines >= 3

    puts ">> That's not enough lines."
  end

    break if input_string == 'q'

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end
=end

# From Joel M Barton
loop do
  puts ">> How many output lines do you want? Enter a number >= 3(Q to Quit):"
  lines = gets.chomp
  break if lines.downcase == 'q'
  next puts "That's not enough lines." if lines.to_i < 3
  lines.to_i.times { puts "Launch School is the best!" }
end

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  puts "Number A is: #{number_a}."
  puts "Number B is: #{number_b}."

  if number_a == 5 || number_b == 5
    puts "5 was reached!"
    break
  end
end

# Oops. I forgot to use `next`.
puts "Second attempt:"
# Here's my second attempt:
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  puts "Number A is: #{number_a}."
  puts "Number B is: #{number_b}."

  next if number_a < 5 && number_b < 5

  puts "5 was reached!"
  break
end

# Further Exploration
# Ummm. I already did accidentally in my first attempt.

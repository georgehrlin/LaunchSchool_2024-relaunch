# fibonacci.rb

=begin
def fibonacci(nth)
nth.times do
  if nth < 2
    number
    puts number
  else
    fibonacci(number + number)
    puts number
  end
end
=end

# Official Version
def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

fibonacci(6)

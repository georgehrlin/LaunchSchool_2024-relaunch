numbers = 0..99
counter = 1

while counter <= 5
  puts rand(numbers)
  counter += 1
end

# Official Answer
numbers1 = []

while numbers1.size < 5
  numbers1 << rand(100)
end

puts numbers1

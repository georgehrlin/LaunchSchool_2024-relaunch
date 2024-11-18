iterations1 = 5

iterations1.times do
  puts "Number of iterations = #{iterations1}"
end

# Or:
iterations2 = 1

loop do
  puts "Number of iterations = #{iterations2}"
  iterations2 += 1
  break if iterations2 > 5
end

# Further Exploration
# "If the `break`` statement is moved up one line so it runs before iterations
# is incremented, what would need to be changed?"

# The condition must be lowered by 1, so:
iterations3 = 1

loop do
  puts "Number of iterations = #{iterations3}"
  break if iterations3 > 4
  iterations3 += 1
end

=begin
5.times do |index|
  puts index
  break if index == 2
end
=end

# Further Exploration
5.times do |index|
  puts index
  break if index == 4
end
# Five values will be printed: 0, 1, 2, 3, 4.

5.times do |index|
  puts index
  break if index < 7
end
# One value will be printed: 0.

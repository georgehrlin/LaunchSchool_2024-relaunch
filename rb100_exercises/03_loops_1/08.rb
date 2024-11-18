numbers = [7, 9, 13, 25, 18]

until numbers.empty?
  puts numbers.shift
end

# Or:
# From Elaine Vuong
numbers2 = [7, 9, 13, 25, 18]

puts numbers2.shift until numbers2.empty?

=begin
# Official Answer
numbers1 = [7, 9, 13, 25, 18]

count = 0
until count == numbers1.size
  puts numbers1[count]
  count += 1
end
=end

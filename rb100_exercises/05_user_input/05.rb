num_lines = nil

loop do
  puts ">> How many output lines do you want? Enter a number >=3:"
  num_lines = gets.to_i
  break if num_lines >= 3
  puts ">> That's not enough lines."
end

num_lines.times { puts 'Launch School is the best!' }

# From Chanda Tivey
count = 0

until count >= 3
  puts ">> How many output lines do you want? Enter a number >= 3:"
  count = gets.to_i

  puts ">> That's not enough lines." if count < 3
end

count.times { puts 'Launch School is the best!' }

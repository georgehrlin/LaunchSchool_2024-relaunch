puts "Please enter a number between 0 and 100, inclusive:\n"

n = gets.to_i

case
when 0 <= n && n <= 50
  puts "The number is between 0 and 50."
when 51 <= n && n <= 100
  puts "The number is between 51 and 100."
when n > 100
  puts "The number is larger than 100!"
end

# Official Answer
if n < 0
  puts "You can't enter a negative number."
elsif n <= 50
  puts "The number is between 0 and 50."
elsif n <= 100
  puts "The number is between 51 and 100."
else
  puts "The number is larger than 100!"
end

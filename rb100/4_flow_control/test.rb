# Example 1
if x == 3
  puts "x is 3"
end

# Or:
puts "x is 3" if x == 3

# Or:
puts "x is 3" unless x != 3

# Example 2
if x == 3
  puts "x is 3"
elsif x == 4
  puts "x is 4"
end

# Example 3
if x == 3
  puts "x is 3"
else
  puts "x is NOT 3"
end

# Example 4: must use "then" keyword when using 1-line syntax
if x == 3 then puts "x is 3" end

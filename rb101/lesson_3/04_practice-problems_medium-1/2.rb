# puts "The value of 40 + 2 is " + (40 + 2)

=begin
The line of code above results in an error because the + operator cannot take
a string and an integer as its operands. To concatenate the two values like the
code was intended, we could use interpolation.
=end
puts "The value of 40 + 2 is #{40 + 2}"

# Or we can simply call to_s on (40 + 2)
puts "The value of 40 + 2 is " + (40 + 2).to_s

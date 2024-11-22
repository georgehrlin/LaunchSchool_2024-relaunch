number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

=begin
This code will always print:
My favorite number is 7.

This is because only false and nil are falsey in Ruby. Everything else,
including the 7 here, is truthy, so line 4 will always be executed.
=end

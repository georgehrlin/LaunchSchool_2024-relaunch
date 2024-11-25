def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The reseult is #{multiply_by_five(number)}!"

=begin
Without the code being run, it is clear that either line 6 or line 8 is missing
a to_i. When line 8 is executed, number, which is supposed to referencd a
number but instead references a string, is given to multiply_by_five as
argument, leading to the erroneous output.
=end

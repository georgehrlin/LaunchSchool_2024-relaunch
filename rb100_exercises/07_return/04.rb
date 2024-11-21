def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

=begin
This code will print:
Dinner
Breakfast

When the method meal is called on line 6, it fist outputs Dinner when execution
reaches line 2. Then, meal returns a string Breakfast and it is passed to puts
as its argument, so Breakfast is output next.
=end

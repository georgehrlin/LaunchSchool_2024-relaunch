def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal

=begin
This code will print:
Breakfast

The keyword return returns the value passed to it and quits the method
immediately, so the rest of the code in meal's definition after line 2 never
gets executed. Therefore, meal returns Breakfast and line 7 prints it on the
console.
=end

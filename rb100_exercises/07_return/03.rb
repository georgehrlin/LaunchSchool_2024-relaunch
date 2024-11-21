def meal
  return 'Breakfast'
  'Dinner'
end

puts meal

=begin
This code will print: Breakfast. This is because the keyword return returns
the value provided to it immediately and quits the method, so line 3 never
gets executed.
=end

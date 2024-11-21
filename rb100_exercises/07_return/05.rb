def meal
  'Dinner'
  puts 'Dinner'
end

p meal

=begin
This code will print:
Dinner
nil

When meal is passed to p on line 6 as its argument, meal is called first.
Dinner is first printed when line 3 is reached. Then, meal returns nil as its
return value because line 3 is its last line of code and puts returns nil.
Therefore, the value that is passed to p on line 6 as argument is nil, and
hence nil is printed.
=end

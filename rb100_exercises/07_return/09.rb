def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

=begin
This code will print:
0
1
2
nil

0, 1, and 2 are printed by line 3. Then line 4 evaluates to true and the return
on line 5 is reached.
My guess here is that when return is reached on the third iteration of 5.times,
the entirety of the rest of the method will not be executed. And because no
value is provided to return, count_sheep returns nil as its return value and
it's passed to p on line 10, printing nil.
=end

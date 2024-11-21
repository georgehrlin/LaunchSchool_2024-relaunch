def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

=begin
This code will print:
nil
nil
nil
nil
nil
5

This is because after sheep is initialized as the block parameter of times on
line 2, it is never assigned another value and can only points to nil. nil is
thus printed five times because times is called on 5. After times is executed,
it returns its receiver object, 5, as its return value. That is passed to puts
on line 7, so 5 is also printed in the end. [WRONG]
=end

=begin
CORRECTION

The correct output is:
0
1
2
3
4
5

times {|i| ... } -> self
times calls the given block self times with each integer in (0..self-1).

What actually happens with this code is the block parameter sheep is assigned
0 to 4 in the five iterations of callint times on 5. Therefore, line 3 is
executed 5 times and 0 to 4 are printed.

Then times returns its receiver, 5, and it's passed to puts on line 7 as
argument, printing 5 on the console.
=end

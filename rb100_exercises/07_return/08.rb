def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

=begin
This code will print:
0
1
2
3
4
10

Like the last question, 0 to 4 are printed because they are assigned to sheep
and passed to puts on line 3 five times. Then, count_sheep returns 10 as its
final return value because that is its last line of code. 10 is passed to
puts on line 8 and printed.
=end

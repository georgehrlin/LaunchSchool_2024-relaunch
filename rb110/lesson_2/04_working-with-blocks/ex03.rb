[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end
# 1
# 3
# => [1, 3]

=begin
Line 1  |map      |Outer arr           |No                           |[1, 3]  |No
Line 1-4|block exe|Each s-arr          |No                           |1; 3    |map
Line 2  |first    |Each s-arr          |No                           |1; 3    |puts
Line 2  |puts     |1st element of s-arr|Output first element in s-arr|nil; nil|No
Line 3  |first    |Each s-arr          |NO                           |1; 3    |map [INCORRECT!]

CORRECTION
Block return val

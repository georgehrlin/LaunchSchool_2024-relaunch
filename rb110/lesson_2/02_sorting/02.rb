=begin
arr1 = ['a', 'b', 'c'].freeze
arr2 = arr1.dup
arr2 << 'd'

p arr1
p arr2
=end

str = 'abc'.freeze
str << 'd'

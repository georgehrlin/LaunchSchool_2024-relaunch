a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a
# Output: 7

=begin
While the parameter `b` is assigned the integer value `7` when `my_value` is
called on line 7, the variable is then reassigned another value, `17`, on line
4, so the value that `a` points to does not change.
=end

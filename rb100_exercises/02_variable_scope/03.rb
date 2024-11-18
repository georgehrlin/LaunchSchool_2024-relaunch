a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a
# Output: 7

=begin
Method definitions have self-contained scope. The local variable `a` created on
line 4 is not the same local variable `a` created on line 1, so the seeming
reassignment of `a` on line 4 is actually an initialization that does not
affect the local variable `a` from line 1.
=end

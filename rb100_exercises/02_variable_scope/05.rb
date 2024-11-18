a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
# Output: Xyzzy

=begin
While the paramter variable `b` is assigned the value, "Xyzzy", which `a`
references, it is reassigned a different value on line 4. This does not affect
the value that `a` references. Therefore, line 8 outputs `Xyzzy`.
=end

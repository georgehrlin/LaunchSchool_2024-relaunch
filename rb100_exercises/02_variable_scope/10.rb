a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
# Output: 7

=begin
Local variable `a` still points to `7` in the end. Even though line 6 seems
like reassignment of `a` within a block, it is wrapped inside a method
definition. Method definition has self-contained scope, so line 6's access to
to local variable `a` is forbidden.
[PARTLY WRONG]
=end

=begin
CORRECTION
This code actually raises a `NameError`.
Whiel it is correct that line 6 has no access to local vairable `a` from line
1, line 6 raises the error because `+=` cannot be used to initialize a
variable. The prescence of `+` alone indicates that its receiver has to be
already initialized.
=end

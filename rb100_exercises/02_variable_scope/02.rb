a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a
# Output: 7

=begin
While the parameter `a` on line 3 has the same name as the local variable
initialized on line 1, they are not the same variable, because method
definitions have self-contained scope. Therefore, after being assigned the
value that local variable `a` points to, the parameter variable `a` is
then reassigned a value, `17`, on line 4, without affecting the original value
that the original local variable `a` points to.
=end

=begin
NOTE
(From Official Discussion)
The parameter on line 3 can be set to `a` because method definitions are self-
contained with respect to local variables. Local variables outside the method
definition are not visible inside the method definition; so the top level `a`
is not available inside `my_value`.
Furthermore, local variables inside the method definition are not visible
outside the method definition; so the `a` inside `my_value` is a local variable
with no top-level visibility.
=end

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a
# Output: 7

=begin
Line 4 is a reassignment, which does not affect the object that `a` points to.
`a` remains pointing to `7`, hence the final output.
[WRONG]
=end

=begin
CORRECTION
Oh shoot!
Method definitions have self-contained scope. What actually happens is line 4
has no access to `a`, which is a local variable created in the outer scope, so
this code raises an exception.
=end

# Note: Local variables will be visible (via closures) inside blocks, procs,
# and lambdas.

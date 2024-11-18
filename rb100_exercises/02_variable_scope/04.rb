a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
# Output: Xy-zy

=begin
`String#[]=` is a mutating method. Therefore, after assgining the parameter
varaible `b` on line 3 the value `"Xyzzy"`, calling `[]=` on the object that
`b` points to mutates the object's value. Once the string object is mutated,
passing it to `ptus` on line 8 outputs `Xy-zy`.
=end

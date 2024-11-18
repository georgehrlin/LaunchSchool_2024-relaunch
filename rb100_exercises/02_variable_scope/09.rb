a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
# Output: 7

=begin
I believe what happens here is variable shadowing. The block parameter variable
created on line 4 is not the same local variable created on line 1. Therefore,
the reassignment on line 5 affects exclusively the parameter variable, leaving
the local variable `a` from line 1 unchanged.
=end

# Note: This problem demonstrates shadowing. Shadowing occus when a block
# parameter hides a local variable that is defined outside the block.

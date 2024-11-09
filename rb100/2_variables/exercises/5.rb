=begin
What does x print to the screen in each case? Do they both give errors? Are the
errors different? Why?
=end

=begin
The first program outputs `3` to the screen because from within the block from 
line 2 to 4 `x` is reassigned by incrementing it by `1` three times. When
`puts` is called on line 5, it returns the value `x` points to and it is `3`.

The second program raises a `NameError` because `x` is initialized on line 4,
which is within the inner scope of a block. Variables initialized within a
block is not accessible outside of the block. Therefore, when `puts` is called
on line 6 with `x` as the argument, `x` is undefined and raises an error.

The first program does not give errors but the second one gives a `NameError`.
=end

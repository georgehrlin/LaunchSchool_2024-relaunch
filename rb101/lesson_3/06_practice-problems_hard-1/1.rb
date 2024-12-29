if false
  greeting = "hello world"
end

p greeting

# Q: What do you expect to happen when the greeting variable is referenced in
# the last line of the code below?

# A: nil.

# NOTE: Typically, when an uninitialized variable is referenced, Ruby will
# raise an exception, stating that such variable is undefined. However, when a
# local variable is initialized within an if clause (like above), even if that
# if clause does not get executed, the local variable is initialized to nil.

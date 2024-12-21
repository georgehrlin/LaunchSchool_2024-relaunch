# More Variable Scope
**Method definition** is when, within our code, we define a Ruby method using the `def` keyword.
**Method invocation** is when we call a method, whether that happens to be an existing method from the Ruby Core API or core Library, or a custom method that we've defined ourselves using the `def` keyword.

Technically, any method can be called with a block, but the block is only executed if the method is defined in a particular way.

A block is part of the method invocation. In fact, method invocation followed by `{}` or `do...end` is how we define a block in Ruby. Essentially, the block acts as an argument to the method. In the same way that a local variable can be passed as an argument to a method at invocation, when a method is called with a block, the block acts as an argument to that method.

Method definitions cannot directly access local variables initialized outside of the method definition, nor can local variables initialized outside of the method definition be reassigned from within.

A block can access local variables initialized outside of the block and can reassign those variables.

Methods can access local variables passed in as arguments. Methods can also access local variables through interaction with blocks.

Given this additional context, we can think of method definition as setting a certain scope for any local variables in terms of the parameters that the method definition has, what it does with those parameters, and also how it interacts (if at all) with a block.

We can also think of method invocation as using the scope set by the method definition. If the method is defined to use a block, then the scope of the block can provide additional flexibility in terms of how the method invocation interacts with its surroundings.

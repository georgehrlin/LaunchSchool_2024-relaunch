# Methods

## What are Methods and Why Do We Need Them?
In most programming languages there is a feature called a **procedure**, which allows users to package a piece of code together so it can be reused in multitude easily. This also allows one edit to effect change in multiple locations of the code. It is called a method in Ruby. To create a method we use the keyword `def`.

We call (or invoke) a method by typing its name and passing in arguments. **Parameters** are placeholders for data outside of a method definition's scope so the data can be accessed from within the method definition. (Therefore, if a method does not require access to outside data, parameters are not needed by the method definition.)

**Arguments** are pieces of information that are sent to a method invocation to be modified or used to return a specific result. We pass arguments to a method when we call the method.

(According to GPT-4o: When a method is called, Ruby creates local variables within the method's scope that correspond to the parameters. These local variables are initialized with the values of the arguments passed to the method. This means that while parameters are not variables themselves, they become local variables when the method is executed.)

### Default Parameters
Use `=` with the parameter in a method definition to set the default parameter.
```ruby
def a_method(a_parameter='default_parameter_value')
  # method body
end
```

### Method Definition and Local Variable Scope
A method definition creates its own scope outside the flow of execution. This is why local variables within a method definition cannot be referenced from outside of the method definition. This is also the reason local variables within a method definition cannot access data outside of the method definition, unless the data are passed in as arguments.

## Calling Methods: `obj.method` vs. `method(obj)`
`obj.method` and `method(obj)` are two ways to call methods.
- The `method(obj)` format is for passing an argument to a method call.
- The `obj.method` format includes the **explicit caller**, the object on which the method is being called (like `a_caller.some_method(obj)`); one way to see it (for now) is `some_method` is modifying `a_caller`.

## Mutating Arguments
While the self-contained scope nature of method definitions prevent the access (and hence reassignment) of local variables that are initialized outside of the method definitions, a method can still easily be mutating on the argument that is passed to it as argument.

## `#puts` vs. `return`: The Sequel
In Ruby, methods always returne the evaluated result of the last line of the expression unless an explicit return comes before it.

Use the `return` keyword to return a value explicitly. Once the first `return` is reached within a method definition, the method call will immediately exit and return a value, skipping the rest of the code if there are any.

## Chaining Methods
Because every method call returns something, method calls can be chained to be succinct and expressive. However, make sure every part of the chain returns the desired value and not `nil` nor raises an error.

## Method Calls as Arguments
Ruby allows passing method calls as arguments to other methods.
```ruby
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

multiply(add(20, 45), subtract(80, 10)) # => 4550
```

## The Call Stack (a.k.a The Stack)
The call stack helps Ruby keep track of what method is executing as well as where execution should resume when the method returns.

(In Ruby, methods are not the only thing that uses the call stack. Blocks, procs, and lambdas also use the call stack; in fact, they all use the same call stack as Ruby uses for methods.)

The call stack has a limited size that varies based on the Ruby implementation, although it is usually sufficient for more than 10,000 stack entries. When the stack runs out of run, a `SystemStackError` will be raised.

```ruby
# Example Program
def first
  puts "I'm the first method."
end

def second
  first
  puts "I'm the second method."
end

second
```

**Call Stack**
\-
\-
\-
main

*When the example program starts running, the call stack initially has one item, a **stack frame**. The stack frame represents the global (top-level) portion of the program. It is sometimes called the `main` method. Ruby uses `main` to keep track of what part of the main program it is currently working on.*

**Call Stack**
\-
\-
second
main: line 10

*When program execution reaches the method invocation of `second` on line 10, it first updates the `main` stack frame with the current program location. This is so Ruby knows which location to resume to when `second` finishes running. Then Ruby creates a new stack frame for the `second` method and it is **pushed** onto the stack. With the `main` frame now stuck beneath the `second` frame, the `main` method becomes dormant and the `second` method becomes active.*

**Call Stack**
\-
first
second: line 6
main: line 10

*When program execution reaches the method invocation of `first` on line 6 by `second`, the `second` frame is updated with the current program location. Then, a new stack frame of `first` is pushed onto the stack.*

**Call Stack**
puts
first: line 2
second: line 6
main: line 10

*`first` calls `puts` on line 2, so this location is updated on the `first` frame and a new stack frame of `puts` is pushed on top of the stack. Note: All Ruby methods, including the built-in ones like `puts`, share the same call stack.*

**Call Stack**
\-
first: line 2
second: line 6
main: line 10

*Assuming that `puts` is the only method called (though in reality it's likely that it has several internal calls), it outputs `"I'm the first method."` and returns `nil`. As soon as `puts` returns a value, the top frame—the `puts` stack frame—is **popped** from the call stack, exposing the previous stack frame and revealing the location line 2 which program execution now resumes to.*

**Call Stack**
\-
\-
second: line 6
main: line 10

*Line 2 is the only line of code within `first`'s method definition. As `first` concludes execution and returns, the `first` stack frame is popped from the call stack. Now the previous, `second` stack frame is exposed and program execution resumes on line 6.*

**Call Stack**
\-
puts
second: line 7
main: line 10

*After line 6, program execution moves onto line 7. `puts` is called on line 7, so the location of the `second` frame is updated with line 7, and a new `puts` frame is pushed on top.*

**Call Stack**
\-
\-
second: line 7
main: line 10

*`puts` finishes execution and returns, so the `puts` frame is popped. Program execution now resumes on line 7.*

**Call Stack**
\-
\-
\-
main: line 10

*Line 7 is the last line of code of `second`, so `second` finishes execution and its stack frame is popped. Program execution now resumes on line 10.*

**Call Stack**
\-
\-
\-
\-

*Line 10 is the last line of code of this program. `main` has no more code to run. When this happens, the `main` frame is popped and the program ends.*

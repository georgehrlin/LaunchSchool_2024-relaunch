# Methods

## What are Methods and Why Do We Need Them?
In most programming languages there is a feature called a procedure, which allows users to package a piece of code together so it can be reused in multitude easily. This also allows a change to take place in multiple locations of the code with only one edit. It is called a method in Ruby. To create a method we use the keyword `def`.

We call (or invoke) a method by typing its name and passing in arguments. Parameters are placeholders for data outside of a method definition's scope so the data can be accessed from within the method definition. (Therefore, if a method does not require access to outside data, parameters are not needed by the method definition.)

Arguments are pieces of information that are sent to a method invocation to be modified or used to return a specific result. We pass arguments to a method when we call the method. 

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

## `obj.method` vs. `method(obj)`
`obj.method` and `method(obj)` are two ways to call methods.
The `method(obj)` format is for passing an argument to a method call.
The `obj.method` format includes the explicit caller, which is the object on which the method is being called, like `a_caller.some_method(obj)`; one way to see it (for now) is `some_method` is modifying `a_caller`.

## Mutating Arguments
While the self-contained scope nature of method definitions prevent the access (and hence reassignment) of local variables that are initialized outside of the method definitions, a method can still easily be mutating on the argument that is passed to it as argument.

## `puts` vs. `return`: The Sequel
In Ruby, methods always returne the evaluated result of the last line of the expression unless an explicit return comes before it.

Use the `return` keyword to return a value explicitly. Once the first `return` is reached within a method definition, the method call will immediately exit and return a value, skipping the rest of the code if there are any.

## Chaining Methods
Because every method call returns something, method calls can be chained to be succinct and expressive. However, make sure every part of the chain returns the desired value and not `nil` nor raises an error.

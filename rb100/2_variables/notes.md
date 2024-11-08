# Variables

## What is a variable?
Variables are used to store information to be referenced and manipulated. They also provide a way of labeling data with a descriptive name.

## Assigning Value to Variables
Try your best to make sure that the name you assign your variable is accurately descriptive and understandable to another reader.

Variables point to values in memory and are not deeply linnked to each other:
```shell
001 > a = 4
=> 4
002 > b = a
=> 4
003 > a = 7
=> 7
004 > b
=> 4
```

## Getting Data from a User
`#gets` is the "get string" method. When called, it allows a program to wait for the user to type in information, press the enter key, and returns the value entered by the user as a string with `\n` (the newline character) attached to its end.
To get rid of the `\n`, `#chomp` is often called on the return value.
```shell
001 > name = gets
George
=> "George\n"
002 > name
=> "George\n"
003 > name.chomp
=> "George"
```

## Variable Scope
A variable scope determines where in a program a variable is avilable for use. A variable scope is defined by where the variable is initialized or created.
In Ruby, variable scope is defined by a method definition or by a block. Variables created in a method definition or a block behave differently in terms of variable scope.

### Variable Scope and Method Definitions
Methods have self-contained scope, which means that only variables initialized within the method's body can be referenced or modified from within the method's body. Additionally, variables initialized inside a method's body aren't avaiable outside the method's body.

### Variable Scope and Blocks
A block is a piece of code that follows a method's invocation, delimited by either curly braces `{}` or `do/end`.
With blocks, within the inner scope of a block variables initialized in an outer scope can be accessed, but not vice versa.
```ruby
a = 1

3.times do |n|
  a = 9
  b = 2
end

puts a # Outputs 9
puts b # Raises a NameError because b is not available outside of the block
```
Be careful: Not all `do..end` pairs imply a block; in particular, a `do..end` on a `for` or `while` loop is not a block.
Once again, a block is only a block if it follows a method invocation.

## Types of Variables
There are five types of variables:
1. Constants
2. Global variables
3. Class variables
4. Instance variables
5. Local variables

### Constants
Constants are declared by capitalizing every character in the variable name. They are for storing values that never change. Constants cannot be declared in method definitions, and are available throughout an application's scope.
Unlike most programming languages, Ruby does allow for change to a constant's value. However, this is strongly advised against and Ruby will give a warning when it happens.
```ruby
A_CONSTANT = 'I am available throughout the entire program.'
```

### Global Variables
Global variables are declared by starting the variable name with `$`. Like constants, they are also available throughout an application, overriding all scope boundaries.
However, Rubyists tend to stay away from global variables as there can be unexpected complications when using them.
```ruby
$var = 'I am also available throughout the entire program.'
```

### Class Variables
Class variables are declared by starting the variable name with `@@`. They are accessible by instances of your class as well as the class itself. When you need to declare a variable that is related to a class, but each instance of that class does not need its own value for this variable, you use a class variable.
Class variables must be initialized at the class level, outside of any method definitions. They can be altered using class or instance method definitions.
```ruby
@@instances = 0
```

### Instance Variables
Instance variables are declared by starting the variable name with one `@`. They are accessible throughout the current instance of the parent class.
Instance variables can cross some scope boundaries, but not all of them.
```
@var = 'I am available throughout the current instance of this class.'
```

### Local Variables
Local variables are the most common variables. They obey all scope boundaries.
```ruby
var = 'I must be passed around to cross scope boundaries.'
```

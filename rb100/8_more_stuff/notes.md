# More Sutff!

## Regex
**Regex** stands for regular expression. A regular expression is a sequence of characters that form pattern matching rules, and is then applied to a string to look for matches.

Creating regular expressions starts with the forward slash character, `/`. Inside two forward slashes any characters can be placed to match with the string.

## Variable as Pointers
Variables act as pointers to an **address space** in memory. That is, the variable doesn't actually contain the value. Instead, it contains a pointer to a specific area in memory that contains the value. 

Variables are pointers to physical space in memory. In other words, variables are essentially labels we create to refer to some physical memory address in your computer.

When we use variables to pass arguments to a method, we are essentially assigning the value of the original variable to a variable inside the method.

## Blocks and Procs
### Blocks
Blocks, like arguments, can also be passed into a method.

```ruby
def take_block(&block)
  block.call # This tells Ruby to invoke the block argument
end

take_block do
  puts "Block being called in the method!"
end
```

The `&` in the method definition defines the argument to be a block. *The block must always be the last parameter in a method definition.* `take_block` is called like any other method, but since this method has an `&block` paramter, a block can be passed to it using `do...end`. 

### Procs
**Procs** are blocks that are wrapped in a proc object and stored in a variable to be passed around. Procs can also take arguments if specified.
```ruby
talk = Proc.new do |name|
  puts "I am talking to #{name}."
end

talk.call "Bob"
# Output: I am talking to Bob.
```

Procs can also be passed into methods. Using procs gives us the added flexibility to be able to reuse blocks in more than one place without having to type them out every time.
```ruby
def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)
# Output:
# 1. Proc being called in the method!
# 2. Proc being called in the method!
# 3. Proc being called in the method!
# 4. Proc being called in the method!
# 5. Proc being called in the method!
```

## Exception Handling
**Exception handling** is a specific process that deals with errors in a manageable and predictable way. Ruby has an `Exception` class that makes handling errors easier. The reserved words `begin`, `rescue`, and `end` are the syntactic structure to signify exception handling:
```ruby
begin
  # Perform some dangerous operation
rescue
  # Do this if operation fails
  # For example: Log the error
end
```
```ruby
names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end

# Output:
# bob's name has 3 letters in it.
# joe's name has 3 letters in it.
# steve's name has 5 letters in it.
# Something went wrong!
# frank's name has 5 letters in it.
```
In the example above, when `nil` is being iterated, `nil.length` would've caused a `NoMethodError` and stopped the program from running. However, with the `begin/rescue/end` block to handle exceptions, the string `"Something went wrong!"` is printed instead.

`rescue` can also be used in-line:
```ruby
zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"

# Output:
# Before each call
# Can't do that!
# After each call
```

`rescue` can also be used for pre-existing errors:
```ruby
def divide(number, divisor)
  begin
    number / divisor
  rescue ZeroDivisionError => e
    e.message
  end
end

puts divide(16, 4) # Output: 4
puts divide(4, 0)  # Output: divided by 0
puts divide(14, 7) # Output: 2
```
In the example above, `ZeroDivisionError` is rescued and saved to an variable `e`. We then have access to the `message` method that the `ZeroDivisionError` object has available.

## Exceptions & Stack Traces
```ruby
def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)
```
The error message of the code above is:
```shell
H e l l o, J o h n
stack_traces.rb:2:in `space_out_letters': undefined method `split' for 1:Integer (NoMethodError)

  return person.split("").join(" ")
               ^^^^^^
	from stack_traces.rb:6:in `greet'
	from stack_traces.rb:10:in `decorate_greeting'
	from stack_traces.rb:14:in `<main>'
```
The error message provides a detailed trace (a stack trace) that shows the flow of execution and where the error occured. The trace follows the same structure as Ruby's call stack. As seen in this error message: the order of the frames of `<main>`, `decorate_greeting`, `greet`, and then `split` from bottom to top is the same as the call stack of this program.

## Method Definition Order
When Ruby encounters a `def` statement, it merely reads the method definition into memory and saves it away to be executed later. The body of the method isn't executed until we actually call the method.

The rule of thumb to stick to is you should define all your methods before you try to invoke the first one. This is why Rubyists almost always put the main program code at the bottom of the program after all methods have been declared.

# Loops & Iterators

A **loop** is the repetitive execution of a piece of code for a given number of repetitions or until a condition is met.

## A Simple Loop Using `loop`
The `#loop` method is the simplest way to create a loop in Ruby. `#loop` will execute any code within its block repetitively until `Ctrl + c` is pressed manually, or a `break` keyword is met in the block.

## Controlling Loop Execution Using `break` and `next`
The `break` keyword allows us to exit a loop at any point, so any code after a `break` will not be executed. However, `break` will not exit the program but only exit the loop, and execution will continue on from after the loop.

The `break` keyword allows us to skip the rest of the current iteration and start the next iteration.

```ruby
# An example using #loop, break, and next
# Output every positive even number less than or equal to 10, except 4
n = 0

loop do
  n += 2
  next if n == 4
  puts n
  break if n == 10
end
```

## `while` Loops
A **while loop** is given a parameter that evaluates as either true or false. Once that expression becomes false, the while loop is not executed again, and the program continues after the while loop.

Remember: `while` is a keyword in Ruby, not a method! Therefore, unlike `#loop`, `while` does not create its own scope!

## `until` Loops
An **until loop** is the opposite of a while loop. Like `while`, `until` is also a keyword and not a method. Using `until` instead of `while` can make code more expressive and readable in some situations.

## Do/While Loops
A **do/while loop** works in a similar way to a while loop with one important difference: The code within the loop gets executed one time, prior to the conditional check to see if the code should be executed. In a do/while loop, the conditional check is placed at the end of the loop as opposed to the beginning.

Ruby does not have a built-in do/while loop. We have to use `loop` and `break` to emulate one.

If a certain action needs to be executed first before the loop condition is checked, a do/while loop is more succint than a while loop:
```ruby
# A standard while loop
puts "I'm doing something!"
puts "Do you want to do that again?"
answer = gets.chomp

while answer == 'Y'
  puts "I'm doing something!"
  puts "Do you want to do that again?"
  answer = gets.chomp
end
```
```ruby
# A do/while loop instead
loop do
  puts "I'm doing something!"
  puts "Do you want to do that again?"
  answer = gets.chomp
  break if answer != 'Y'
end
```
Ruby has another construct for do/while loops, but it is not recommended by Matz:
```ruby
begin
  puts "I'm doing something!"
  puts "Do you want to do that again?"
  answer = gets.chomp
end while answer == 'Y'
```

## `for` Loops
**For loops** are used to loop over a collection of elements.
Unlike a while loop, where it's relatively easy to cause an infinite loop, a for loop always has a definite end because it loops over a finite number of elements.

One odd thing to remember about `for` loops is they return the collection of elements at the end of execution. (FYI: `while` loops return `nil`!)

As with `while` and `until`, `for` is a keyword and not a method, so it does not create its own scope.

Most Rubyists forsake for loops and prefer using iterators instead. More generally speaking, Rubysits prefer iterators over loops whenever possible.

## Conditionals Within Loops
Once met, a `next` keyword within a loop will cause the iteration to skip to the next loop iteration, ignoring all the rest of the code in the loop.

Once met, a `break` keyword within a loop will cause the loop to exit completely and immediately, without running any of the rest of the code in that loop.

## Iterators
**Iterators** are methods that naturally loop over a given set of data and allow you to operate on each element in the collection.

```ruby
names = ['Ashe', 'Braum', 'Caitlyn']

names.each { |name| puts name }
# => ['Ashe', 'Braum', 'Caitlyn']
# Output:
# Ashe
# Braum
# Caitlyn
```
In this example code, the `#each` method is called using the `.` dot operator on the array object that `names` points to.

According to GPT-4o: 
- The array object `['Ashe', 'Braum', 'Caitlyn']` is the **receiver** of the `#each` method. The receiver is the object on which a method is called. 
- The line of code `names.each { |name| puts name }` is the **caller** of the `each` method. The caller usually refers to the context or the code that initiates the method call.
- The array object `['Ashe', 'Braum', 'Caitlyn']` is also the **explicit caller/receiver**, as an explicit caller/receiver is when you specify the object on which a method is called directly.
    - GPT emphasizes that "recevier" is the more common and accepted term here.

## Recursion
**Recusion** is another way to create a loop in Ruby. It is the act of calling a method from within itself.
```ruby
# Caculating the nth number in the Fibonacci sequence
def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

fibonacci(6) # => 8
```
The key concept with recursion is that there is some baseline condition that returns a value, which then "unwinds" the recursive calls. You can think of the successive recursive calls building up, until some value is returned, and only then can the recursive calls be valuated.

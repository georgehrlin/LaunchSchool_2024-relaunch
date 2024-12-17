# Coding Tips
## Dramatic Experience and Retaining Knowledge
Part of the goal of our program is to let people realize that programming isn't really that difficult, but unfortunately, a lot of stuff just takes repetition.

The only way to retain information is to pay with time. Debugging an issue for hours and hours will ensure this problem gets burned into long-term memory. You pay for those burns with time but they pay back with interest. If you spend three hours debugging, those hours are not wasted—you will not make that mistake again. We want to encourage you to think about debugging from that perspective—embrance your burns and remember their lessons.

> If you are serious about programming and you want to do it for years and maybe decades from today, then the hours you put into debugging little things are really going to help you retain knowledge for the long haul.

You will most likely remember things that have either caused you to waste a lot of time, or have caused you some embarrassment—you decide how to pay for the experience, either with time or reputation.

## Naming Things
There is no need to save on characters when it comes to naming variables or methods. Choose descriptive variable and method names.

> In programming, naming things is very hard. Unfortunately, this problem isn't obvious when you write small programs, but it really impedes flow when you are working on larger programs. Try to develop a habit of thinking about how to name things descriptively.

One small exception to having descriptive variable names is when you have a very small block of code. It's less of a problem because the life or scope of that variable doesn't span more than a couple of lines.

## Naming Conventions
Use `snake_case` when naming everything, except classes (use `PascalCase`) and constants (use `UPPERCASE`).

## Mutating Constants
Although Ruby allows it, in general, constants should not be mutated AT ALL.

## Methods
The instinct to extract code to a method is good. However, make sure that the method does one thing, and that its responsibility is very limited. This implies that your methods should be short (say, around 10 lines of so). If a method is more than 15 lines long, it would probably be better to split it into two or three methods.

- Methods should not both display and return a meaningful value.
- Decide whether the method should return a value with no side effects, or perform side effects with no return value. The method name should reflect whether the method has side effects or not.

A **side effect** in programming is something that changes the state of a program outside the bounds of a programming unit, such as a method, class, or a block. If some code changes anything that is not strictly local to that code, it has side effects.

## Methods Should Be at the Same Level of Abstraction
Usually, methods take some input and return an output value. We should be able to just copy and paste the method into irb and test it. When working with a method, you should be able to mentally extract the method from the larger program, and just work with the method in isolation. When you have a method like this, you can use it without thinking about its implementation. Working this way helps compartmentalize yoru focus, an important skill when working on large codebases.

If the methods in your program are correctly compartmentalized, it makes programming much easier, especially on larger programs. That is why when you read good code, the methods are all at the same layer of abstraction.

## Method Names Should Reflect Mutation
Use naming conventions even in your own code to signify which methods mutate versus which methods return values.

The more you have to think about the method, the harder it is to use it. If it is performing a side effect and at the same time returning a value, this makes debugging and using the method very hard.

Your goal should be to build small methods that are like LEGO blocks. They should be stand-alone pieces of functionality that you can use to piece together larger strctures. You don't want these methods to be mentally taxing to use.

There are, however, some methods that are convoluted because the logic is complex. It's a likely sign that you don't quite understand the problem well enough to break it down into well-compartmentalized pieces. That's fine, but you will understand the problem better as you dig into the code more and more. And as your understanding becomes more clear, refactor your code to reflect that growing clarity.

## Displaying Output
Sometimes, you will have methods that only display things. For example:
```ruby
def welcome
 puts 'Welcome!'
end
```
This is fine, but it's not obvious whether a method called `welcome` returns a string or outputs strings directly. One way to resolve this is to help yourself remember and prefix all methods that output values with something like `print_`, `say_`, or `display_`.

Remember that code not only has to work properly, but also has to be read easily.

## Miscellaneous Tips
- Don't prematurely exit the program. All your methods should be at the same mental scope and not just randomly exit the program. Your program should probably have only one exit point.
- Watch your indentation: two spaces, not tabs!
- Name your methods from the perspective of using them later. That is, think about how you would like to invoke them. Also think about the implementation later.

```ruby
answer = ''
while answer.downcase != 'n' do
  puts "Continue? (y/n)"
  answer = gets.chomp
end
```

```ruby
loop do
  puts "Continue? (y/n)"
  answer = gets.chomp
  break if answer.downcase == 'n'
```

## Truthiness
In Ruby, like most programming languages, more than just `true` evaluates to true in a conditional.
> In Ruby, everything is truthy except `nil` and `false`.

## Approach to Learning
Learning to program takes focus and attention. It also takes a lot of repetition over a long period of time. One of the surprising aspects about learning to program is that it's not a sequential process. You cannot "master Ruby", then "master Rails", then "master testing".

What will likely happen is you will be revisiting old topics over and over, and, also through dramatic experience, certain things will be burned into long-term memory.

The first time you are exposed to a new topic, it's going to be daunting.
The second time, it's going to be easier.
And the third time, even easier.

# Coding Tips 2
## Use new lines properly to organize code.
New lines are actually important visual cues in your program. Just like how writers use paragraphs to organize related sentences, programmers also need to learn to organize chunks of code to make it easier to read.

## Should a method return or display?
Paying attention to methods and their side effects versus return values is critical to writing code that is well-organized and easy to read.

In general, if a method has both side effects and a meaningful return value, it's a red flag. Try to avoid writing methods that do this, as it will be very difficult to use these methods in the future.

## Name methods appropriately.
If you have some methods that output values, then preface those methods with `display_` or `print_`.

If you find yourself constantly looking at a method's implementation every time you use it, it's a sign that the method needs to be improved.

A method should do one thing, and be named appropriately. If you can treat a method as a "black box", then it is a well designed method.

## Don't mutate the caller during iteration.
```ruby
words = %w[scooby doo on channel two]
words.each { |str| words.delete(str) }
p words
# Output: ["doo", "channel"]
# The output is NOT: [], an empty array!
# It's better to use select, reject, or delete_if here.
```
According to Claude 3.5, what happened with this code was:
1. `"scooby"` is deleted. The array becomes `["doo", "on", "channel", "two]`. The iterator moves to the next element, which is `"on"`.
2. `"on"` is deleted. The array becomes `["doo", "channel", "two"]`. The iterator moves to the next element, which is `"two"`.
3. `"two"` is deleted. The array becomes `["doo", "channel"]`.
4. The iteration ends.

The lesson: **Do not mutate a collection while iterating through it!**
In an interation, we can mutate the individual elements, just not the collection itself. Otherwie it's easy to run into unexpected behaviour.

## Variable Shadowing
Variable shaowing when you choose a local variable in an inner scope that shares the same name as another local variable in an outer scope.

## Don't use assignment in a conditional.
Never use assignment in a conditional.

While it is still not recommended, if you had to do something like the following:
```ruby
numbers = [1, 2, 3, 4, 5]

while number = numbers.shift
  puts number
end
```
Make sure to wrap the conditional in parentheses: `while (number = numbers.shift)` to remind your future self that this conditional is intentional.

## Use underscore for unused parameters.

## Gain experience through struggling.
The final tip is about dealing with struggles.

There are two typical stuggles that beginners feel at this stage:
1. You want to know the "best" or "right" way to do something, and want to learn "the best practice".
2. You feel as if you wasted too much time on debugging and not doing things correctly the first time.

Remember that it is less useful to learn "best practices" without first learning why they are best practices. You must learn to be OK with struggling through the "bad" or sub-optimal practices first. That is not wasting time; that is generating experience. Becoming a good developer means experiencing and solving a lot of weird issues.

In other words, don't memorize "best practices", but spend enough time programming to the point where you understand the context of these practices. If you do that, you will be able to lean on your past experience to draw on, rather than to try to retrieve a bullet list from an old reading months or years ago.

Therefore, don't be fearful of violating rules or making mistakes; but do keep an eye out for improvements. Coding is like writing—there are syntactic rules, but there are also creative ways of expression.

We can't say this enough: Spend the time programming. Learn to debug through problems, struggle with it, search for the right terms, play around with code, and you will be able to transform into a professional developer, because that is exactly what professional developers do on a daily basis.

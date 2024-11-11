# Flow Control

## Conditionals
A conditional is a "fork" (or many forks) for the "journey" of the data fed to a program. Your data approaches a conditional and the conditional then tells the data where to go based on some defined parameters.

Conditionals are formed using a combination of `if` statements and comparison and logical operators (`<`, `>`, `<=`, `>=`, `==`, `!=`, `&&`, `||`). Conditionals are basic logical structures defined with the reserved words `if`, `else`, `elsif`, and `end`.

## Comparisons
Comparison operators always return a boolean value. A boolean value is either `true` or `false`, nothing else.

FYI: The expressions or values that an operator uses are its operands. In comparisons, the expressions to the left and right of the operator are the operands.

When comparing strings, the comparison in Ruby is done lexicographically, meaning it compares strings character-by-character based on their ASCII values. Ruby moves from left-to-right in the strings looking for the first character that is different from its counterpart in the other string. Once it finds a character that differs, it compares that character with its counterpart, and makes a decision based on that. If both strings are equal up to the length of the shorter string, then the shorter string is considered less than the longer string.
```shell
001 > "42" < "420"
=> true

002 > "9" < "888"
=> false

003 > "9" > "888"
=> true

004 > 9 > 888
=> false
```

## Combining Expressions
We can use the `&&` and `||` operators to combine multiple conditional expressions.

`&&` is the logical AND operator: Expressions to the left and to the right of this operator have to be true for the entire expression to be true.

`||` is the logical OR operator: Either the expression to the left has to be true, or the expression to the right has to be true for the entire expression to be true.

`!` is the logical NOT operator: When it is added in front of a boolean expression it changes the boolean value of the expression to its opposite.

`&&` and `||` don't always return `true` or `false`; they do when they operate on boolean values.

## Ruby's Order of Precedence
1. Comparison `<=`, `<`, `>`, `>=`
2. Equality `==`, `!=`
3. Logical AND `&&`
4. Logical OR `||`

## Ternary Operator
```
(condition) ? (return this value if condition is true) : (return this value if condition is false)
```
```shell
001 > true ? "I'm returned if condition true" : "I'm returned if condition false"
=> "I'm returned if condition true"

002 > false ? "I'm returned if condition true" : "I'm returned if condition false"
=> "I'm returned if condition false"
```
Ternary expressions should be used to select between two values, not between two actions.
The ternary expression's result should almost always be assigned to a variable, passed to a method as an argument, or returned by a method.
```ruby
# Appropriate use
foo = bar ? 2.71828 : 3.14159 # Return value is assigned to `foo`

# Inappropriate use
bar ? puts(2.71828) : puts(3.14159)
```

## Case Statement
```ruby
a = 5

if a == 5
  puts "a is 5"
elsif a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end
```
```ruby
# The equivalent code of above in case statements
a = 5

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end
```
```ruby
# Which can be further refractored into
a = 5

msg = case a
  when 5
    msg = "a is 5"
  when 6
    msg = "a is 6"
  else
    msg = "a is neither 5, nor 6"
  end

puts msg
```
```ruby
# A second form that does not take an argument
a = 5

case
when a == 5
  puts "a is 5"
when a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end
```

## True and False
In Ruby, every expression evaluates as true when used in flow control, except for `false` and `nil`.

`&&` and `||` use short-circuit evaluation. They always return the value of the operand evaluated last.

```shell
001 > 3 || 'foo'
=> 3

002 > nil || 'foo'
"foo"

003 > 3 && 'foo'
=> "foo"

004 > nil && 'foo'
=> nil 
# nil is returned instead of false (a boolean value) because && did not operate on boolean values
```

# `!`
What gets returned when `!` is passed with a non-boolean value, like `!3` and `!nil`?
```shell
001 > !3
=> false

002 > !nil
=> true
```

# Truthiness

The ability to express "true" or "false" is an important concept in any programming language. It helps us build conditional logic and understand the state of an object or expression. Usually, the notion of whether a value is "true" or "false" is captured in a **boolean** data type. A boolean is an object whose only purpose is to convey whether it is "true" or "false".

In Ruby, booleans are represented by the `true` and `false` objects.

Like everything else in Ruby, boolean objects also have classes behind them.

```ruby
true.class   # => TrueClass
false.class  # => FalseClass

true.methods # => list of methods that can be called on the true object
false.nil?   # => list of methods that can be called on the false object
```

## Expressions and Conditionals
The `true` and `false` objects are almost never used in a conditional. Instead, some expression or method call is evaluated in a conditional. Whatever the expression, it should evaluate to a `true` or `false` object.

```ruby
num = 5

if (num < 10)
  puts "small number"
else
  puts "large number"
end
```
```shell
irb:001> num = 5
=> 5
irb:002> num < 10
=> True
irb:003> (num < 10).class
=> TrueClass
irb:004> (num < 3).class
=> FalseClass
```

## Logical Operators
Logical operators will return a truthy or falsey value when evaluating two expressions.
### `&&` and `and` Logical AND Operators
Returns `true` only if both operands are truthy.
### `||` and `or` Logical OR Operators
Returns `true` if either operand is truthy.
### How are `&&` and `and`, as well as `||` and `or` different?
`&&` and `||` have higher precedence than `and` and `or`:
```shell
irb:001> a = true && false
=> false
irb:002> a
=> false
irb:003> b = true and false
=> false
irb:004> b
=> true
```
Use `&&` and `||` for boolean expressions. Use `and` and `or` for control flow.
```ruby
if some_condition && other_condition
  do_something
end

save_document or raise "Save failed!"
```
Both sets of operators user short-circuit evaluation—they will stop evaluating expressions once they can guarantee the return value:
- `&&` and `and`: If the first operand is false, the second isn't evaluated.
- `||` and `or`: if the first operand is true, the second isn't evaluated.

## Truthiness
In Ruby, truthiness differs from the boolean values `true` and `false` since Ruby considers many different values to be truthy/falsey, but only `true` is `true` (and only `false` is `false`). `true` and `false` are their own objects. `true` is the only instance of `TrueClass`, and `false` the only instance of `FalseClass`.

Truthiness refers to how Ruby evaluates different values in boolean contexts, even when those values aren't actual boolean values. In Ruby, only `false` and `nil` are falsey, whereas everything else is truthy. In other words, "truthy" and "falsey" describe how non-boolean values behave in boolean contexts. (Claude 3.5 Sonnet)

Ruby considers values like `0`, `""`, and `[]` truthy, which is not the case in some other languages.
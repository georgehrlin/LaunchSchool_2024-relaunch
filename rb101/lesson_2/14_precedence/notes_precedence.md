# Precedence
The meaning of an expression in Ruby is determined by **operator precedence**. It's a set of rules that dictate how Ruby determines what operands each operator takes. Operands are simply values used by the operator.

Most operators take two operands.
**Unary** operators take one operands.
```Ruby
!true
```
**Ternary** operators take three operands.
```Ruby
value ? 1 : 2
```

In an expression, operators with higher precedence are prioritized over those with lower precedence.

Parentheses override the default evaluation order, and can be thought of having the highest possible precedence.

Another way to think of precedence is that it controls the order of evaluation. Operations involving operators with high precedence get evaluated before operations involving low precedence. When two operations involve operators of the same precedence, the operations occur left-to-right (or right-to-left in some cases). However, this way of thinking can lead to unexpected results with `||` and `&&`, as well as the ternary operator.

It's safer to think of precedence as the mechanism used by Ruby to determine which operands get passed to each operator.

Don't rely too much on precedence. It's easy to forget the precedence order and get confused by an unexpected result. If you're using two or more different operators in an expression, use parentheses to explictly define the meaning. Even relying on left-to-right evaluation is subject to problems; for instance, multiple `=` operators evaluate right-to-left.

## Evaluation Order
From time to time, some may say that precedence determines the order in which expressions get evaluated. However, the evaluation process is more complicated than just determining what gets evaluated first. In fact, precedence in Ruby is only part of the story. The other parts are either left-to-right evaluation, right-to-left evaluation, short-circuiting, and ternary expressions.

```ruby
# An example
def value(n)
  puts n
  n
end

puts value(3) + value(5) * value(7)
```
```shell
3
5
7
38
```
In an arithmetic expression, Ruby first goes through an expression left-to-right and evaluates everything it can without calling any operators. Thus, here `value(3)`, `value(5)`, and `value(7)` get evaluated first. Then, only when the values are available does Ruby deal with precedence and re-evaluate the result.

```ruby
# An example of right-to-left evaluation with multiple assignments or modifiers
# This is BAD PRACTICE!
a = b = c = 3
puts a if a == b if a == c
```

## Diving Deeper
```ruby
arr = [1, 2, 3]
p arr.map { |n| n + 1 }
# => [2, 3, 4]
# Output: [2, ,3, 4]
```
```ruby
arr = [1, 2, 3]
p arr.map do n
  n + 1
end
# => #<Enumerator: [1, 2, 3]:map>
# Output: #<Enumerator: [1, 2, 3]:map>
```
This is because blocks have the lowest precedence of all operators. And, between `{}` and `do..end`, `{}` has slightly higher precedence, affecting which method call the block gets passed to.

In the second example, with `do...end` having the lowest precedence of all the operators, `arr.map` gets bound to `p` first. `arr.map` is evaluated and returns an `Enumerator` object. The `Enumerator` object is then passed to `p`, along with the block. `p` of couse does not take a block, so the block is ignored, and `<Enumerator: [1, 2, 3]:map>` is output.

In other words, the binding between a method name and a method's argument (`p` and the return value of `arr.map`) is slightly stronger than the binding between a method call and a `do...end` block`.

## `tap`
`tap` simply passes the calling object into a block, then returns that object. With this method, we're able to "tap" into our program's data stream, look at what is going on, without interrupting the program execution.

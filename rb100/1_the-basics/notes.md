# The Basics

## Literals
A literal is any notation that lets you represent a fixed value in source code.
Examples include: string literal, integer literal, float literal, boolean literal, etc.

## Strings
A string is a list of characters in a specific sequence.
In Ruby, you write string literals with either single quotes or double quotes on either side of the text. Note that the quotes are syntactic components and not part of the value.
```ruby
# Ways to include single quotes in a string
"The man said, 'Hi there!'"
'The man said, \'Hi there!\''
```
The backslash or escape character (`\`) indicates that the character that follows is not meant as Ruby syntax but only as a simple character.

Only double quotes allow for string interpolation:
```shell
001 > a = 'ten'
=> "ten"

002 > "My favourite number is #{a}!"
=> My favourite number is ten!
```

## Symbols
A symbol is used to reference something that is never intended to be printed or changed.
A symbol is created with a leading `:`.
```ruby
:a_symbol
:"surprisingly, I am also a symbol!"
```

## Numbers
Integer is the most basic form of a number—whole number only, no decimal point.
A float is a number that contains a decimal.

## Nil
A way to express "nothing" is needed in programming.
A variable with a value of `nil` can be described as having "nothing" or being "completely empty," or even just simply "not any specific type."
```shell
001 > x = nil
=> nil

# Check if something is a nil type using #nil?
002 > "Hello, World!".nil?
=> false
```
The nil type is always falsey:
```shell
001* > if nil
002* >   puts "Hi!"
003* > end
=> nil
```
However, despite both being falsey, `nil` and `false` are not the same!
```shell
001 > false == nil
=> false
```

## Operations
### Division vs. Modulo
`%` is the modulo operator. In modulo expressions, the value to the left of the `%` is the dividend, and the value to the right is the modulus.
When working with positive integers, `%` returns the remainder of a division operation.
```shell
001 > 16 % 4
=> 0
002 > 16 % 5
=> 1
```
When dividing integers, you will only receive an integer in return.
```shell
003 > 15 / 4
=> 3
```
### Modulo vs. Remainder
The `#remainder` method computes and returns the remainder of an integer division operation.
```shell
001 > 16.remainder(5)
=> 1
```
There is also the `#divmod` method that computes both the integer result of the division and its modulo value.
```shell
001 > 16.modulo(5)
=> [3, 1]
```
In mathematics, there is a subtle but important difference between modulo and remainder operations.
- Modulo operations return a positive integer when the second operand is positive, and a negative integer when the second operand is negative.
    - The sign of a modulo operation's result follows the sign of the second operand.
- Remainder operations return a positive integer when the first operand is positive, and a negative integer when the first operand is negative.
    - The sign of a remainder operation's result follows the sign of the first operand.

In practice, try to avoid the effect of this distinction as much as possible when only one of the operands is negative; otherwise, make sure to use the right operator.

### Equality Comparison
`==` is the equality operator ("is equal to," or sometimes "equal equal").
`==` returns `false` when the two operands are of different types.

### String Concatenation
`+` cannot concatenate two literals of different types together.

## Type Conversion
```shell
001 > '12'.to_i
=> 12
002 > '12'.to_f
=> 12.0
003 > 12 to_s
=> "12"
```
```shell
001 > '4 is a number'.to_i
=> 4
002 > 'a number is 4'.to_i
=> 0
003 > '4 is a number'.to_f
=> 4.0
004 > 'a number is 4'.to_f
=> 0.0
```

## Basic Data Structures
### Arrays
An array is used to organize information into an ordered list.
It is denoted with sqaure brackets `[]`. Inside are items separated by commas. Items can be accessed by their indices. Index starts at 0.
Order is important in an array.

### Hashes
A hash is a set of key-value pairs. It is denoted with curly braces `{}`.
A key-value pair is an association where a key is assigned a specific value, usually represented by a symbol, that points to a value (denoted by `=>`) of any type.
A value can be accessed by its specific key.
```shell
001 > {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}[:cat]
=> "meows"
```

## Expressions and Return
An expression is anything that can be evaluated. Pretty much anything you write in Ruby is an expression.
An expression always returns something, even if that's an error message or `nil`.

## `#puts` vs. return
When `#puts` is called by us, we are asking Ruby to print something to the screen. However, `#puts` does not return what is printed.
Expressions do something, but they also return something. What is returned is not always what is done.

# Variable References and Mutability of Ruby Objects
- How Ruby variables and objects are connected to each other
- The part that mutability and immutability of objects play when manipulating variables

## Introduction
Some languages, like C++ and Pearl, makes copies of an object when a variable is assigned to it; others, like Javascript and Python, create a link (a reference or binding) between the variable and the object in question.

## Variable and References
An object is a bit of data that has some sort of state—sometimes called a value—and associated behaviour.

```ruby
greeting = 'hello'
```
This tells Ruby to associate the `greeting` variable with the `String` object whose value is `'hello'`.
In Ruby, `greeting` is said to reference (or point to) the `String` object, `'hello'`. In other words, `greeting` is being bound to the `String` object. 

**`greeting` now stores the object id of the `String` object.**

Every object in Ruby has a unique object id., which can be retrieved by calling `#object_id`.

```ruby
whatsup = greeting
```
Now both `greeting` and `whatsup` not only reference a `String` object with the same value, but are, in fact, references to the same string. `greeting` and `whatsup` are now aliases for each other.

## Reassignment
```ruby
greeting = 'nihao'
```
`greeting` is now reassigned a different `String` object and the object's value is `nihao`.
Now, `greeting` and `whatsup` no longer refer to the same object. `'hello'` and `'nihao'` have different values and object ids.
This change shows that reassignment to a variable doesn't mutate the object referenced by that variable; instead, the variable is bound to a different object. The original object is merely disconnected from the variable.

## Mutability
Objects can be either mutable or immutable.
Mutable objects can be mutated: their values can be altered.
Immutable objects cannot be mutated: they can only be reassigned.
Different languages treat the mutability of different objects differently.

## Immutable Objects
In Ruby, numbers, boolean values, symbols, `nil`, `Range` objects are immutable.
There are, in fact, no methods available that let us mutate the value of any immutable object. All we can do is reassign the variable so it references a different object, which disconnects the original object from the variable.
Any class can establish itself as immutable by simply not providing any methods that alter its state.

## Mutable Objects
Most objects in Ruby are mutable. Mutable objects are of a class that permit changes to the object's state in some way.

A setter method (or simply, a setter) is a method defined by a Ruby object that allows a programmer to explictly change the value of a part of an object. Setters are always named in the format like `setter=`. A good example for a setter method is `Array#[]=`.

Strings and other collection classes are similar in the way they behave—variables reference the collection (or `String`) and the collection contains references to the actual objects in the collection. (Strings are a little bit different. It's not really necessary to have separate objects for each character, but they act in a similar way.)

## A Brief Introduction to Object Passing
The ability of a method to mutate arguments depends in part not only on the mutability or immutability of the object represented by the method's argument, but also on how the argument is passed to the method.

### Pass by value
Some languages make copies of method arguments, and pass those copies to the method. And because they are merely copies, the original objects cannot be mutated.
Objects passed to methods in this way are said to be **passed by value**, and **the language is said to be using a pass by value object passing strategy**.

### Pass by reference
Other languages pass references to the method instead. A reference can be used to mutate the original object, provided that object is mutable.
Objects passed to methods in this way are said to be **passed by reference**, and **the language is said to be using a pass by reference object passing strategy**.

Many languages employ both object passing strategies. One strategy is used by default; the other is used when a special syntax, keyword, or declaration is used. Some languages may even employ different defaults depending on the object type: For instance, numbers may be passed using a pass by value strategy, while strings may be passed using a pass by reference strategy.

## Developing a Mental Model
Because immutable objects cannot be changed, they ***act as if*** Ruby passes them by value. This isn't a completely accurate interpretation of how Ruby passes immutable objects, but it helps us understand code examples like below:
```ruby
def increment(a)
  a = a + 1
end

b = 3
puts increment(b) # Output: 4
puts b            # Output: 3

=begin
The numeric object 3 here is immutable, so it can be reasonably said that: b's
value is not mutated by increment because the behaviour of the code is as if 3
is passed by value to increment.
=end
```

On the other hand, because mutable objects can always be mutated simply by calling one of their mutating methods, they ***act as if*** Ruby passes them around by reference. It isn't necessary for a method to mutate an object that is passed by reference, only that it can mutate the object. This is also not a completely accurate interpretation of how Ruby operates, but it is helpful with examples like this:
```ruby
def concatenate(s)
  s << '*'
end

t = 'abc'
puts concatenate(t) # Output: abc*
puts t         # Output: abc*

=begin
The string object 'abc' here is mutable, so it can be reasonably said that: The
object referenced by t is mutated by concatenate because the behaviour of the
code is as if 'abc' is passed by reference to append.
=end
```

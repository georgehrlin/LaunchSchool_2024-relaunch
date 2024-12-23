# Object Passing in Ruby—Pass by Reference or Pass by Value
## What is Object Passing?
The crux of the discussion on pass by reference versus pass by value is to understand specifically what happens to the original objects passed to or returned from a method.

In Ruby, almost everything is an object. When you call a method with some expression as an argument, that expression is evaluated by Ruby and reduced, ultimately, to an object. The expression can be an object literal, a variable name, or a complex expression; regardless, it is reduced to an object. Ruby then makes that object avaiable inside the method. This is called passing the object to the method, or simply object passing. 

In addition to method arguments, the caller (a.k.a the receiver) of a method call—the object on which the method is called—can be thought of as an implied argument.

Just as much as arguments are passed to methods, return values are passed by those methods back to the caller.

Ruby also supports blocks, procs, and lambdas. All of these include the concepts of passing arguments and return values around.

## Evaluation Strategies
Every computer programming language uses some sort of evaluation strategy when passing objects. This strategy determines when expressions are evaluated, and what a method can do with the resulting objects. 

The most common strategies are known as strict evalaution strategies: With strict evaluation, every expression is evaluated and converted to an objct before it is passed along to a method. Ruby uses strict evaluation exclusively.

The two most common strict evaluation strategies are pass by value and pass by reference. Collectively, we will refer to pass by value and pass by reference as object passing strategies.

## Why is the Object Passing Strategy Important?
Most computer languages that employ strict evaluation use pass by value by default. Most of those languages also make it possible to pass by reference when needed. Few languages are purely pass by value or pass by reference.

Understanding which strategy is used and when is key to understanding what happens to an object that gets passed to a method.

## Pass by Value
With pass by value, a copy of an object is created, and it is that copy that gets passed around. Since it is merely a copy, it is impossible to change the original object; any attempt to change the copy just changes the copy and leaves the original object unchanged.

Passing around immutable objects in Ruby *acts* a lot like pass by value:
```ruby
def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)
puts a # Output: 3
puts b # Output: 5
```
Here, although a new value is assigned to `x` in `#plus`, the original argument, `a`, is left unchanged.
One can say Ruby appears to be pass by value, at least with respect to immutable objects.

## Pass by Reference
With pass by reference, a reference to an object is passed around. This establishes an alias between the argument and the original object—both the argument and object refer to the same location in memory. Therefore, if the argument is mutated, the original object is also mutated.

Passing around mutable objects in Ruby *acts* a lot like pass by reference:
```ruby
def uppercase(value)
  value.upcase!
end

name = 'William'
uppercase(name)
puts name # Output: WILLIAM
```
Here, `#uppercase` can mutate the `name` string through the alias `value`. One can say Ruby appears to be pass by reference, at least with respect to mutable objects.

## Actually, It's References All the Way Down
Ruby's variables do not contain objects; they are merely references to objects. Even if we pass a literal to a method, Ruby will first convert that literal to an object; then, interally, Ruby creates a reference to the object.

The key here is pass by reference isn't limited to mutating methods. A non-mutating method can use pass by reference as well, so pass by reference can be used with immutable objects. There may be a reference passed, but the reference isn't a gurantee that the object can be mutated.

## Pass by Reference Value
We can stop here and just say Ruby is pass by reference, and we wouldn't be wrong. There's nothing wrong with this conclusion. Many people will tell you Ruby is exclusively pass by reference.

However, assignment throws in a bit of a monkey wrench. **In a pure pass by reference language, assignment would be a mutating operation.** In Ruby, it isn't and it's because a Ruby variable or constant doesn't contain an actual object. Instead, the variable or constant contains a pointer to an object. Assignment merely changes that pointer, which causes the variable to be bound to a different object from the one it originally held.

While we can change which object is bound to a variable inside of a method, we cannot change the binding of the original arguments. We can change the objects if the objects are mutable, but the references themselves are immutable as far as the method is concerned.

This sounds an awful lot like apss by value. Since pass by value passes copies of arguments into a method, Ruby appears to be making copies of the references, then passing those copies to the method. The method can use the references to mutate the referenced object, but since the reference itself is a copy, the original reference given by the argument cannot be reassigned.

Given all of this, it's not uncommon to just say: **Ruby is pass by reference value or pass by value of the reference**. The two terms mean essentially the same thing: **Ruby passes around copies of the references**.

In short, Ruby is neither pass by value or pass by reference, but instead employs a third strategy that blends the two strategies.

## Final Mental Model
1. "Ruby is pass by reference value." is probably the most accurate answer.
2. "Ruby is pass by reference." is accurate so long as assignment and immutability are accounted for.
3. "Ruby acts like pass by value for immutable objects, pass by reference for mutable objects." is a *reasonable* answer so long as one keeps in mind that Ruby only **appears** like this.

# Ruby Object's Mutating and Non-Mutating Methods
We will discuss methods, and how they can be mutating or non-mutating with respect to certain arguments with special attention on assignment and concatenation.

## Mutating and Non-Mutating Methods
Mutating methods change the value (or state) of an object; non-mutating methods do not.
The object that may or may not be mutated is of concern when discussing whether a method is mutating or non-mutating.

## Non-Mutating Methods
A method is non-mutating with respect to an argument or its calling object if the method does not mutate the given object. Most methods do not mutate their arguments or caller. Some do mutate their caller, but few mutate the arguments.

All methods are non-mutating with respect to immutable objects.

## Assignment is Non-Mutating
While `=` is not an actual method in Ruby, it acts like a non-mutating method, and should be treated as such. Assignment always binds the target variable on the left hand side of the `=` to the object referenced by the right hand side. The object originally referenced by the target variable is never mutated.

Assignment operators like `*=`, `+=`, and `%=` are all impelmented in terms of assignment, and that assignment always causes the target to reference a possibly different object. None of these operations mutate their operands.

However, setter methods for class instance and indexed assignment, like `[]=`, are **not** the same as assignment. Setter methods and indexed assignment usually mutate the calling object.

### `=` Can Be Used to in the Mutation of an Object
```ruby
def change(value)
  value = value.upcase!
  value.concat('!')
end

s = 'hello'
t = change(s)

p s # => "HELLO!"
p t # => "HELLO!"

s.object_id == t.object_id # => true
```
Despite the use of `=` on line 2, `s` or `t` have not been reassigned a different object, which usually happens with `=`. This is because `#upcase!` on line 2 returns the same (but mutated) object on which it is called, so `value` is reassigned to the same original object.

## Mutating Methods
A method is mutating with respect to an argument or its caller if it mutates the argument or caller's value in the process.

Many, but not all (like `String#concat`), methods that mutate their caller use `!` as the last character of their names.

### Indexed Assignment is Mutating
`#[]=` mutates the original object (the string, array, or hash), but it doesn't change the binding of each variable. In fact, indexed assignment is a method that a class must supply if it needs indexed assignment. This method is named `#[]=`, and `#[]=` is expected to mutate the object to which it applies. It does not create a new object.

Usually, indexed assignment does cause a new reference to be made, but it is the collection element that is bound to the new object, not the collection (enclosing object) itself.

### Concatenation is Mutating
The `#<<` method used by collections like `Array`, `String`, and to a lesser extent `Hash` implements concatenation or appending, which is functionally similar to the `+=` operator. However:
- `#<<` is generally mutating whereas `+=` is often non-mutating (with some exceptions)
- `#<<` is a method in Ruby, whereas `+=` is syntactic sugar for the `#+` method followed by assignment

Do be careful that some classes use `<<` for "bit shift" operations, which are usually non-mutating. Other classes may use `<<` for other operations that have nothing to do with bit shifts or appending.

## Setters are Mutating
Setters are methods defined to mutate the state of an object. They look similar to indexed assignment with both employing the `something = value` syntax.

Setters alter the state of the object usually by mutating or reassigning an instance variable.

```ruby
# How invocation of a setter could look like:
person.name = 'Bill'
perosn.age = 23
```

The example code above looks like assignment, which is non-mutating, but, because these are setter calls, they **actually mutate the object bound to `person`**.

On the other hand, it's also possible to define setter methods that don't mutate the original object. Such setters should still be treated as mutating because they do not create new copies of the original object.

## Refining the Mental Model
The mere fact that Ruby can have methods that mutate its arguments would seem to say that Ruby must use pass by reference in some circumstances. (Once again, methods in a purely pass by value language cannot mutate the original object that is passed to a method as an argument, because methods receive copies of such object.)

Arguments that are passed by copy cannot be mutated, so Ruby must use pass by reference when a method can mutate its arguments.

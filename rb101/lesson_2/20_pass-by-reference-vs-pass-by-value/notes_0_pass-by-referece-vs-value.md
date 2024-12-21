# Pass by Reference Versus Pass by Value
(In the end, it doesn't matter what you call it, as long as you understand how to invoke methods with the behaviour you expect.)

In most programming languages, there are two ways of dealing with objects passed into methods: You can either treat these arguments as "references" to the original object, or as "values" which are copies of the original.

## What does "pass by value" mean?
In a pass by value language like C, when you "pass by vaue", the method only has a copy of the original object. Operations performed on the object within the method have no effect on the original object outside of the method.

Some say "Ruby is pass by value" because reassigning the variable from within the method does not affect the object outside the method. For instance:
```ruby
def change_name(name)
  name = 'Bob'
end

name = 'Jim'
p change_name(name) # Output: "Bob"
p name              # Output: "Jim"
```
In this example, it *looks* like Ruby is pass by value, because reassigning the variable only affected the method-level variable but not the main scope variable.

However, it's not that simple: If Ruby was purely pass by value, there should be no way for operations within a method to cause changes to the original object. This is certainly not the case.
```ruby
def cap(str)
  str.capitalize!
end

name = 'jim'
cap(name)
p name # Output: "Jim"
```

## What does "pass by reference" mean?
In a pass by reference language, operations within the method can affect the original object.

## Summary
Pass by value versus pass by reference is about what happens to objects when they are passed to methods.

### Pass by value
- Method receives a copy of the object (typically a copy of the value, not necessarily the entire object)
- Method's operations on the object received have no effect on the original object
- A purely pass-by-value language has no way for operations within a method to change the original object

### Pass by reference
- Method receives a reference of the object
- Method's operations can mutate the original object
- A pass-by-reference language allow operations within a method to change the original object

### So, Ruby is which?
- Ruby exhibits a combination of behaviours from both
- Ruby methods receive a copy of the object reference, not the object itself
- Ruby is **pass by value of the reference**, **pass by object reference**, or **call by sharing**

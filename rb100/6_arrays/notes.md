# Arrays

## What is an Array?
An **array** is an ordered list of elements that can be of any type. You can define an array by placing a list of elements between square brackets `[]`.

Arrays are indexed lists where any element of an array can be referenced by its index number. Be mindful that all indices start at number 0, so the first element of an arry has index 0.

## A Quick Note: Mutating the Caller vs. Mutating the Argument
Mutating the caller is similar to mutating arguments, but applies to the object used to call a method. For instance, in `array.pop`, the array specified by `array` is used to call the `pop` method.
The difference is that mutating an argument alters the value of an object passed to a method as an argument, while mutating the caller modifies the object used to call the method.

## Modifying Arrays
`Array#pop`: destructive; removes the last element of an array and returns it
`Array#push`: destructive; appends an element (or multiple elements) to the end of the array and returns the array; alias of `Array#append`
`Array#<<`: destructive; also known as the shovel operator; similar to `Array#push` but can only append a single element
`Array#unshift`: destructive; appends an element (or multiple elements) to the front of the array and returns the array; alias of `Array#prepend`
`Array#delete_at`: destructive; removes the element at the index of the value argument provided and returns the element
`Array#delete`: destructive; removes all the elements within the array that match the value of the provided argument and returns the argument value
`Array#uniq`: removes duplicate elements if they exist then returns a new array without the duplicates (desturctive version `Array#uniq!`)
`Array#to_s`: returns a string version of the array (by putting it inside a `""`); this is done behind the scene when using string interpolation to print an array

### Methods that Iterate Over the Caller Array
`Array#map`: iterates over the array, applying the block to each element of the array and returns a new array with the results; alias of `Array#collect`
`Array#select`: iterates over the array, returns a new array consisting of elements that return a truthy value when provided to the block as argument; alias of `Array#filter`

## Common Array Methods

### `Array#include?`
Checks to see if the argument provided is included in the array
(By convention, methods that end with a `?` usually return a boolean value. They are called **predicates**.)

### `Array#flatten`
Returns a one-dimensional array when provided with a nested array
(Destructive version: `Array#flatten!`)

### `Array#each_index`
Iterates over the array but assigns each element's index number to the block variable, then returns the argument array

### `Array#each_with_index`
Iterates over the array and passes both the element value and its index to the block, then returns the argument array

### `Array#sort`
Returns an ordered array
(Destructive version: `Array#sort!`)

### `Array#product`
Returns an array that is the "product" combination of all the elements of the arrays

## `each` vs. `map`
### `each`
`Array#each` is preferred over `for`. 
`each` works on objects that allow for iteration and is commonly used along with a block. If a block is provided, `each` runs the code in the block once with each of the elements in the collection object and then returns the collection object that it was called on. 
(If `each` is called without a block, it returns an `Enumerator`, which is an object that allows both internal and external iteration over a collection.)

### `map`
`map` also works on objects that allow for iteration and it also invokes the provided block once for each element of the collection object. The main difference from `each` is its return value: `map` returns a new array that consists of elements whose values are returned by the block.
(Similar to `each`, if `map` is called with a block, it returns an `Enumerator`.)

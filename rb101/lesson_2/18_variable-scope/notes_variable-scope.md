# Variable Scope

A variable's scope determines where in a program a variable is available for use.
A variable's scope is determined by where the variable is initialized.
In Ruby, variable scope is defined by a method definition or by a block. They have different behaviours when it comes to variable scope.

## Variable Scope and Method Definitions
Methods have self-contained scope. That means only variables initialized within the method's body can be referenced or modified from within the method's body. Additionally, variables initialized inside a method's body aren't available outside the method's body.

## Variable Scope and Blocks
Inner scope can access variables initialized in an outer scope, but not vice versa.

## Variables and Blocks
The block following the method invocation is actually an argument being passed into the method.

Blocks create a new scope for local variables. Nested blocks create nested scopes. Variables initialized in an outer scope can be accessed in an inner scope, but not vice versa.

This also means that when we instantiate variables in an inner scope, we have to be very careful that we are not accidentally reassigning an existing variable in an outer scope. This is a big reason for avoiding single-letter variable names.

- Outer scope variables can be accessed by inner scope
- Inner scope variables cannot be accessed in outer scope
- Peer scopes do not conflict
- Nested blocks follow the same rules of inner and outer scoped variables
- When a block parameter has the same name as an outer scope variable, variable shadowing happens—it prevents access to the outer scope variable from within the block

## Variables and Method Definitions
While a block can access variables that were initialized outside of the block, a method cannot—its scope is self-contained. Methods can only access variables that were initialized inside the method or that are defined as parameters (as far as local variables goes, ignoring all the other variable types). A method definition has no notion of "outer" or "inner" scope—you must explicitly pass in any parameters to a method definition.

### What if a local variable and a method shared the same name?
Ruby always first searches for the local variable, and if it is not found, then Ruby tries to find a method with the given name. If neither a local variable nor a method is found, then a `NameError` will be thrown.

In a situation where a local variable and a method share the same name, `()` can be added to the calling of the method to differentiate it from the variable.

### Blocks within Method Definitions
Scoping rules for a method invocation with a block remains in full effect even if the block is inside a method definition.

### Constants
In procedural programming, constants behave like globals, accessible everywhere.
Constants have lexical scope.

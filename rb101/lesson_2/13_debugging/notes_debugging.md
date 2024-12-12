# Debugging

This is about the general act of debugging, and not about working with a specific debugger.

## Temperament
If the key to programming is debugging, then the key to debugging is having a patient and logical temperament. Being naturally intelligent is very helpful, but from our experience, most people have enough intellectual ability to become an application developer, but what they need to improve is developing a systematic, patient temperament when faced with a problem.

Dealing with feelings of frustration is the first critical aspect of learning to program.

## Reading Error Messages
One of the first things you'll have to get used to learning how to *carefully* read the error stack trace.

## Steps to Debugging
### Reproduce the error
Programmers need a deterministic way to consistently reproduce the problem, and only then can we start to isolate the root cause.
### Determine the boundaries of the error
Once we can consistently reproduce the problem, it's time to tweak the data that caused the error. What we are trying to do is modify the data or code to get an idea of the scope of the error and determine the boundaries of the problem. This will lead to a deeper understanding of the problem, and allow us to implement a better solution.
### Trace the code
### Understand the problem well
### Impelment a fix
Fix one problem at a time: It is common to notice additional edge cases or problems as one is implementing a fix—resist the urge to fix multiple problems at once.
### Test the fix

## Techniques for Debugging
### Line by line
Your best debugging tool is your patience. Most bugs in your code will be from overlooking a detail, rather than a complete misunderstanding of a concept.
Being careful, patient, and developing a habit or reading code line-by-line, word-by-word, character-by-character is your most powerful ability as a programmer. All other debugging tips and tools won't matter if you are not detailed oriented.
### Rubber duck
### Walking away
### Using Pry
### Using a debugger

# Use Parentheses!
Don't rely on the precedence rules when mixing operators. Use parentheses.

```
!, ~, unary +
**
unary -
*, /, %
+, -
<<, >>
&
|, ^
>, >=, <, <=
<=>, ==, ===, !=, =~, !~
&&
||
.., ...
?, :
modifier-rescue
=, +=, -=, etc.
defined?
not
or, and
modifier-if, modifier-unless, modifier-while, modifier-until
{}, do...end
```

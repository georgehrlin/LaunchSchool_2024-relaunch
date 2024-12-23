## 1. Where did that `format` method come from?
"`#format` is a method provided by the `Kernel` module." (Claude 3.5 Sonnet)
According to the official Ruby doc, it "(r)eturns the string resulting from formatting objects into format_string.".

## 3. This `$#{format('%.2f', monthly_payment)}` is hard to read. What's happening?
`#format` is an alias for `#printf` and `#sprintf`.
```
ARGF#printf
IO#printf
Kernel#printf
Kernel#sprintf

Each of these methods takes:
- Argument format_string, which has zero or more embedded format specficiations.
- Arguments *arguments, which are zero or more objects to be formatted.

Each of these methods prints or returns the string resulting from replacing each format specification embedded in format_string with a string form of the corresponding argument among arguments.
```
```shell
irb:001> sprintf('Name: %s; favourite number: %d', 'George', 25)
=> "Name: George; favourite number: 25"
```
A format specification has the form:
```
%[flags][width][.precision]type
```
It consists of:
- A leading precent character.
- Zero or more flags (each is a character).
- An optional width specifier (an integer).
- An optional precision specifier (a period followed by a non-negative integer).
- A type specifier (a character).

Except for the leading percent character, the only required part is the type specifier.

### Type Specifiers
Integer Type Specifiers
- b or B: Format argument as a binary integer.
- d, i, or u: Format argument as a decimal integer.
- o: Format argument as an octal integer.
- x or X: Format argument as a hexadecimal integer.

Floating-Point Type Specifiers
- a or A: Format argument as hexadecimal floating-point number.
- e or E: Format argument in scientific notation.
- f: Format argument as a decimal floating-point number.
- g or G: Format argument in a "general" format.

Other Type Specifiers
- c: Format argument as a character.
- p: Format argument as a string via argument.inspect.
- s: Format argument as a string via argument.to_s.
- %: Format argument ('%') as a single percent character.

### What is happening in `$#{format('%.2f', monthly_payment)}`?
Within this interpolation, `#format` is called with two arguments,`'%.2f'` and `monthly_payment`. `'%.2f'` is the format string and `'monthly_payment'` is the argument to be formatted. Within the format string `.2` is a precision specifier. According to the official Ruby doc: "For the a/A, e/E, f/F specifiers, the precision specifies the number of digits after the decimal point to be written." Therefore `.2` specifies two decimal places. `f` is the type specifier that indicates the value of `monthly_payment` is to be formatted as a decimal number (with a precision of two digits after the decimal point).

### 1. Is there a better way to validate that the user has input a number? We'll cover this in more detail in a future assignment.
The `valid_number?` method in the example code is as follows:
```ruby
def valid_number?(num)
  num.to_i() != 0
end
```
One edge case that won't work with this method is when `'0'` is input. `'0'` is a valid number but `valid_number?('0')` returns `false`.

My attempt to improve this method is as follows:
```ruby
def valid_number?(num)
  num.to_i().to_s() == num
end

valid_number?('0')      # => true
valid_number?('123')    # => true
valid_number?('number') # => false
valid_number?('123n')   # => false
```

However, a major issue with this improved method is it still returns `false` when given a `float` as argument.

### 2. It looks like you can call `to_i` or `to_f` to convert strings to integers and floats, respectively. Look up the `String#to_i` and `String#to_f` documentation in Ruby docs and look at their various examples and use cases.
According to the official doc, both `String#to_i` and `String#to_f` return "the result of interpreting leading characters in `self` as Integer in the given `base` (or) as a Float". The two methods both return "zero if there is no leading valid number".

### 3. Our `operation_to_message` method is a little dangerous, because we're relying on the `case` statement being the last expression in the method. What if we needed to add some code after the `case` statement within the method? What changes would be needed to keep the method working with the rest of the program? We'll show a solution in an upcoming assignment.
A potential solution is to assign the return value of the `case` statement to a variable.
```ruby
def operation_to_message(op)
message = case op
          when '1'
            'Adding'
          when '2'
            'Subtracting'
          when '3'
            'Multiplying'
          when '4'
            'Dividing'
          end
return "I am #{message}!"
end
```

### 5. We're using `Kernel.puts()` and `Kernel.gets()`. But the `Kernel.` is extraneous as well as the parentheses. Therefore, we can just call those methods by `gets` and `puts`. We already know that in Ruby we can omit the parentheses, but how come we can also omit the `Kernel.`?
Without looking at the answer, I am guessing that `Kernel.` is implied by most methods by default when they are called. I wager that `Kernel.` is such a central piece to the structure of the Ruby language that there is no point of explicitly calling it.

OFFICIAL ANSWER:
When we write Ruby code that's not in a class, we are working within an object called `main`, which is an instance of `Object`. The `Kernel` module is automatically loaded by `Object`, giving us access to all of its methods.
```shell
irb:001> self
=> main
irb:002> self.class
=> Object
```
For now, just remember `Kernel` methods are available everywhere in Ruby.

CLAUDE 3.5 SONNET:
The `Kernel` module contains many of Ruby's most basic and commonly used methods (like `puts` and `gets`). Ruby is designed to make these methods available everywhere in your program without needing to explicitly write `Kernel.` before them.

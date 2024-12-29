=begin
def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
      divisor -= 1
  end until divisor == 0
  factors
end
=end

# Alyssa noticed that this will fail if the input is 0, or a negative number,
# and asked Alan to change the loop. How can you make this work without using
# the begin/end until construct?

def factors(number)
  divisor = number
  factors = []
  unless number <= 0
    until divisor == 0
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end
  end
  factors
end

p factors(10)
p factors(0)
p factors(-10)

=begin
Bonus 1: What is the purpose of the number % divisor == 0?
A: This makes sure that divisor is a factor of number, so that the quotient
appended to the factors array is also a factor of number.
=end

=begin
Bonus 2: What is the purpose of the second-to-last line (line 8) in the method
(the factors before the method's end)?
A: Line 8 ensures that the factors array is returned implicitly as the final
return value of the method.
=end

# Official Solution
def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# NOTE: The Official Solution is better than my answer because the loop
# condition of while divisor > 0 already implies that number > 0.

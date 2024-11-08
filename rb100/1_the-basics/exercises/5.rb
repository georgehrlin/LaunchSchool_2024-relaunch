# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
def factorial(num)
  result = 1
  i = 1
  if num > 1
    until i > num
      result *= i
      i += 1
    end
  end

  puts result
end

factorial(3)
factorial(4)
factorial(5)
factorial(6)

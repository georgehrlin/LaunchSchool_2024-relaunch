# Fixing Ben's code
limit = 15

def fib(num1, num2, limit)
  while num1 + num2 < limit
    sum = num1 + num2
    num1 = num2
    num2 = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

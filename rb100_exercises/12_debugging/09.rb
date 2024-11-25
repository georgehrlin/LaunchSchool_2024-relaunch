def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end

=begin
def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  i = 0
  product = nil

  until i == digits.length
    if i == 0
      product = digits[i]
    else
      product *= digits[i]
    end

    i += 1
  end

  product
end
=end

p digit_product('12345')
p digit_product('')
# expected return value: 120
# actual return value: 0

=begin
We get a return value of 0 with the original code becuase product is
initialized to 0. Then, on line 6, product is reassigned to the product of
multiplying itself with digit. The problem is product is 0 to begin with, and
anything that multiplies 0 remains 0.

To fix this problem, simply initialize product to 1 instead.
=end

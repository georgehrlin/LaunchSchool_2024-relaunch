def valid_number?(num)
  num.to_i().to_s() == num
end

p valid_number?('0')      # => true
p valid_number?('123')    # => true
p valid_number?('number') # => false
p valid_number?('123n')   # => false
p valid_number?('4.0')    # => false

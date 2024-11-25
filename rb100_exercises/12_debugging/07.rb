# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

=begin
[january, february, march].each do |month|
  balance = calculate_balance(month)
end

puts balance
=end

=begin
The mistake of this code is on line 32. In each iteration of the each, balance
is reassigned the return value of passing january, february, and march to
calculate_balance. Effectively balance is not keeping track of the expenses.
Instead its value is simply the monthly balance of the argument month.
=end

# Fixing the code:
[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts balance

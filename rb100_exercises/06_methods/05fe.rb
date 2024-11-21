def car(brand, model)
  "#{brand} #{model}"
end

puts car('Toyota', 'Corolla')

=begin
Without the #puts, the return value of #car is a string.
With the #puts, the return value of #car is nil.
=end

# From Min T. Wai
def car(*args)
  puts args.join(' ')
end

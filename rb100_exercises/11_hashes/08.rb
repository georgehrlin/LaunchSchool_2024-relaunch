numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! { |_key, value| value < 25 }

p low_numbers
p numbers

# Further Exploration
# NOTE: Typically, when using methods that mutate the caller, the return value
# is of no interest because the caller is intentionally being mutated. If you
# do an assignment (like line 7), you end up creating an alias, both numbers
# and low_numbers now point to the same hash.

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

# Further Exploration
number = 0

until number == 10
  next if number.odd?
  number += 1
  puts number
end

# If `next` was placed before incrementing `number` (like above):

# In the first iteration, `number` points to `0`. `number.odd?` would evluate
# to `false`, `number` would be incremented to `1`, and then be printed.

# In the next iteration, because `number` now points to `1`, this iteration
# would be skipped as `number.odd?` now evaluates to `true`. This is now an
# infinite loop, because the iteration keeps being skipped as the line to
# increment `number` is never reached.

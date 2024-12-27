advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!(-33, 100)
p advice

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!(0, 39)
p advice

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!(0..38)
p advice

# Q: As a bonus, what happens if you use the String#slice method instead?
# A: slice would return the same substring as slice! does, but the string that
#    advice points to would not be mutated.

# Official Solution
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!(0, advice.index('house'))
p advice

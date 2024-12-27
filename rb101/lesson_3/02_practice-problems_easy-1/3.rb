advice = "Few things in life are as important as house training your pet dinosaur."

# My 'dumb' solution
advice = advice.split
advice[6] = 'urgent'
advice = advice.join(' ')
p advice

advice = "Few things in life are as important as house training your pet dinosaur."

# Solution after method-hunting
advice.gsub!('important', 'urgent')
p advice

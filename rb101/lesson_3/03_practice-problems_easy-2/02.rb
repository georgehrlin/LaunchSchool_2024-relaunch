munsters_description = "The Munsters are creepy in a good way."
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.upcase!
munsters_description = munsters_description.split
munsters_description[0] = 'tHe'
munsters_description[1] = 'mUNSTERS'
munsters_description = munsters_description.join(' ')
p munsters_description

munsters_description = "The Munsters are creepy in a good way."
# "The munsters are creepy in a good way."
munsters_description.capitalize!
p munsters_description

munsters_description = "The Munsters are creepy in a good way."
# "the munsters are creepy in a good way."
munsters_description.downcase!
p munsters_description

munsters_description = "The Munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.upcase!
p munsters_description

# Official Solution
munsters_description = "The Munsters are creepy in a good way."
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.swapcase!
p munsters_description

statement = "The Flintstones Rock!"

# My DUMB solution
p statement.split('').select { |l| l == 't' }.size

# Official Solution
p statement.count('t')
# OMG ROFL good to know

words = 'the flintstones rock'

def titleize(str)
  str.split.each { |word| word.capitalize! }.join(' ')
end

p titleize(words)

# OFFICIAL SOLUTION
def titleize(str)
  str.split.map { |word| word.capitalize }.join(' ')
end

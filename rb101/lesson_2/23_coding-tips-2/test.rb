words = %w[scooby doo on channel two]
words.each { |s| words.delete(s) }
p words

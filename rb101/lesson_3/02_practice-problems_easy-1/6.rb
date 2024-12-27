famous_words = "seven years ago..."
famous_words.prepend('Four score and ')
p famous_words

famous_words = "seven years ago..."
famous_words = 'Four score and ' << famous_words
p famous_words

famous_words = "seven years ago..."
famous_words = 'Four score and ' + famous_words
p famous_words

# Solutions provided by GPT-4o
# No reassignment. Mutation only
famous_words = "seven years ago..."
famous_words.insert(0, 'Four score and ')
p famous_words

famous_words = "seven years ago..."
famous_words.replace('Four score and ' + famous_words)
p famous_words

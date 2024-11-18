a = %w(a b c d e)

p a.insert(3, 5)
p a.insert(4, 6)
p a.insert(5, 7)

# Official Answer
a = %w(a b c d e)
p a.insert(3, 5, 6, 7)

b = a
p a.object_id
p b.object_id

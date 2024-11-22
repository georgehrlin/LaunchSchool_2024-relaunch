puts "It's now 12 o'clock."

# NOTE: Singel-quotes do not allow for escape sequences (except escaping of
# single-quotes).

# Further Exploration
puts %Q(It's now 12 o'clock.)
# %Q is an alternative to double-quoted strings.
# %q is an alternative to single-quoted strings.

puts "\"test\""
puts '"test"'
puts %Q("test")
puts %Q('test')
puts %Q('"test"')
puts %Q('"test'")
puts %q("test")
puts %q('test')
puts %q('"test"')
puts %q('"test'")

puts %Q(te\nst)
puts %q(te\nst)

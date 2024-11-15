h = {a:1, b:2, c:3, d:4}

# 1
h[:b] # => 2

# 2
h[:e] = 5 # => 5
p h

# 3
h.delete_if { |k, v| v < 3.5 } # => {d:4, e:5}
p h

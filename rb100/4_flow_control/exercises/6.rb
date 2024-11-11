p (32 * 4) >= "129"
# => true [WRONG]
# CORRECTION: This raises an ArgumentError. Values of different types cannot be
# compared using <, <=, >, >=!

p 847 == '847'
# => false

p '847' < '846'
# => false

p '847' > '846'
# => true

p '847' > '8478'
# => false

p '847' < '8478'
# => true

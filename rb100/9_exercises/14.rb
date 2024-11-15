a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# b = a.map { |str| str.split }.flatten

# Note: Enumerable#flat_map also exists!
# My note can be simplified to:
b = a.flat_map { |str| str.split }

p b

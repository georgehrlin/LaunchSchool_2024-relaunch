flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.index { |name| name[0..1] == 'Be' }

# OFFICIAL SOLUTION
p flintstones.index { |name| name[0, 2] == 'Be' }

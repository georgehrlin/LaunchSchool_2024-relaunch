flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.map! { |name| name[0, 3]}
p flintstones.map! { |name| name[0..2]}

status = ['awake', 'tired'].sample

=begin
current_state = if status == 'awake'
                  puts 'Be productive!'
                else
                  puts 'Go to sleep!' 
                end

p current_state
=end

# Oops. I didn't read the question closely.

# CORRECTION
current_state = if status == 'awake'
                  'Be productive!'
                else
                  'Go to sleep!'
                end

puts current_state

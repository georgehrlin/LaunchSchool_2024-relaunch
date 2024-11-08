# What does the following error message tell you?
=begin
SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
  from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
=end

=begin
The error tells me that on line 16 there is an unexpected `)` when a `}` is
expected. What likely happened was a `)` is mistakenly used instead of a `}`.
=end

# Correction: The error is on line 2, not line 16.

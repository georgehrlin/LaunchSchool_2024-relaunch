def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

=begin
Nothing happens when this program is run because block on line 2 is missing the
method #call.
=end

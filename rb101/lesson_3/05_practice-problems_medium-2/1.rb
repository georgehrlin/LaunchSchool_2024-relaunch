a = 'forty two'
b = 'forty two'
c = a

puts a.object_id == b.object_id # My precition: false
puts a.object_id == c.object_id # My prediction: true

puts a.object_id
puts b.object_id
puts c.object_id

=begin
NOTE:
Object ids are a private implementation detail of how Ruby executes the code
"under the hood", and may differ depending on your specific environment, Ruby
version, etc. Therefore, there is no gurantee that an object will have the same
object id in two different runs of the program, so never rely on the specific
value of the id.
=end

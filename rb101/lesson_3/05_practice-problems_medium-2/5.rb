def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# My prediction: Output: My string looks like this now: pumpkinsrutabaga
puts "My array looks like this now: #{my_array}"
# My prediction: Output: My array looks like this now: ["pumpkins", "rutabaga"]

=begin
Q: How can we change this code to make the result easier to predict and easier
for the next programmer to maintain? That is, the resulting method should not
mutate either argument, but my_string should be set to 'pumpkinsrutabaga' and
my_array should be set to ['pumpkins', 'rutabaga']

A: For easier maintenance, and to meet the requirement of staying non-mutating
tricky_method should be split into two methods: one for returning a new string
by concatenating "rutabaga", and one for returning a new array by concatenating
an array with only one-element string.

The new standalone method for returning a new arry can be:

def tricky_method(an_array_param)
  an_array_param = an_array_param + ["rutabaga"]
end
=end

# Official Solution
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

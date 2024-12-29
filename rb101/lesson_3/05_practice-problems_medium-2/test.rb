def tricky_method(an_array_param)
  an_array_param = an_array_param + ["rutabaga"]
end

my_array = ["pumpkins"]
p my_array.object_id

my_array = tricky_method(my_array)
p my_array.object_id

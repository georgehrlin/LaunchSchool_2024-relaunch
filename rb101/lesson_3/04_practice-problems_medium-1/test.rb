hsh = {foo: 0, bar: 1, baz: 2}

arr = hsh.values

p hsh
p arr

p arr[0].object_id == hsh[:foo].object_id

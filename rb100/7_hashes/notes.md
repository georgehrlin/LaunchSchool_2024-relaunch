# Hashes

# What is a Hash?
A **hash** is a data structure that stores items by associated keys, which are referred to as key-value pairs. The key-value pairs create an associative representation of data.

Most commonly, a hash consists of symbols as keys and values of any data type.

```ruby
# Hashes have two syntaxes:
hash1 = { :key1 => "value1", :key2 => "value2" } # Older syntax
# Newer syntax, introduced in Ruby 1.9":
hash2 = { key1: "value1", key2: "value2" }
```

## Iterating Over Hashes
```ruby
person = { name:'Jerome', age:'23', height:'166 cm' }

person.each do |k, v|
  p "The person's #{k} is #{v}."
end
# Output:
# "The person's name is Jerome."
# "The person's age is 23."
# "The person's height is 166 cm."

person.each do |pair|
  p pair
end
# Output:
# [:name, "Jerome"]
# [:age, "23"]
# [:height, "166 cm"]
```

## Hashes as Optional Parameters
```ruby
def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}."
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end

greeting("Jerome")
# Output: Hi, my name is George.
greeting("Jerome", {age: 23, city: "New York"})
# Output: Hi, my name is Jerome and I'm 23 years old and I live in New York.
greeting("Jerome", age: 23, city: "New York")
# {} are not necessary when a hash is the last argument!
# Output: Hi, my name is Jerome and I'm 23 years old and I live in New York.
```

## Common Hash Methods
### `Hash#key?`
Returns whether a hash contains a specific key

### `Hash#select`
Returns a new hash the key-value pairs of which are evluated to be truthy by the block

### `Hash#fetch`
Returns the value for the given key, if found
If the key is not found and no block was given, returns the default value
If key is not found and a block was given, yields the key to the block and returns the block's return value

### `Hash#to_a`
Returns the array version of the hash

### `Hash#keys`
Returns an array containing all the keys
(With Ruby 1.9 and higher, hashes maintain the order of their key-value pairs, so the order of keys included in the returned array by `Hash#keys` will always remain the same)

### `Hash#values`
Returns an array containing all the values

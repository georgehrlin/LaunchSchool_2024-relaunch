def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# This code will print nothing to the screen, because the execution of the
# method `scream` terminates on line 3 when `return` is reached and the method
# call of `puts` on line 4 is thus never reached.

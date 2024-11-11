=begin
def doubler(start)
  puts start * 2
end

doubler 2
doubler 4
doubler 8
=end

# Or:

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

doubler(2)

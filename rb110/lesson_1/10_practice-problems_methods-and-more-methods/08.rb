arr = [1, 2, 3, 4, 5]
p arr.take(2)

=begin
MY ANSWER:
I didn't know how take works so I had to look it up:
"Array#take returns a new Array containing the first n element of self, where
n is a non-negative Integer; does not modify self."
From the documentation, it is clear take is not destructive.
Without running the code, I think line 2 returns:
=> [1, 2]
=end

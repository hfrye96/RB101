=begin
P
input: integer
output: integer
-do not use basic looping constructs(while, until, loop, and each)
-sum the digits of the integer

E
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

D
integers


A


C
=end

def sum(num)
  num.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
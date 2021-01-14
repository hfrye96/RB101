=begin

P 
input: method
output: boolean
returns true if only one of the methods are true, false otherwise.


E
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

D
case statement

A
create a method called xor?
if statements 
  using && ||
end


C
=end

def xor?(arg1, arg2)
  if arg1 == true && arg2 == true
    return false
  elsif arg1 == false && arg2 == false
    return false
  else
    return true
  end
end


xor?(5.even?, 4.even?)
xor?(5.odd?, 4.odd?)
xor?(5.odd?, 4.even?)
xor?(5.even?, 4.odd?) 
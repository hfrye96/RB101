=begin
  define a method that will take the absolute value of an integer
and print true if the integer is an odd number (cannot use odd? or even?)
START 

def is_odd?(num)
  WHILE
  count = 1
  num.abs
  break IF num == count
  count += 2
PRINT "Hello, would you like to give me a number"
GET number
=end

def is_odd?(number)
  number % 2 == 1
end

def remain(num)
 if num.remainder(2) == 0 
  puts false
 elsif num.remainder(2) == 1 
  puts true
 elsif num.remainder(2) == -1 
  puts true
 end
end


remain(-17)
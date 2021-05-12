=begin

P
-Input: positive integer
-Output: string of 1's and 0's
-1's and 0's always alternate
-length of 1's and 0's string matches the integer
-always start with 1

E
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

D
numbers and strings

A
create a method called stringy
create an empty string
loop and append the 1's and 0's to the empty string until
string length == given number

C
=end

def stringy(number)
  string = ''
  counter = 0  
    until counter == number
     if counter.even? then string << '1'
     else string << '0'
     end
     counter +=1
    end
    string
  end

=begin LS solution
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end
=end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

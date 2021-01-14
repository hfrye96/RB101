=begin   

P
input: an array containing integers
output: Integer (average of all numbers in the array)
-the array will never be empty
-the numbers will always be positive integers
implicit rules
-The average number is not a float and is not rounded up


E
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

D
array and integers

A
create a method called average
set the divisor == to the size of the array
the average of the array is the sum of the integers in the array
divided by the size of the array(divisor)
print the average

C
=end

def average(array)
divisor = array.size
array_average = array.sum / divisor
array_average
end

puts average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40
=begin

P
input: integer
output: sum or product of all numbers from 1 to the integer given
-input has to be greater than 0


E
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

D
loop, array, string, integer

A
loop through the integer that is given
push the given integer to a blank array
-1 from the given integer
push to the array
sum up the array if the user types "s"
multiply the array inputs if the user types "p"
display the result

C
=end

def prompt(message)
  puts ">> #{message}"
end

prompt("Please enter an integer greater than 0:")
integer = gets.chomp.to_i
prompt("Enter 's' to compute the sum, and 'p' to compute the product.")
answer = gets.chomp.downcase

integer_array = []

1.upto(integer) { |num| integer_array << num}

if answer == 's'
  puts "The sum of the integers between 1 and #{integer} is #{integer_array.sum}."
else 
  puts "The product of the integers between 1 and #{integer} is #{integer_array.inject(:*)}"
end
  
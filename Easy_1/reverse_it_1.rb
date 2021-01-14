=begin

P - understand the problem
Input: string
output: string
A method that will take a string a print the string in reverse order

Example/test cases
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

Data Structures
string and array

Algorithm
create method reverse_sentence
turn the string into an array
use array.reverse!
use array.to_s
p array

Code
=end

def reverse_sentence(string)
  reversed_words = string.split(' ')
  reversed_words.reverse!.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
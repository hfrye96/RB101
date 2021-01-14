=begin
P - understand the problem
Count how many time each element occurs within the given array
*Rules and requirements*
-print each element with how many times it occurs in the array
-case sensitive SUV != suv

Example and test cases
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
] => 
car => 4
truck => 3
SUV => 1
motorcycle => 2

Data Structures

input = array

output = 

Algorithm
create an empty hash
iterate through the element array
i
def count_occurences

=end

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles)
=begin

P
input: array
output: array
contains every other element of the array starting at index 0


E
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

D
array
loop
push to new array
return new array

A
create a method called oddities(array)
create a blank array
counter = 0
loop through the array
blank_array << array[counter]
counter += 2
break if counter > array.size
end
p blank_array
end

C
=end

def oddities(array)
  every_other_element = []
  counter = 0
  loop do
    break if counter >= array.size
    every_other_element << array[counter]
    counter += 2
  end
  p every_other_element
end


oddities([2, 3, 4, 5, 6])
oddities([1, 2, 3, 4, 5, 6]) 
oddities(['abc', 'def']) 
oddities([123])
oddities([])
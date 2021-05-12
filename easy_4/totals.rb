=begin

P
input: array
output: array
the output array is going to preceding number added with the current
number to make that index on the new array

E
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
D
array
loop

A
create a method called running_total(num)
set the counter = 0
set new_number = 0
new_array = []
loop through the array
break if counter > num.size
num[counter] += new_number
new_array << new_number
counter += 1
end

C

def running_total(num)
  counter = 0
  new_number = 0
  new_array = []
  loop do 
    break if counter >= num.size
    new_number +=  num[counter].to_i
    new_array << new_number
    counter += 1
  end
  p new_array
end
=end

def running_total(arr)
  sum = 0
  arr.map do |num|
    sum += num
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
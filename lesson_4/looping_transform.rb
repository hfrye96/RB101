=begin 
I want to mutate an array so that it will multiply all of the 
integers in the array by 2

algorithm:
create a method named double_numbers
-create a counter
start the loop
stop the loop if the counter == array size
iterate through the array
multiply each index by 2
add one to the counter
return the array
=end

my_numbers = [1, 4, 3, 7, 2, 6]

def double_numbers!(numbers)
  counter = 0

  loop do 
    break if counter == numbers.size
    
    numbers[counter] *= 2

    counter += 1
  end

numbers
end

p double_numbers!(my_numbers)



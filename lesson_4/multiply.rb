def multiply(numbers, multiplication)
  counter = 0
  doubled_numbers = []

  loop do 
    break if counter == numbers.size

    doubled_numbers << numbers[counter] *= multiplication
    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]

p multiply(my_numbers, 3)
p my_numbers


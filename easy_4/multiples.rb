=begin

P
search for all multiple of 3 and 5 between 1 and some number
compute the sum of the numbers
integer given is greater than 1
input: integer
output: integer

E
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

D
iteration
array

A
create a method called multisum(num)
iterate through the number
sum_of_multiples =[]
counter = 1
break if counter > num
if counter % 3 == 0 || counter % 5 == 0
  append to blank array
end
counter += 1
end
sum_of_multiples.inject(:+)


C
=end

def multisum(num)
  sum_of_multiples = []
  counter = 1
  loop do
    break if counter > num
    if counter % 3 == 0 || counter % 5 == 0
      sum_of_multiples << counter
    end
    counter += 1
  end
  p sum_of_multiples.inject(:+)
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
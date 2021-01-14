=begin
write a list that takes an number and returns a list of all the integers in the number
inputs = number
ouputs = number split up ex. 123 [1, 2, 3]

def digit_list(num)
  num.split
end

=end

def digit_list(num)
  num.to_s.split('').map!{ |x| x.to_i }
end

p digit_list(12345)


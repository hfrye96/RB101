=begin

Start
take an array of integers and make a new array with every other integer

loop over the array
take the index and add it to a new array
+1 to the index
break when there are no more integers in the array

print both arrays

=end

def two_arrays(array)
  loop do
    array.each do |index, value|
      if index.even?
        Array.new(value.to_i)
      elsif index.odd?
        next
      end
    end
  end
end

j = [1, 2, 3]
p two_arrays(j)

def repeat(str, int)
  count = 0
  loop do
    puts str
    count += 1
    break if count == int
  end
  end

  repeat("Hello", 3)

=begin

def repeat(string, number)
  number.times do
    puts string
  end
end

=end

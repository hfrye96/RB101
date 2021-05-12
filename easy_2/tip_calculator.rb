=begin

P
Input: integer
output: string
must display the tip and total amount


E
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

D
string and numbers

A
ask what the bill is
ask what is the tip percentage
tip percentage * bill = tip
display the tip in dollar amounts
display the total amount in dollar amounts

C
=end

puts "What is the bill?"
bill = gets.to_f
puts "What is the tip percentage?"
tip_percentage = gets.to_f
tip = ((tip_percentage / 100) * bill)
total = (tip + bill).
puts "The tip is $" + "#{format("%.2f", tip)}"
puts "The total is $" + "#{format("%.2f", total)}"
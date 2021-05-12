=begin

P
input:none
output: string
randomly generates teddy's age
-between 20 and 200


E
Teddy is 69 years old!

D
string

A


C
=end
puts "What is your name?"
name = gets.chomp
if name.empty? 
  name = "Teddy"
end
p "#{name} is #{rand(20..200)} years old!"
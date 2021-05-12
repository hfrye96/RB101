=begin

P
input: integer
output: string
ask for width and length of a room in meters
display the area of the room in both square meters and square feet
-1 square meter == 10.7639 feet
area = length x width

E
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

D
integer and string interpolation


A
ask for the length of the room in meters
ask for the width of the room in meters
area_meters = length x width
area_feet = area_meters x 10.7639 feet
puts " "

C
=end
SQMETERS_TO_SQFEET = 10.7639
puts "What is the length of the room in meters?"
length = gets.chomp.to_f
puts "What is the width of the room in meters?"
width = gets.chomp.to_f
area_meters = (length * width).round(2)
area_feet = (area_meters * SQMETERS_TO_SQFEET).round(2)
puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)."
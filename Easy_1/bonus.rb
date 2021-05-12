=begin

P
input: integer and boolean
output: integer
-if true bonus should be half of given number
  -if false bonus should be 0

E
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

D
integer and boolean


A
create a method called calculate_bonus
if boolean is true
  bonus is / 2
else 0
end


C
=end
def calculate_bonus(bonus, boolean)
  if boolean == true
    bonus / 2
  else 0
  end
end

#def calculate_bonus(salary, bonus)
 # bonus ? (salary / 2) : 0
#end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
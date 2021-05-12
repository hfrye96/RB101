=begin

P
leap years occur when the year is evenly divisible by 4 unless its divisible by 100
if it is divisible by 100 it is not a leap year unless it is divisible by 400
any year greater than 0
input: integer
output: boolean

E
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

D
methods
if 

A
create a method called leap_year(year)
if year % 4 == 0 
  true
elsif (year % 4 == 0) && (year % 100 == 0)
  false
elsif (year % 100 == 0) && (year % 400 == 0)
  true
end


C
=end

def leap_year?(year)
if year % 4 == 0 
  true
elsif (year % 4 == 0) && (year % 100 == 0)
  false
elsif (year % 100 == 0) && (year % 400 == 0)
  true
end
end

p leap_year?(2016)
p leap_year?(2015)
p leap_year?(2100)
p leap_year?(2400)
p leap_year?(240000)
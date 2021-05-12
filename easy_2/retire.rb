=begin

P
input: input
output: string


E
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

D
integer and string

A
ask what is their age
ask what age they would like to retire
compute the year they are going to retire in
display the year they expect to retire in
display how many years of work they have left

C
=end

puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_to_retire = retirement_age - age
retirement_year = years_to_retire + current_year

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_retire} years of work to go!"


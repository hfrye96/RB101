=begin

P
input: string
output: string
-if there is an ! after the name the computer yells back


E
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

D
string
if statement

A
ask what their name is
if the name has an ! behind it 
  put the computer yelling back 


C
=end

puts "What is your name?"
name = gets.chomp

if name.include?("!")
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else 
  puts "Hello #{name}."
end
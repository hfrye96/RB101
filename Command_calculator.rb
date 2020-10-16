puts "Can you give me two numbers?"
num1 = gets.chomp.to_i
puts "What is the second number?"
num2 = gets.chomp.to_i
puts "What type of operation would you like to perform?( + , - , / , * )"
ans = gets.chomp

if ans == "+"
  ans1 = num1 + num2
elsif ans == "-"
  ans1 = num1 - num2
elsif ans == "/"
  ans1 = num1.to_f / num2.to_f
elsif ans == "*"
  ans1 = num1 * num2
end

puts "The answer is #{ans1}"
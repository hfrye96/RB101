=begin

P
input: 2 positive integers
output: displays the output of the addition, subtraction, product, 
quotient, remainder, and power of the two numbers
-Has to be positive integers
-no need to check if they are positive integers

E
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

D
integer, loop, array

A
initialize a math_symbols array with +, -, *, /, %, **
ask for the first_num
answer
ask for the second_num
answer
loop 
iterate through the math symbols array

C
=end
def prompt(message)
  puts "==> #{message}"
end

math_symbols = %w[+ - * / % **]

prompt("Enter the first number:")
first_num = gets.chomp.to_i
prompt("Enter the second number:")
second_num = gets.chomp.to_i

math_symbols.each do |sym|
  result = first_num.send(sym.to_sym, second_num)
  prompt("#{first_num} #{sym} #{second_num} = #{result}")
end

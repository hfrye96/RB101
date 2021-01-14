=begin

P
input: string
output: string
rules
-spaces are not counted.
-give back the amount of characters in the sentence


E
Please write word or multiple words: walk
There are 4 characters in "walk".

Please write word or multiple words: walk, don't run
There are 13 characters in "walk, don't run".
D
method, string, join


A
create a method called count_num_char
join the answer together without any spaces
puts " answer.size"

ask for a word or multiple words
answer



C
=end

def count_num_char(ans)
  puts "There are #{ans.delete(' ').size} characters in #{ans}."
end

puts "Please write word or multiple words:"
answer = gets.chomp

count_num_char(answer)
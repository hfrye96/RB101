=begin

P
Input: String
Output: String
-strings will contain 1 or more words
-Only letters and spaces in the string
-Reverse words >= 5 characters
-spaces are should only be included when more than 1 word is present


E
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

D
string

A
create a method called reverse_words
create an empty array called words
split the string
iterate through the string
if word >= 5 reverse the word
join the string back together


C
=end

def reverse_words(string)
  words = []

  string.split.each do |word|
    if word.length >= 5 then word.reverse!
      words << word
    else
      words << word
    end
  end
  words.join(' ')
end



puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
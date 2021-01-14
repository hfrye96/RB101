=begin

P
input: string
output: boolean
-true if string reads the same backwards and forwards, false otherwise.
-case, spaces, punctuation matter.

E
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

D
if statements

A


C
=end
def palindrome?(argument)
  p argument == argument.reverse
end

palindrome?('madam') 
palindrome?('Madam')           # (case matters)
palindrome?("madam i'm adam")  # (all characters matter)
palindrome?('356653') 
palindrome?([1, 2, 3, 2, 1])
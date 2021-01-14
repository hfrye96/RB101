=begin

P
input: 2 strings
output: string
strings will be different lengths


E
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

D
loop 

A
create a def called short_long_short
find the lengths of both strings
compare the lengths
if str1 < str2
p str1.concat(str2, str1)
else 
p str2.concat(str1, str2)
end
end


C
=end

def short_long_short(str1, str2)
  if str1.length < str2.length
    str1.concat(str2, str1)
  else
    str2.concat(str1, str2)
  end
end

p short_long_short('abc', 'defgh') 
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"


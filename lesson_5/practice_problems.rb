=begin

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}


p arr1[2][1][3]

p arr2[1][:third] = 'g'

p arr3[2][:third][0][0]

hsh1['b'][1]


arr1 = [1, [2, 3], 4]

arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}

hsh1[:first][2] = [4]

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}


hsh2[['a']][:a][2] = 4


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
age = 0
munsters.each_value do |hash|
 if hash["gender"] == "male"
  age += hash["age"]
 end
end

p age

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each_pair do |name, details|
  puts "#{name} is a #{details['age']} year old #{details['gender']}"
end


hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
vowels = "aeiou"
hsh.each do |_, value|
  value.each do |string|
    string.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end
=end


#Given this data structure, return a new array of the same structure but with the sub arrays being ordered 
#(alphabetically or numerically as appropriate) in descending order.

=begin
P
input: array
output: new array


E
none
D
array
A
use map on the outer array
use map on the inner array
sort the inner array
return the new array
C


arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

p arr.map do |arr1|
    arr1.sort do |a,b| 
      b <=> a 
  end
end


[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  new_hash = {}
  hsh.each do |k, v|
    new_hash[k] = v += 1
  end
  new_hash
end


arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |arr1|
  arr1.select do |num|
    num % 3 == 0
  end


arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end

p hsh


#return a new array, containing the same sub-arrays, ordered by
#only taking the odd numbers into consideration

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by |sub_arr|
  sub_arr.sort_by do |num|
    num.odd?
  end
end


hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end
# => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]


arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |hsh|
  hsh.all? do |k, v|
    v[0] % 2 == 0
  end
end

=end

def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end
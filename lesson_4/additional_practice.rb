=begin
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = {}

flintstones.each_with_index do | name, index |
  hash[name] = index
end

p hash
=end

=begin
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

family_age = 0
ages.each do |k,v| 
  family_age += v
end

p family_age
=end

=begin
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages.select! { |k,v| v < 100 }
=end

=begin
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.min
=end

=begin
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.index { |name| name[0,2] == "Be"}
=end

=begin my solution
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

abbr_name = []
flintstones.each do |name|
  abbr_name << name[0..2]
end

p abbr_name

#LS solution
flintstones.map! do |name|
  name[0, 3]
end

=end

=begin
statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

p result
=end

=begin

words = "the flintstones rock"

words.split.map { |word| word.capitalize }.join(' ')

=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.map do |name, details|
  case 
  when 0..18
    details["age_group"] = "kid"
  when 18..65
    details["age_group"] = "adult"
  else 
    details["age_group"] = "senior"
  end
end

p munsters
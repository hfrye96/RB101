def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.size != 4
    puts "This is not an IP address."
  end
end

dot_separated_ip_address?('1.3.4.5.6')

# add a returning false condition and handle the case if there are more or less than 4 components
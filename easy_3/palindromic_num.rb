def palindromic_number?(element)
  if element.to_s == element.to_s.reverse
    true
  else 
    false
  end
end

p palindromic_number?(0345430) 
p palindromic_number?(123210) 
p palindromic_number?(002200) 
p palindromic_number?(5) 
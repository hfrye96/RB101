produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}
=begin my solution doesn't work. returns a blank hash
def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruit = {}
  
  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[counter]

    if current_value == 'Fruit'
      selected_fruit[current_key] = current_value
    end

    counter += 1
  end

  selected_fruit
end

p select_fruit(produce)
=end

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    # this has to be at the top in case produce_list is empty hash
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end

p select_fruit(produce)

=begin
-select the key-value pairs where the value is fruit
-return a new array of the key-value pairs
-Input: a hash
-output: return a new hash

algorithm: create a method named select_fruit
-assign the produce keys to a new variable name produce_keys
-create a blank hash named selected fruit
-create a counter
-start the loop
-break if counter == produce_keys size
-assign the produce_keys[counter] to a new variable named current_key
-assign the produce_list[counter] = current_value
-find the key-value pairs where the value is fruit using the 
key from produce_keys
-assign the key value pair to a blank new hash name selected_fruit
-return value is a hash
=end

########################## PSEUDOCODE-Instructions #########################
# Method to create a list

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
    # take the user input string, then .split(' ') -> loop to put split values into a hash.
# steps: 
  # X set default quantity to 1
  # X print the list to the console [can you use one of your other methods here? YA]
# output: [what data type goes here, array or hash?] HASH!

# X Method to add an item to a list
# input: item name and optional quantity, hash
# steps: assign the item name and its quantity into the hash
# output: #output the "updated" grocery_hash

# X Method to remove an item from the list
# input: item_name, hash
# steps: delete that item
# output: #return updated array

# X Method to update the quantity of an item
# input: item name, quantity, hash
# steps: change the value of item name key.
# output: #return new hash

# X Method to print a list and make it look pretty
# input: take in the hash keys and values we made
# steps: Puts it out in a readable fashion.
# output: nil

########################## METHODS #########################

def initial_grocery_list (list) # takes in string from user of their groceries, splits into array, then moves the items into a hash.
  list = list.split(' ')
  grocery_hash = {}
  list.each do |grocery|
    grocery_hash[grocery] = 1 # default value to 1
  end
  print_grocery_list(grocery_hash)
  grocery_hash
end

def print_grocery_list(grocery_hash)
  index = 1 # just for readability
  lineWidth = 20
  puts "","Here is your current Grocery List!","======="
  puts "Items:".ljust(lineWidth/2) + "Quantity:".rjust(lineWidth/2) 
  grocery_hash.each do |food, quantity|
    #puts "#{index}: #{food.capitalize} of quantity #{quantity}."
    
    puts "#{food.capitalize}".ljust(lineWidth/2) + "#{quantity}".rjust(lineWidth/2)
    index += 1
  end
end

def add_to_grocery_list!(new_item, new_quantity, grocery_hash)
  grocery_hash[new_item] = new_quantity
end

def remove_from_grocery_list!(existing_item, grocery_hash)
  grocery_hash.delete(existing_item)
end

def update_grocery_list!(existing_item, new_quantity, grocery_hash)
  grocery_hash[existing_item] = new_quantity
end

########################## DRIVER CODE #########################

groceries = initial_grocery_list('onions water drinks')
#groceries = initial_grocery_list(gets.chomp) # for user input
add_to_grocery_list!('bananas', 3, groceries) 
add_to_grocery_list!('lemonade', 3, groceries) 
remove_from_grocery_list!('water', groceries)
update_grocery_list!('ChOColate', 55, groceries)

print_grocery_list(groceries)


########################## REFLECT #########################
# What did you learn about pseudocode from working on this challenge?
  # I learned that it's a good way to structure your thoughts, and that you should avoid using language-specific syntax!

# What are the tradeoffs of using arrays and hashes for this challenge?
  # I think arrays are quicker, but hashes make it easy to have a corresponding value to a key (quantity to grocery_item)

# What does a method return?
  # It returns an explicit return statement, or implicitly returns the last statement in the method.

# What kind of things can you pass into methods as arguments?
  # You can pass in almost anything (you can't pass methods into methods). Most objects, arrays, hashes, etc can. 

# How can you pass information between methods?
  # You can return a value and assign that to a variable and pass that variable in as an argument to a method. Or you can use destructive calls.

# What concepts were solidified in this challenge, and what concepts are still confusing?
  # Using methods and passing in arguments, as well as implementing methods within each other was important. Hashes still confuse me a little, just because we haven't worked with Hashes much.
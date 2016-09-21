## This code is a mess, comment entire blocks for clarity.


########################## video1-testing #########################
###### methods for video 1
puts "=======================VIDEO 1=============================="
def block_test #(x)
  puts "","Status message 1"
  yield #to run any block parameters
  puts "Status message 2"
end

def block_test2 #(x)
  puts "","Status message 1"
  yield("Ken", "Hyejin")
  puts "Status message 2"
end

######## driver code for video-1
block_test { |name1, name2| #this method we made is taking a block as a parameter..
  puts "I'm a block!" 
}

block_test2 do |name1, name2| #we can use either brackets or do---end
  puts "I'm a block with #{name1} and #{name2}!" 
end
########################## video-2 testing #########################

letters = ["a", "b", "c"]
letters2 = []
puts """,Original Data: #{letters }"

letters.each do |letter|
  letters2 << letter.upcase
  p letter
end

puts "Letters1: #{letters}"
puts ""
puts "Letters2: #{letters2}"
puts ""
###########################  #########################

########################## RELEASE 1 #########################
#######array .each testing ##

puts "=======================RELEASE 1=============================="
array_of_animals = ["dog", "cat", "shark"]
puts ".each Unmodified: #{array_of_animals}"
array_of_animals.each do |animal|
  puts animal.capitalize
  animal = animal.capitalize + "Z" # this will not do anything. .each only can modify if we set it to another variable
end
puts ".each Modified: #{array_of_animals}"

######## .map test
array_of_animals = ["dog", "cat", "shark"]
puts ".map Unmodified: #{array_of_animals}"
new_arr = []
new_arr = array_of_animals.map do |animal|
  puts animal.capitalize
  animal = animal.capitalize + "Z" # this will do anything. .each only can modify if we set it to another variable
end
puts ".map set to new arr:#{new_arr}"
puts ".map original Modified?: #{array_of_animals}"

########################## Release 1 END #########################

#### hash .each testing

numbers = {1 => 'ones', 2=> 'two', 3=>'three'}
p "numbers1: #{numbers}"
numbers.each do |number1, number2| 
  number2 = number2.upcase
  p number2
end

puts "","numbers1 after block: #{numbers}",""

##### hash .map testing

numbers.map do |number1, number2| #use map! for self, or use map for assigning to another variable
  puts "This is number in map method: #{number2}"
  number2.upcase!
end

p "Modified numbers: #{numbers}"
puts "Modified number: #{numbers}"


########################## RELEASE 2 #########################
####A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
puts "=======================RELEASE 2=============================="

array_delete = [1,2,3,4,5,6,7,8,9,10]
puts "Original array_delete: #{array_delete}"

array_delete.delete_if { |a| a < 5 }
puts "Modified array_delete: #{array_delete}"


hash_delete = {1=>1,2=>2,3=>3,4=>4,5=>5,6=>6,7=>7,8=>8,9=>9,10=>10}
puts "Original hash_delete: #{hash_delete}"

hash_delete.delete_if { |key,value| value < 5 }
puts "Modified hash_delete: #{hash_delete}"

####A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

array_keep = [1,2,3,4,5,6,7,8,9,10]
puts "","Original array_keep: #{array_keep}"

array_keep.keep_if {|a| a < 5} # you can use .select for non-destructive behavior
puts "Modified array_keep: #{array_keep}"

hash_keep = {1=>1,2=>2,3=>3,4=>4,5=>5,6=>6,7=>7,8=>8,9=>9,10=>10}
puts "Original hash_keep: #{hash_keep}"

hash_keep.keep_if { |key,value| value < 5 }
puts "Modified hash_keep: #{hash_keep}"

####A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
## Can use the previous section..?
# find_index : a.index { |x| x == "b" }
### URL http://ruby-doc.org/core-2.1.8/Array.html#method-i-find_index


####A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

array = [1,2,3,4,5,6,7,8,9,10,3,2,1]
puts "","Original array_drop: #{array}"
modified_array = array.drop_while{|a| a < 5}
puts "Modified array_drop: #{modified_array}"

hash_keep = {1=>1,2=>2,3=>3,4=>4,5=>5,6=>6,7=>7,8=>8,9=>9,10=>10}
puts "Original hash_drop: #{hash_keep}"

hash_keep.drop_while { |key,value| value < 5 } #This doesn't work for hashes. Couldn't find another matching method....
puts "Modified hash_drop: #{hash_keep}"
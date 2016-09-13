puts "What is your hamster's name?"
name = gets.chomp


puts "How loud is your hamster from 1-10?"
level = gets.chomp.to_f


puts "Fur color?"
fur = gets.chomp


puts "Is your hamster a good candidate for adoption?"
adopt = gets.chomp


puts "Age?"
age = gets.chomp



puts "You said your hamster's name is: #{name}"
puts "You said your hamster's noise level is: #{level}"
puts "You said your hamster's fur color is: #{fur}"
puts "You said your hamster's adoption status is: #{adopt}"

if age == ""
  age = nil
  puts "No age input."
else
  age = age.to_f
  puts "You said his age is: #{age}"
end

# DO THE THING
# Update your code so that your hamster program stores data of the appropriate type. If you aren't sure how to convert a string to another data type, Google it! The truth is out there.

# Release 3: Print to the Console
# Users need feedback to verify what they've accomplished. This is an important UX design principle, so we'll add it to our program.

# DO THE THING
# Update your program so that it prints the hamster data to the console once you've gathered it, so the clerk can review this latest hamster entry. Don't just dump data onto the screen -- make it somewhat readable by labeling the data or putting it into sentences.

# Submit the GitHub URL of your Ruby file to complete the challenge.
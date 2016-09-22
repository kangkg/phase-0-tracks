# ########################### Pseudo-Code #########################
# gets.chomp the spy's real name
# manipulate it by:
#   swap first and last name. reverse?
#   if vowel: change any 'aeiou' to next index in 'aeiou'
#   if consonant: .next of alphabet. careful of edge cases
# capitalize properly.

# ########################## End Pseudo-Code/ Start methods  #########################

def your_name_reversed(x)
  x.to_str
  x.downcase! # Ensure all down-case for easier future coding
  x = x.split(' ')
  return x.reverse # Returns the swapped last and first name
end

def if_vowel_or_consonant (x)
  vowel = ["a","e","i","o","u"] #can change these "vowels" to something else if wanted.
  if vowel.include? x # to check if vowel or consonant
    vowel.each_with_index do|letter, index| # iterate through vowels
      if letter == x 
        x = vowel[index + 1]
        if x == nil     # edge statement of last value being set to nil
          x = vowel[0]  # set to first value of VOWELS
          return x      # return edge statement value
        end             # end edge statement
        return x        # return x, if not edge statement
      end #end the letter == x checking
    end # end vowel.each block
   ######## END VOWEL CHECK
   #
  else   ########## method for consonants # check edge case for z.
    if x == "z" then return x = "b" #edge case of "z"
    else #skip over vowels completely!
      x = x.next
      if vowel.include? x  # Check if it turned into a vowel again.
        x = x.next  
      end
      return x
    end
  end # End entire if statement
end


def letter_by_letter(x)
   # WORD 1: Different ways to do it- EACH_INDEX  # Wonder what better way there is to do this... 
  x[0] = x[0].chars               
  x[0].each_index do |index| ; x[0][index] = if_vowel_or_consonant(x[0][index]) ;  end #end for first word
  x[0] = x[0].join('')

   # WORD 2: Just different ways to do it- EACH_WITH_INDEX  # I could probably reduce redundancy by making a method
  x[1] = x[1].chars                
  x[1].each_with_index do |value, index| ; x[1][index] = if_vowel_or_consonant(value) ; end #end iteration
  x[1] = x[1].join('')
  
  return x[0].capitalize + " " + x[1].capitalize # format the word properly
end

# ########################## DRIVER CODE #########################

puts "","What is your real name?"
current_name = your_name_reversed(gets.chomp) # Hold Reversed name
current_name = letter_by_letter(current_name)
p "Your new spy name is: " + current_name 









########################### PROPER DEBUG! ####################
# current_name = your_name_reversed("Felicia Torres") # hold reversed name. will become "Vussit Gimodoe ""
# current_name = letter_by_letter(current_name)
# p current_name + " SHOULD BE Vussit Gimodoe"

### extra Debugging
# puts "AFTER REVERSED:  #{current_name}",""

# p if_vowel_or_consonant ("e") # debug. return i.
# p if_vowel_or_consonant ("a") # debug. return e.
# p if_vowel_or_consonant ("u") # debug. return a. edge case.
# p if_vowel_or_consonant ("z") # debug. return a. edge case.
# p if_vowel_or_consonant ("y") # debug. return z.

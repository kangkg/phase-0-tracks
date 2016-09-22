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
   # p x.reverse # debug
  return x.reverse # Returns the swapped last and first name
end

def if_vowel_or_consonant (x)
  vowel = ["a","e","i","o","u"] #can change these "vowels" to something else if wanted.
  if vowel.include? x # to check if vowel or consonant
    # ### EDGE CASES: ##### brute-force way, did a better way.
    # if x == "u" #edge case for "u" - I could probably do some other way checking index -1 but not sure..
    #   x = "a"
    #   return x
    # ### END EDGE CASES ###
    vowel.each_with_index do|letter, index| # iterate through vowels
      if letter == x 
        x = vowel[index + 1]
        if x == nil # edge statement of last value being set to nil
          x = vowel[0]
          return x  # return edge statement value
        end # end edge statement
        puts "","Modified Vowel:  " + x ## DEBUGGING
        return x # return x, if not edge statement
      end #end the letter == x checking
    end # end vowel.each block
   ######## END VOWEL CHECK
   #
  else   ########## method for consonants # check edge case for z.
    if x == "z" then return x = "a" #edge case of "z"
    else #skip over vowels completely!
        puts "","Original Letter: " + x
      x = x.next
        p "Modified letter:  " + x ## DEBUGGING
      if vowel.include? x  # Check if it turned into a vowel again.
        x = x.next 
        puts  "If-vowel letter:   " + x ## DEBUGGING 
      end
      return x
    end
  end # End entire if statement
end


def letter_by_letter(x)
  x[0] = x[0].chars
  x[0].each_with_index do |value, index|
    # puts "THIS IS INDEX: #{index} and THIS IS VALUE: #{value}" ##DEBUG
    x[0][index] = if_vowel_or_consonant(value)
    puts "THIS IS X[0]: #{x[0]}" # DEBUG
  end #end map for first word

  x[1] = x[1].chars
  x[1].each_with_index do |value, index|
    # puts "THIS IS INDEX: #{index} and THIS IS VALUE: #{value}" ##DEBUG
    x[1][index] = if_vowel_or_consonant(value)
    puts "THIS IS X[1]: #{x[1]}" # DEBUG
  end #end map for first word



  end #end map for second word
  x[0] = x[0].join('')
  x[1] = x[1].join('')
  return x[0].capitalize + " " + x[1].capitalize
end

# ########################## DRIVER CODE #########################
vowels = ["a","e","i","o","u"] # can change in future!

puts "","What is your real name?"
current_name = your_name_reversed("Felicia Torres") # hold reversed name. will become "Vussit Gimodoe != "vutsis gomodie"


puts "AFTER REVERSED:  #{current_name}",""
### Debugging
## current_name[0] = "code here"
# p if_vowel_or_consonant ("e") # debug. return i.
# p if_vowel_or_consonant ("a") # debug. return e.
# p if_vowel_or_consonant ("u") # debug. return a. edge case.
# p if_vowel_or_consonant ("z") # debug. return a. edge case.
# p if_vowel_or_consonant ("y") # debug. return z.

current_name = letter_by_letter(current_name)
p current_name + " SHOULD BE Vussit Gimodoe"

# T => V
# O => U
# R => S
# R => S
# E => I
# S => T




########################## INSTRUCTIONS: #########################
## delete::
# If you get really and truly stuck, just write an alias method that loops through the original name and changes the letters somehow, without worrying about implementing this particular algorithm. 
# It's really not worth stressing about. Simply attempting the algorithm will help you improve, even if you didn't quite get there.

# This is the most complex algorithm you've had to write, and the toughest release of this challenge. How will you break it down into manageable pieces? Try to identify all of the mini-challenges and considerations that show up in your algorithm, such as

# When will it be helpful to convert the string to an array to work with it more easily?
# How will you figure out whether a letter is a vowel?
# How will you deal with the fact that some letters are uppercase?
# How will you handle edge cases?
# You may find it helpful to write additional methods -- one for each job -- and then combine them. It's less overwhelming, for instance, to start converting your algorithm to code by writing a next_vowel method that takes a vowel character and returns the next vowel character. Once you know that small piece works because you've tested it with a few different vowels, you can use it in your program and trust that it's unlikely to be the source of any bugs that come up. This is a great way to make steady progress.

# If you do successfully implement the algorithm, "Felicia Torres" will become "Vussit Gimodoe", which is a rather odd name. Luckily, our dearest Vussit is from a country no one has ever heard of, mainly because it doesn't really existZ.
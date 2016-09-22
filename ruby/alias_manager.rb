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
  x.reverse # Returns the swapped last and first name
end

def if_vowel_or_consonant (x)
  vowel = ["a","e","i","o","u"] #can these "vowels" to something else if wanted.
  if vowel.include? x # to check if vowel or consonant
    if x == "u" #edge case for "u"
      x = "a"
      return x
    elsif
    vowel.each_with_index do|letter, index| #check other letters, other than "u"
      if letter == x 
        x = vowel[index + 1]
        return x
      end #end this if-state
    end # end this block
  end #end entire vowel check




   else
    # method for consonants
  end
end


# ########################## DRIVER CODE #########################
vowels = ["a","e","i","o","u"] # can change in future!

puts "","What is your real name?"
current_name = your_name_reversed(gets.chomp)

#p current_name
current_name[0] = "code here"
p if_vowel_or_consonant ("e") # debug. return i.
p if_vowel_or_consonant ("a") # debug. return i.
p if_vowel_or_consonant ("u") # debug. return a. edge case too?


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
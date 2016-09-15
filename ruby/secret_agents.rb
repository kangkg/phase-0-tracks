#Pseudocode:
# In the string X, select the first letter and advance it one place in the alphabet. Repeat for the rest of the letters in the string. However, if it is a space character, no change should be made. 

# In a string X, select the first letter and move it back one place in the alphabet. Repeat for the rest of the letters in the string X. If it's space, no change should be made. 

# Code:
alpha = "abcdefghijklmnopqrstuvwxyz"

def encrypt (str)
  index = 0
  while index < str.length
    str[index] = str[index].next
    index += 1
  end
  puts str
end

encrypt ("abcd")


# An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. Any space character should remain a space character -- no change made.
# A decrypt method that reverses the process above. Note that Ruby doesn't have a built-in method for going backward one letter. How can you find out where a letter is in the alphabet, then access the letter right before it? Hint: In the IRB session above, you learned how to ask a string for the index of a letter. "abcdefghijklmnopqrstuvwxyz" counts as a string.
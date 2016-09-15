## Ken's things ##
############################# METHODS #################################
# ENCRYPT Pseudo-code
# In the string X, select the first letter and advance it one place in the alphabet. Repeat for the rest of the letters in the string. However, if it is a space character, no change should be made. 

# Code:
def encrypt (str)
  index = 0
  while index < str.length
    if str[index] == " "
      index += 1
    elsif str[index] == "z"
      str[index] = "a"
      index +=1
    else    
      str[index] = str[index].next
      index += 1
    end
  end
  str
end

# DECRYPT Pseudo-code
# In a string X, select the first letter and move it back one place in the alphabet. Repeat for the rest of the letters in the string X. If it's space, no change should be made. 

# Code:
def decrypt (str)
  index = 0
  alpha = "abcdefghijklmnopqrstuvwxyz"
  while index < str.length
    index2 = 0
    if str[index] == " "
      index += 1
    else
      until str[index] == alpha[index2]
        index2 += 1
      end
      str[index] = alpha[index2 - 1]
      index += 1
    end
  end
  str
end

# Some debugging: 
# puts "Encrypts below:"
# puts encrypt("abc") # should return "bcd"
# puts encrypt("zed") # should return "afe"

# puts "Decrypts below:"
# puts decrypt("bcd") # should return "abc"
# puts decrypt("afe") # should return "zed"

# puts "Encrypted, then Decrypted:"
# puts decrypt(encrypt("swordfish")) # This works because encrypt returns an encrypted string, which is passed into the decrypt method.


############################################
# Pseudocode for last release:
# Ask user for encrypt or decrypt input.
# Ask user for a password.
# If encrypt, run password through encrypt method. Print.
# If decrypt, run pass through decrypt and print.
# Then exit.
############################### Driver Code ########################################
puts "Would you like to encrypt or decrypt a password?"
answer = gets.chomp.downcase

puts "Enter your password:"
password = gets.chomp

if answer == "encrypt"
  puts "This is your encrypted password: " + encrypt(password)
elsif answer == "decrypt"
  puts "This is your decrypted password: " + decrypt(password)
else 
  puts "Invalid input."
end


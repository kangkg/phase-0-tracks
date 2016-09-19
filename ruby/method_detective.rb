# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

puts "zom".replace "zoom" #not sure if this is what they want
# => “zoom”

puts "enhance".center("enhance".length + 8, " ")
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".concat(" suspects")
#=> "the usual suspects"

puts " suspects".prepend("the usual")
# => "the usual suspects"

puts "The case of the disappearing last letter".chop #could use byteslice ..
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter".byteslice(1..-1) #could also use an array..? or slice!(0)
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

puts "z".ord # I believe this is the character encoding ASCII decimal-code-number. opposite is chr
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

puts "This is the opposite of \"z\".ord: #{122.chr}" 

puts "How many times does the letter 'a' appear in this string?".count "a"
# => 4

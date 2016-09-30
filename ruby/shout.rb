w# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " =D"
#   end
# end


# ########################## Driver Code Part 1#########################
# puts Shout.yell_angrily("NOOO")
# puts Shout.yelling_happily("YESS")


##########################  PART 2 #########################
########################## New Mixin Code: #########################

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " =D"
  end
end

class Human
  include Shout
end #=> end class

class Dinosaurs
  include Shout
end #=> end class

#Driver Code
hooman = Human.new
dinosaur = Dinosaurs.new

puts hooman.yell_angrily("Waaah a Dinosaur")
puts dinosaur.yelling_happily("Waaah some lunch")

# Comment out the old code in shout.rb, and make a mixin version of the Shout module instead.
# Write two classes representing anything that might shout, and include the Shout module in those classes.
# Test your work by adding driver code at the bottom of the file that instantiates instances of your classes and calls the two module methods on each instance.
# Submit the GitHub URL of shout.rb to complete this challenge.
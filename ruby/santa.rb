class Santa 

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!" 
  end

  # Setter Methods: 
  def celebrate_birthday #should age Santa by one year.
    @age += 1
  end

  def get_mad_at(reindeer_name) # take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings.
    @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name)) # NOT CERTAIN IF THIS WORKS
    @reindeer_ranking.push(reindeer_name)
  end

  def gender=(new_gender) # The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.
    @gender = new_gender  
  end

  # Add two "getter" methods as well:
  def age
    @age
  end

  def ethnicity
    @ethnicity    
  end
  
end #end class

########################## Driver Code #########################
# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

santas2 = Santa.new("tester", "orange")
p santas2.age
p santas2.ethnicity
p santas2




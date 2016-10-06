# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative is different from require because it refers to files that you can pull in that are
# relative to the diretory the file you are using 'require_relative' is in. It also differs from require
# in that require can refer to modules or ruby gems (non ruby files).

require_relative 'state_data'

class VirusPredictor
  # Allows instance values to be set when a new class object is created
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  # Calls predicted_deaths and speed_of_spread methods using instance variables set from initialization
  def virus_effects
    predicted_deaths
    speed_of_spread
  end


  private
  # Performing calculations based off a flow of control where the outcome is determined by values of the instance variables
  def predicted_deaths
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end
    population_multiplier = (@population_density.floor / 5) * 0.01
    if @population_density < 50
      population_multiplier = 0.05
    elsif @population_density >= 200
      population_multiplier = 0.4
    end
    number_of_deaths = (@population * population_multiplier).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # Determining the speed of virus spread based off of the population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

STATE_DATA.each do | state, population_info |
  VirusPredictor.new(state, population_info[:population_density], population_info[:population]).virus_effects
end

# Provided-code:
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================
# Reflection Section:

# What are the differences between the two different hash syntaxes shown in the state_data file?
#   There is a symbol key, and a string key. Only symbols allow not using the hash rocket, while others do.

# What does require_relative do? How is it different from require?
#   It uses a relative path from the directory the file is in, to another file. Require requires the entire directory, like C:/...

# What are some ways to iterate through a hash?
#   Use .each, .map, .for loops.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   The variables in the arguments were attributes. Not required as arguments in virus_effects. Attributes can be accessed anywhere within classes.

# What concept did you most solidify in this challenge?
#   Using hashes and an iterator definitely helped alot. It still can be confusing to think about the |key, value| sometimes.
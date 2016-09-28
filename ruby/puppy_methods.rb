class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number_of_times)
    puts "Woof! " * number_of_times
  end

  def roll_over
    puts "rolls over"
  end

  def dog_years(human_years)
      puts (human_years / 7).to_s
  end

  def human_years(dog_years)
      puts (dog_years * 7).to_s
  end

  def initialize
      puts "Initialzing new puppy instance ..."
  end

end

new_puppy = Puppy.new
new_puppy.fetch("ball")
new_puppy.speak(5)
new_puppy.roll_over
new_puppy.dog_years(55)
new_puppy.human_years(7)

############### KITTY METHOD CODE
class Kitty_cats

  def initialize
    puts "Meow Meow"
  end

  def scratch(thing_to_scratch)
    puts "Kitty is scratching the #{thing_to_scratch}"
  end

  def sleep(hours)
    puts "Kitty sleeps for #{hours} hours"
  end

end


#############DRIVER CODE
mr_paws = Kitty_cats.new

mr_paws.scratch("couch")

mr_paws.sleep(15)

kitty_array = []

50.times { kitty_array << Kitty_cats.new }

# puts kitty_array # DEBUG

kitty_array.each do |x| 

  x.scratch("kitty post") 
  
  x.sleep(22)
  
end

 

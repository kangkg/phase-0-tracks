# Ken's Vamps

puts "What is your name?"
name = gets.chomp.capitalize
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
bday = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Can I order some for you? (yes/no)"
garlic = gets.chomp.downcase
puts "Would you like to enroll in the company’s health insurance? (yes/no)"
insurance = gets.chomp.downcase

################################# Check if answers are logically acceptable. #############################
if (age == 2016 - bday) || (age == 2015 - bday)
  age = true
else
  age = false
end

if (garlic=="yes")
  garlic = true
else
  garlic = false
end

if (insurance=="yes")
  insurance = true
else
  insurance = false
end

################################### Check the results of answers together: #############################
results = nil #for outliers-case
  # If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
if (age && garlic && insurance)
  results = "Probably not a vampire."
end

  # If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
if (!age && (!garlic || !insurance))
  results = "Probably a vampire."
end

  # If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
if (!age && !garlic && !insurance)
  results = "Almost certainly a vampire."
end
  
  # Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
if (name == "Drake Cula" || "Tu Fang" || "Donald Trump")
  results = "Definitely a vampire."
end

  #For outlying case
if (results = nil)
  puts "Results inconclusive."
end

puts "My Results: #{results}"





  

# Otherwise, print “Results inconclusive.”
# Print the result at the end of the survey.
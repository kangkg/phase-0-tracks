# Ken's Vamps
########################   Loop of employees ##########################
puts "How many Employees will be processed? (Please enter a digit.)"
processed = gets.chomp.to_i

until (processed == 0) 
  processed -= 1


  
  ########################### Questions
  puts "What is your name?"
  name = gets.chomp.downcase
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
  if (name == "drake cula" || name == "tu fang" || name == "donald trump")
    results = "Definitely a vampire."
  end

  ########################   other loop to test allergies  ##################################################
  puts "Before we start, do you have any allergies? Please list them one at a time. Say \"done\" when you are finished."
  done = gets.chomp.downcase
  if (done == "sunshine")
    results = "Probably a vampire."
  end

  until (done == "done")
    puts "Any other allergies? Say \"done\" when you are finished."
    done = gets.chomp.downcase
  end
  ######################### end allergy loop ####################################################################


    #For outlying case
  if (results == nil)
    puts "Results inconclusive."
  else
    #If not outlier: RESULTS
    puts "My Results: #{results}"
  end
end ########## <-- end loop  
  
  
  
    
  
# Otherwise, print “Results inconclusive.”
# Print the result at the end of the survey.
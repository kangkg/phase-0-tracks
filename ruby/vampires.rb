# Ken's Vamps
########################   Loop of employees ##########################
puts "How many Employees will be processed? (Please enter a digit.)"
processed = gets.chomp.to_i

until (processed == 0) #begin employee-loop
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
  
  ########################   other loop to test allergies  ##################################################
  puts "Do you have any allergies? Please list them one at a time. Say \"done\" when you are finished."
  done = gets.chomp.downcase

  until (done == "done" || done == "sunshine") #instructions say to *immediately* skip to "probably a vampire"
    puts "Any other allergies? Say \"done\" when you are finished."
    done = gets.chomp.downcase
  end
  ######################### end allergy loop ####################################################################

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
  ######################################## Sunshine allergy will take precedence here ####################################
  if (done == "sunshine")
    results = "Probably a vampire, due to sunshine allergy." #I'm not sure if the sunshine allergy is supposed to take all precedence. Instructions say: "If at any point the employee lists “sunshine” as an allergy, skip directly to the result of “Probably a vampire.”
    puts results
  else
    ################################### Check the results of other-answers together: #############################
    results = nil #for outliers-case
      # If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
    if (age && garlic && insurance)
      results = "Probably not a vampire."
    end
      
      # If he answered sunshine ever.
    if (done == "sunshine")
      results = "Probably a vampire."
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
  
  
  
      # For outlying case
    if (results == nil)
      puts "Results inconclusive."
    else
      # If not outlier: RESULTS
      puts "My Results: #{results}"
      puts ""
    end
  
  end #ends the loop for sunshine overriding all else.... probably not intended, but i like to be technical about instructions...
end ########## <-- end loop for number of workers
  
puts "" #Is there a nicer way to format output to command line?
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
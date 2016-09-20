# My pseudo-code:

# puts "Welcome to our company."
# Initialize a hash with: client_info = { :mai_details => "teh answers"}
# Ask for each detail with gets.chomp
#   * convert any input to appropriate data types.
#   * print the hash back when all questions answered.
#   * prompt the user to update a key (only once). "none" = skip.
#     * use string -> symbol method for user input. no need to handle other errors.
# Print the latest hash, then exit.

########################## My Code ##########################
client_info = {
  name: nil,
  age: nil,
  num_of_children: nil,
  interested: nil,
}

def interested_question (x)
  x.downcase!
  if (x.include? "yes" )
    return true
  else
    return false
  end
end

def change_answer (info, x) 
  x.downcase!
  x = x.to_sym
  if (x == :interested) # gotta be careful with the boolean answer.
    puts "Are you interested in us or not? (yes/no)"
    ans = gets.chomp.downcase
    info[:interested] = interested_question(ans)
    return info
  else
    puts "What would you like to change that answer to?"
    ans = gets.chomp
    info[x] = ans
    return info
  end
end


########################## Driver Code  ############################# 
puts "Welcome to our company."
puts "What is your name?"
client_info[:name] = gets.chomp

puts "What is your age?"
client_info[:age] = gets.chomp.to_i

puts "What is your number of children?"
client_info[:num_of_children] = gets.chomp.to_i

puts "Are you overall interested in our business?"
client_info[:interested] = interested_question(gets.chomp)

puts "" , "Here are your answers: "
puts client_info

puts "", "What category would you like to change? If nothing, then type \"none.\""
last_answer = gets.chomp.downcase
if last_answer != "none"
  client_info = change_answer(client_info, last_answer)
  puts "","These are your new answers: "
  puts client_info
  puts "","Have a good day!"
else
  puts ""
  puts 'Your answer was "none." Have a good day!'
end


########################### END #########################
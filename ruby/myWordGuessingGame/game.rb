class WordGuessingGame
  #include  #optional Module-Includes
  attr_reader :correct_answer, :done, :updated_guess, :number_of_guesses, :guess_limit ########## probably remove correct answer later

  def initialize (correct_answer) #add class-arguments here
    @correct_answer = correct_answer
    @updated_guess = ""; correct_answer.length.times { @updated_guess << "_ " }
    @guess_limit = @correct_answer.length # set the total-amount of guesses possible
    @number_of_guesses = 0                # counter for user's guess count
    @done = nil                           # simply to say this class is done.
    @past_guesses = []                    # hold past guesses
  end

  def get_user_guess(user_answer)
    if @past_guesses.include? user_answer # => to check past guesses
      puts "You have already entered that word/letter before."
      return nil # to skip to next iteration
    end
    @number_of_guesses += 1
    if user_answer == @correct_answer #check if correct answer
      return successMessage
    elsif (user_answer.length == 1) && (correct_answer.include? user_answer) # only give hint if a letter
      array_of_same_letter = (0 ... @correct_answer.length).find_all {|i| @correct_answer[i,1] == user_answer } #=> gives array of all indexes of user_input's letter-instances
      array_of_same_letter.each { |i| @updated_guess[i * 2] =  user_answer } # use the array above to fix every instance.
      return successMessage if @correct_answer == @updated_guess.gsub(" ", "") # if new word-updated equals our answer!
    elsif @number_of_guesses == @guess_limit # USER DEFEATED. out of guesses!
      return defeatMessage
    end  # => end if-statement
    puts "Your current guesses include these letters: #{@updated_guess}"
    @past_guesses << user_answer # store guesses
  end

  def successMessage
    puts "","----------------","You won in #{@number_of_guesses} guesses! The word was: #{@correct_answer}. ^-^"
    @done = 'done'
  end

  def defeatMessage
    puts "","----------------","You lost! The word was: #{@correct_answer}."
    @done = 'done'
  end

end #=> end class

########################## Driver Code #########################
puts "First user, please enter in the word to guess:"
print "> "
new_game = WordGuessingGame.new(gets.chomp.downcase.strip) #('unicorn'.downcase.strip) # will use gets.chomp or "STDIN.noecho(&:gets).chomp" later instead of unicorn

until new_game.done == "done" # not sure if i should make a method instead of this driver-code
  puts "","Second user, guess what single letters are within the answer (for a hint), or guess the entire answer:", "(#{ new_game.guess_limit - new_game.number_of_guesses } guesses left.)"
  print "> "
  new_game.get_user_guess(gets.chomp) # gets.chomp doesn't work with RSPEC.....
end



# => i can tell invalid length

# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.
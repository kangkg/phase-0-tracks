class WordGuessingGame
  #include  #optional Module-Includes
  attr_reader :correct_answer, :done, :updated_guess, :number_of_guesses, :guess_limit ########## probably remove correct answer later

  def initialize (correct_answer) #add class-arguments here
    @correct_answer = correct_answer 
    @updated_guess = ""; correct_answer.length.times { @updated_guess << "_ " }; @updated_guess.strip!
    @guess_limit = @correct_answer.length
    @number_of_guesses = 0
    @done = nil
    @past_guesses = []
  end

  def get_user_guess(user_answer)
    if @past_guesses.include? user_answer # => to check past guesses
      puts "You have already entered that word before."
      return nil # to skip to next iteration
    end
    @number_of_guesses += 1
    if user_answer == @correct_answer || @correct_answer == @updated_guess.gsub(" ", "") #check if correct answer, or correct guesses in the end
      successMessage 
      return @done = 'done'
    elsif @number_of_guesses == @guess_limit
      p @updated_guess.gsub(" ", "").strip ############# DEBUGGING
      defeatMessage
      return @done = 'done'
    else
      ## code that updates info of updated_guess. need to be careful because .index only gets the first instance of a letter. Doesn't work if lengths mismatch. doesn't work if there's more than one letter instance in the correct word.
      # user_answer.each_char do |user_letter| 
      #   correct_answer.each_char do |correct_letter|
      #     if user_letter == correct_letter
      #       @updated_guess[correct_answer.index(correct_letter) * 2] = correct_letter
      #     end
      #   end
      # end

      ###### broken code
      # if correct_answer.include? user_answer
      #   loop_index = 0
      #   until loop_index == correct_answer.length 
      #     #match letter groupings
      #     if correct_answer[loop_index] == user_answer
      #       loop_index += 1
      #     end
      #   end
      # end

      # only give hint if a letter
      if (user_answer.length == 1) && (correct_answer.include? user_answer)
       @updated_guess[correct_answer.index(user_answer) * 2] =  user_answer 
        if @correct_answer == @updated_guess.gsub(" ", "")
          successMessage 
          return @done = 'done' 
        end #check if correct answer, or correct guesses 

        # array_of_all_instances = (0 ... correct_answer.length).find_all { |i| correct_answer[i,1] == user_answer } # for multiple same letters
      end

       puts "Your current guesses include these letters: #{@updated_guess}"
       @past_guesses << user_answer
    end # => end if-statement 
  end

  def successMessage
    puts "----------------","You won in #{@number_of_guesses} guesses! ^-^"
  end

  def defeatMessage
    puts "----------------","You lost! The word was: #{@correct_answer}."
  end

end #=> end class

########################## Driver Code #########################
puts "First user, please enter in the word to guess:"
print "> "
new_game = WordGuessingGame.new('un'.downcase.strip) # will use gets.chomp or "STDIN.noecho(&:gets).chomp" later instead of unicorn

until new_game.done == "done"
  puts "Second user, please guess what single letters are within the answer (for a hint), or guess the entire answer:", "(#{ new_game.guess_limit - new_game.number_of_guesses } guesses left.)"
  print "> "
  new_game.get_user_guess(gets.chomp) # this doesn't work with RSPEC.....
end




# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.
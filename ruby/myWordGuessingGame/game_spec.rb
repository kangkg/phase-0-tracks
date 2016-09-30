require_relative 'game'

describe WordGuessingGame do
  let(:guess_my_answer) { WordGuessingGame.new("unicorn") }

  it "stores the correct answer, given on initialization." do
    expect(guess_my_answer.correct_answer).to eq "unicorn"
  end

  it "stores the correct answer in underscores, given on initialization." do
    expect(guess_my_answer.updated_guess).to eq "_ _ _ _ _ _ _ " #unicorn is 7 length.
  end

  it "takes a user's letter and adds a hint if applicable." do
    expect(get_user_guess('u')).to eq "u _ _ _ _ _ _ " 
  end
end

# Surely I could fix this rspec to take gets.chomp. In addition, I could make the rspec test random alphabetical letters.
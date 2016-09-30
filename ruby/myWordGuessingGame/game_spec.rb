require_relative 'game'

describe WordGuessingGame do
  let(:guess_my_answer) { WordGuessingGame.new("unicorn") }

  it "stores the correct answer, given on initialization." do
    expect(guess_my_answer.correct_answer).to eq "unicorn"
  end

  it "stores the correct answer in underscores, given on initialization." do
    expect(guess_my_answer.updated_guess).to eq "_ _ _ _ _ _ _ " #unicorn is 7.
  end

end
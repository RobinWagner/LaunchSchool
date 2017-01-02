# Rock Paper Scissors

VALID_CHOICES = { 'r' => 'rock', 'p' => 'paper', 'sc' => 'scissors',
                  'l' => 'lizard', 'sp' => 'spock' }

WINNING_CONDITIONS = {
  'rock' => %w(scissors lizard),
  'paper' => %w(rock spock),
  'scissors' => %w(paper lizard),
  'lizard' => %w(spock paper),
  'spock' => %w(scissors rock)
}

WINNING_SCORE = 5

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WINNING_CONDITIONS[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def update_score(player, computer, scores)
  if win?(player, computer)
    scores[:player] += 1
  elsif win?(computer, player)
    scores[:computer] += 1
  end
  scores
end

def display_winner_game(scores)
  if scores[:player] > scores[:computer]
    prompt("You won #{scores[:player]} "\
           "to #{scores[:computer]}! Congratulations!")
  else
    prompt("You lost #{scores[:player]} to #{scores[:computer]}. "\
           "Give it another try!")
  end
end

loop do
  scores = { player: 0, computer: 0 }
  loop do
    choice = ''
    loop do
      prompt("Choose one: ")
      VALID_CHOICES.each { |abb, name| prompt("'#{abb}' for '#{name}'") }
      choice = Kernel.gets().chomp()

      VALID_CHOICES.key?(choice) ? break : prompt("That's not a valid choice.")
    end

    computer_choice = VALID_CHOICES.values.sample()

    prompt("You chose: #{VALID_CHOICES[choice]}; "\
           "Computer chose: #{computer_choice}")

    update_score(VALID_CHOICES[choice], computer_choice, scores)
    display_results(VALID_CHOICES[choice], computer_choice)
    prompt("Your score: #{scores[:player]}; "\
           "Computer score: #{scores[:computer]}")
    prompt("---")
    break if scores.values.max == WINNING_SCORE
  end
  display_winner_game(scores)
  prompt("------------------------------")
  prompt("Do you want to play again? (y)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")

# Rock Paper Scissors

VALID_CHOICES = { 'r' => 'rock', 'p' => 'paper', 'sc' => 'scissors',
                  'l' => 'lizard', 'sp' => 'spock' }

scores = [0, 0]

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  ((first == 'rock') && (second == 'scissors' || second == 'lizard')) ||
    ((first == 'paper') && (second == 'rock' || second == 'spock')) ||
    ((first == 'scissors') && (second == 'paper' || second == 'lizard')) ||
    ((first == 'lizard') && (second == 'spock' || second == 'paper')) ||
    ((first == 'spock') && (second == 'scissors' || second == 'rock'))
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

def calculate_score(player, computer, score)
  if win?(player, computer)
    score[0] += 1
  elsif win?(computer, player)
    score[1] += 1
  end
  score
end

def display_winner_game(scores)
  if scores[0] > scores[1]
    prompt("You won #{scores[0]} to #{scores[1]}! Congratulations!")
  else
    prompt("You lost #{scores[0]} to #{scores[1]}. Give it another try!")
  end
end

loop do
  loop do
    choice = ''
    loop do
      prompt("Choose one: ")
      VALID_CHOICES.each { |abb, name| prompt "'#{abb}' for '#{name}'" }
      choice = Kernel.gets().chomp()

      if VALID_CHOICES.key?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    comp_choice = VALID_CHOICES.values.sample()

    prompt("You chose: #{VALID_CHOICES[choice]}; Computer chose: #{comp_choice}")

    scores = calculate_score(VALID_CHOICES[choice], comp_choice, scores)
    display_results(VALID_CHOICES[choice], comp_choice)
    prompt("Your score: #{scores[0]}")
    prompt("Computer score: #{scores[1]}")
    prompt("---")
    break if scores.max > 4
  end
  display_winner_game(scores)
  prompt("------------------------------")
  prompt("Do you want to play again? (y)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")

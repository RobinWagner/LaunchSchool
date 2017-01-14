require 'pry'

SUITS = %w(H D S C).freeze
VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A).freeze

MAXIMUM_WINNING_SCORE = 21
DEALER_STOP_SCORE = 17

REQUIRED_WINS = 5

def prompt(message)
  puts "=> #{message}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum += if value == 'A'
             11
           elsif value.to_i.zero?
             10
           else
             value.to_i
           end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > MAXIMUM_WINNING_SCORE
  end
  sum
end

def busted?(cards)
  total(cards) > MAXIMUM_WINNING_SCORE
end

def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > MAXIMUM_WINNING_SCORE
    :player_busted
  elsif dealer_total > MAXIMUM_WINNING_SCORE
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards, score)
  result = detect_result(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end

  prompt "Your score: #{score[:player]}. Dealer's score: #{score[:dealer]}."
  puts "=============\n============="
end

def play_again?
  answer = ''
  loop do
    puts "--------------"
    prompt "Do you want to play again? ('yes' or 'no')"
    answer = gets.chomp.downcase
    break if answer == 'yes' || answer == 'no'
    prompt "Sorry, that's not a valid choice"
  end
  answer == 'yes' ? true : false
end

def players_turn(player_cards, deck)
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to 'hit' or 'stay'?"
      player_turn = gets.chomp.downcase
      break if ['h', 's', 'hit', 'stay'].include?(player_turn)
      prompt "Sorry, must enter (h)it or (s)tay."
    end

    if player_turn == 'h' || player_turn == 'hit'
      player_cards << deck.pop
      prompt "You chose to hit!\n=> Your cards are now: \n" \
             "#{player_cards.map { |card| "'" +
             display_card_name(card) + "' \n" }.join('')}"
      prompt "Your total is now: #{total(player_cards)}"
    end

    break if player_turn == 's' || player_turn == 'stay' ||
             busted?(player_cards)
  end
end

def dealers_turn(dealer_cards, deck)
  prompt "Dealer's turn..."

  loop do
    break if busted?(dealer_cards) || total(dealer_cards) >= DEALER_STOP_SCORE

    prompt "Dealer hits!"
    dealer_cards << deck.pop
    prompt "Dealer's cards are now: \n#{dealer_cards. map { |card| "'" +
            display_card_name(card) + "'\n" }.join('')}"
  end
end

def setup_initial_deal(player_cards, dealer_cards, deck)
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end
end

def display_card_name(card)
  "#{display_value_name(card[1])} of #{display_suits_name(card[0])}"
end

def display_suits_name(card)
  case card
  when 'H' then 'Hearts'
  when 'D' then 'Diamonds'
  when 'S' then 'Suits'
  when 'C' then 'Clubs'
  end
end

def display_value_name(card)
  case card
  when 'J' then 'Jack'
  when 'Q' then 'Queen'
  when 'K' then 'King'
  when 'A' then 'Ace'
  else card
  end
end

def show_initial_cards(dealer_cards, player_cards)
  prompt "Dealer has '#{display_card_name(dealer_cards[0])}' and ?"
  prompt "You have: '#{display_card_name(player_cards[0])}' and " \
         "'#{display_card_name(player_cards[1])}', for a total of " \
         "#{total(player_cards)}."
end

def show_updated_cards(dealer_cards, player_cards)
  puts '============='
  prompt "Dealer has #{dealer_cards.map { |card| "'" +
          display_card_name(card) + "'" }.join(', ')}, "\
          "for a total of: #{total(dealer_cards)}"
  prompt "Player has #{player_cards.map { |card| "'" +
          display_card_name(card) + "'" }.join(', ')}, " \
          "for a total of: #{total(player_cards)}"
  puts '============='
end

def show_winner(dealer_cards, player_cards, score)
  show_updated_cards(dealer_cards, player_cards)
  calculate_winner(dealer_cards, player_cards, score)
  sleep(4)
end

def calculate_winner(dealer_cards, player_cards, score)
  if detect_result(dealer_cards, player_cards) == :player ||
     detect_result(dealer_cards, player_cards) == :dealer_busted
    score[:player] += 1
  elsif detect_result(dealer_cards, player_cards) == :dealer ||
        detect_result(dealer_cards, player_cards) == :player_busted
    score[:dealer] += 1
  end
  display_result(dealer_cards, player_cards, score)
end

def display_game_results(score)
  if score[:player] > score[:dealer]
    prompt "You won #{score[:player]} to #{score[:dealer]}! Congratulations!"
  else
    prompt "You lost #{score[:player]} to #{score[:dealer]}! Too bad :("
  end
end

def initialize_game(player_cards, dealer_cards, deck)
  setup_initial_deal(player_cards, dealer_cards, deck)
  show_initial_cards(dealer_cards, player_cards)
end

def clear_screen
  system('clear') || system('cls')
end

loop do
  clear_screen
  prompt "Welcome to Twenty-One!"
  score = { player: 0, dealer: 0 }
  loop do
    clear_screen
    # initialize vars
    deck = initialize_deck
    player_cards = []
    dealer_cards = []

    # initial deal
    initialize_game(player_cards, dealer_cards, deck)

    # player turn
    players_turn(player_cards, deck)

    if busted?(player_cards)
      show_winner(dealer_cards, player_cards, score)
      score.values.max >= REQUIRED_WINS ? break : next
    else
      prompt "You stayed at #{total(player_cards)}"
    end

    # dealer turn
    dealers_turn(dealer_cards, deck)

    dealer_total = total(dealer_cards)
    if busted?(dealer_cards)
      prompt "Dealer total is now: #{dealer_total}"
      show_winner(dealer_cards, player_cards, score)
      score.values.max >= REQUIRED_WINS ? break : next
    else
      prompt "Dealer stays at #{dealer_total}"
    end

    # both player and dealer stays - compare cards!
    show_winner(dealer_cards, player_cards, score)

    break if score.values.max >= REQUIRED_WINS
  end
  display_game_results(score)
  play_again? ? next : break
end

prompt "Thank you for playing Twenty-One! Good bye!"

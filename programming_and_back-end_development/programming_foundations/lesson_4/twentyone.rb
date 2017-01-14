# Rules of Twenty-One

# 52-card deck with 4 suits (hearts, diamonds, clubs, spades) and 13 values
# (2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace).
#
# Goal: Get to 21 as close as possible without going over it.
# If you go over 21, it's a "bust" and you lose.
#
# Setup: Game consists of a "dealer" and a "player". Both participants are
# dealt 2 cards. The player can see their 2 cards, but can only see one of the
# dealer's cards.
#
# Card values: Numbers 2 through 10 are worth their face value.
# Jack, queen, and king are each worth 10
# The ace is worth 1 or 11 (if the sum of the hand exceeds 21 then the ace must
# be worth 1).
#
# Player turn: The player goes first, and can decide to either "hit" or "stay".
# "Hit": A player will ask for another card. (when card value is more than 21,
# player "busts" and loses). If the player busts, the game is over and the
# dealer won.
#
# Dealer turn: When the player stays, it's the dealer's turn. The dealer follows
# a strict rule: Hit until at least 17. If the player busts, the game is over
# an the dealer won.
#
# Comparing cards: When both the player and the dealer stay, it's time to
# compare the total value of the cards and see who has the highest value.

# STEPS:
# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.


require 'pry'

SUITS = ['H', 'D', 'S', 'C'].freeze
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J',
          'Q', 'K', 'A'].freeze

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
    sum -= 10 if sum > 21
  end
  sum
end

def busted?(cards)
  total(cards) > 21
end

def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
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
  puts '============='
  puts '============='
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
      break if ['hit', 'stay'].include?(player_turn)
      prompt "Sorry, must enter 'hit' or 'stay'."
    end

    if player_turn == 'hit'
      player_cards << deck.pop
      prompt "You chose to hit!\n=> Your cards are now: #{player_cards}"
      prompt "Your total is now: #{total(player_cards)}"
    end

    break if player_turn == 'stay' || busted?(player_cards)
  end
end

def dealers_turn(dealer_cards, deck)
  prompt "Dealer turn..."

  loop do
    break if busted?(dealer_cards) || total(dealer_cards) >= 17

    prompt "Dealer hits!"
    dealer_cards << deck.pop
    prompt "Dealer's cards are now: #{dealer_cards}"
  end
end

def setup_initial_deal(player_cards, dealer_cards, deck)
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end
end

def show_inital_cards(dealer_cards, player_cards)
  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a total " \
         "of #{total(player_cards)}."
end

def show_updated_cards(dealer_cards, player_cards)
  puts '============='
  prompt "Dealer has #{dealer_cards}, for a total of: #{total(dealer_cards)}"
  prompt "Player has #{player_cards}, for a total of: #{total(player_cards)}"
  puts '============='
end

def show_winner(dealer_cards, player_cards, score)
  show_updated_cards(dealer_cards, player_cards)
  calculate_winner(dealer_cards, player_cards, score)
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

loop do
  prompt "Welcome to Twenty-One!"
  score = { player: 0, dealer: 0 }
  loop do

    # initialize vars
    deck = initialize_deck
    player_cards = []
    dealer_cards = []

    # initial deal
    setup_initial_deal(player_cards, dealer_cards, deck)

    show_inital_cards(dealer_cards, player_cards)

    # player turn
    players_turn(player_cards, deck)

    if busted?(player_cards)
      show_winner(dealer_cards, player_cards, score)
      score.values.max >= 5 ? break : next
      # play_again? ? next : break
    else
      prompt "You stayed at #{total(player_cards)}"
    end

    # dealer turn
    dealers_turn(dealer_cards, deck)

    dealer_total = total(dealer_cards)
    if busted?(dealer_cards)
      prompt "Dealer total is now: #{dealer_total}"
      show_winner(dealer_cards, player_cards, score)
      score.values.max >= 5 ? break : next
      # play_again? ? next : break
    else
      prompt "Dealer stays at #{dealer_total}"
    end

    # both player and dealer stays - compare cards!
    show_winner(dealer_cards, player_cards, score)

    break if score.values.max >= 5
  end
  if score[:player] > score[:dealer]
    prompt "You won #{score[:player]} to #{score[:dealer]}! Congratulations!"
  else
    prompt "You lost #{score[:player]} to #{score[:dealer]}! Too bad :("
  end
  play_again? ? next : break
end

prompt "Thank you for playing Twenty-One! Good bye!"

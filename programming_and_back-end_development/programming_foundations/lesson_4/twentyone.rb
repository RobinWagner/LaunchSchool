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

deck = [['H', '2'], ['H', '3'], ['H', '4'], ['H', '5'], ['H', '6'], ['H', '7'],
        ['H', '8'], ['H', '9'], ['H', '10'], ['H', 'J'], ['H', 'Q'], ['H', 'K'],
        ['H', 'A'], ['D', '2'], ['D', '3'], ['D', '4'], ['D', '5'], ['D', '6'],
        ['D', '7'], ['D', '8'], ['D', '9'], ['D', '10'], ['D', 'J'], ['D', 'Q'],
        ['D', 'K'], ['D', 'A'], ['C', '2'], ['C', '3'], ['C', '4'], ['C', '5'],
        ['C', '6'], ['C', '7'], ['C', '8'], ['C', '9'], ['C', '10'], ['C', 'J'],
        ['C', 'Q'], ['C', 'K'], ['C', 'A'], ['S', '2'], ['S', '3'], ['S', '4'],
        ['S', '5'], ['S', '6'], ['S', '7'], ['S', '8'], ['S', '9'], ['S', '10'],
        ['S', 'J'], ['S', 'Q'], ['S', 'K'], ['S', 'A']]

def prompt(message)
  puts "=> #{message}"
end

loop do
  prompt "Welcome to Twenty-One!"

  initialize_deck
  deal_cards

  player_deal_or_stay
  dealer_turn

  determine_winner

  answer = ''
  loop do
    prompt "Play again? (Enter 'yes' or 'no')"
    answer = gets.chomp.downcase
    break if answer == 'yes' || answer == 'no'
    prompt "Sorry, that's not a valid choice"
  end
  break unless answer.downcase.start_with?('y')
end

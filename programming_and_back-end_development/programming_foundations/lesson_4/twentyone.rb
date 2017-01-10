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

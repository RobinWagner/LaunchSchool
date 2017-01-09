
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals
INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze

REQUIRED_WINS = 5

# Set CHOOSE to either 'player', 'computer' or 'choose'
CHOOSE = 'player'.freeze

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, score)
  system 'clear'
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts "Player score: #{score[:player]}. Computer score: #{score[:computer]}."
  puts "\n     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |\n "
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def choose_first_mover
  answer = ''
  loop do
    prompt "Choose who should go first: Computer ('c') or player ('p')"
    answer = gets.chomp.downcase
    break if answer == 'c' || answer == 'p'
    prompt "Sorry, that's not a valid choice"
  end
  answer == 'c' ? 'Computer' : 'Player'
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place piece: (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = find_optimal_square(brd, COMPUTER_MARKER)

  if !square
    square = find_optimal_square(brd, PLAYER_MARKER)
  end

  square = 5 if !square && brd[5] == INITIAL_MARKER

  square = empty_squares(brd).sample if !square

  brd[square] = COMPUTER_MARKER
end

def find_optimal_square(brd, current_player)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, current_player)
    break if square
  end
  square
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def increase_win_count(detect_winner, score)
  if detect_winner == 'Player'
    score[:player] += 1
  else
    score[:computer] += 1
  end
end

def place_piece!(brd, player)
  if player == 'Player'
    player_places_piece!(brd)
  elsif player == 'Computer'
    computer_places_piece!(brd)
  end
end

def alternate_player(player)
  player == 'Computer' ? 'Player' : 'Computer'
end

def set_current_player
  case CHOOSE
  when 'choose' then choose_first_mover
  when 'player' then 'Player'
  when 'computer' then 'Computer'
  end
end

def determine_winner(board, score)
  if someone_won?(board)
    increase_win_count(detect_winner(board), score)
    prompt "#{detect_winner(board)} won!"
    prompt "Player score: #{score[:player]}; " \
           "Computer score: #{score[:computer]}"
  else
    prompt "It's a tie!"
  end
end

loop do
  score = { player: 0, computer: 0 }
  loop do
    board = initialize_board

    current_player = set_current_player

    loop do
      display_board(board, score)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board, score)

    determine_winner(board, score)

    break if score.values.max == REQUIRED_WINS
  end
  if score[:player] > score[:computer]
    prompt "You won #{score[:player]} to #{score[:computer]}! Great job!"
  else
    prompt "You lost #{score[:player]} to #{score[:computer]}. Try again!"
  end
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"

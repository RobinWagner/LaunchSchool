class Move

  VALUES = ['rock', 'paper', 'scissors', 'lizard', 'spock'].freeze

  def initialize(value)
    @value = value
  end

  def to_s
    @value
  end
end

class Rock < Move
  def initialize
    @name = 'Rock'
  end

  def >(other_value)
    other_value.class == Scissors || other_value.class == Lizard
  end

  def to_s
    'Rock'
  end
end

class Paper < Move
  def initialize
    @name = 'Paper'
  end

  def >(other_value)
    other_value.class == Rock || other_value.class == Spock
  end

  def to_s
    'Paper'
  end
end

class Scissors < Move
  def initialize
    @name = 'Scissors'
  end

  def >(other_value)
    other_value.class == Paper || other_value.class == Lizard
  end

  def to_s
    'Scissors'
  end
end

class Lizard < Move
  def initialize
    @name = 'Lizard'
  end

  def >(other_value)
    other_value.class == Paper || other_value.class == Spock
  end

  def to_s
    'Lizard'
  end
end

class Spock < Move
  def initialize
    @name = 'Spock'
  end

  def >(other_value)
    other_value.class == Rock || other_value.class == Scissors
  end

  def to_s
    'Spock'
  end
end

class Player
  attr_accessor :move, :name

  def initialize
    set_name
    @score = 0
  end

  def select_move(choice)
    case choice
    when 'rock'
      self.move = Rock.new
    when 'paper'
      self.move = Paper.new
    when 'scissors'
      self.move = Scissors.new
    when 'lizard'
      self.move = Lizard.new
    when 'spock'
      self.move = Spock.new
    end
  end
end

class Human < Player
  attr_accessor :score, :move_history

  def initialize
    super
    @move_history = []
  end

  def set_name
    n = ""
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard, or spock:"
      choice = gets.chomp
      break if Move::VALUES.include? choice
      puts "Sorry, invalid choice."
    end
    move_history << select_move(choice)
    select_move(choice)
  end
end

class Computer < Player
  attr_accessor :score, :move_history

  def initialize
    super
    @move_history = []
  end

  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie', 'Sonny', 'Number 5'].sample
  end

  def choose
    choice =  Move::VALUES.sample
    move_history << select_move(choice)
    select_move(choice)
  end
end

# Game Orchestration Engine
class RPSGame
  attr_accessor :human, :computer

  WINNING_SCORE = 2

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors, Lizard, Spock!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors, Lizard, Spock. Good bye!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def display_winner
    if human.move > computer.move
      human.score += 1
      puts "#{human.name} won the round and has #{human.score} points!"
      puts "#{computer.name} has #{computer.score} points."
    elsif computer.move > human.move
      computer.score += 1
      puts "#{computer.name} won the round and has #{computer.score} " +
        "points!"
      puts "#{human.name} has #{human.score} points."
    else
      puts "It's a tie!"
      puts "#{human.name} has #{human.score} points."
      puts "#{computer.name} has #{computer.score} points."
    end
  end

  def display_move_history
    loop do
      puts "Would you like to see the history of moves? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n."
    end

    for n in 0...human.move_history.length do
      puts "#{human.name} chose #{human.move_history[n]}."
      puts "#{computer.name} chose #{computer.move_history[n]}."
    end

  end

  def game_won?
    if human.score >= RPSGame::WINNING_SCORE
      puts "#{human.name} has won #{RPSGame::WINNING_SCORE} rounds and wins the game."
      return true
    elsif computer.score >= RPSGame::WINNING_SCORE
      puts "#{computer.name} has won #{RPSGame::WINNING_SCORE} rounds and wins the game."
      return true
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n."
    end

    return false if answer.downcase == 'n'
    if answer.downcase == 'y'
      human.score = 0
      computer.score = 0
      return true
    end
  end

  def play
    display_welcome_message

    loop do
      human.choose
      computer.choose
      display_moves
      display_winner
      break unless !game_won? || play_again?
    end
    display_goodbye_message
    display_move_history
  end
end

# Launch game
RPSGame.new.play

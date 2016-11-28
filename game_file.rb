class Game
  attr_reader :players

  def initialize(players)
    @players = set_players(players)
    @letters = ["B", "I", "N", "G", "O"]
    puts "hello"
  end

  def draw
    letter = rand(@letters.length)
    number = letter_roll(letter)

    mark(number, letter)
    @players
  end

  protected

  attr_reader :letters

  def set_players(players)
  	player_list = {}

  	players.each do |player|
  		player_list[player] = Board.new
  	end

  	player_list
  end

  def mark(number, letter)
  	@players.each do |name, bingo_board|
	    bingo_board.board.each do |row|
	      if row[letter] == number
	        row[letter] = "X"
	      end
		  end
		end
		@players
	end

	def letter_roll(letter)
    case @letters[letter]
    when "B"
      rand(1..15)
    when "I"
      rand(16..30)
    when "N"
      rand(31..45)
    when "G"
      rand(46..60)
    when "O"
      rand(61..75)
    end
  end
end
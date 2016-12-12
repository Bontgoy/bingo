class Board
	attr_accessor :board

	def initialize
		@board = create_board
		puts "Hello! The board has loaded."
	end

	protected
		attr_reader :used_numbers

		def create_board
			bingo_range = %w(B I N G O)
			new_board = []

			@used_numbers = used_number_filter(bingo_range)

			bingo_range.length.times do
				b = roll_number(1, 15, "B")
				i = roll_number(16, 30, "I")
				n = roll_number(31, 45, "N")
				g = roll_number(46, 60, "G")
				o = roll_number(61, 75, "O")

				new_board << [b, i, n, g, o]
			end

			new_board[2][2] = "X"
			new_board
		end

		def used_number_filter(bingo_range)
			used_numbers = {}
			bingo_range.each { |letter| used_numbers[letter] = []}
			used_numbers
		end

		def roll_number(bottom, top, letter)
			rolled_number = rand(bottom..top)

			if @used_numbers[letter].include?(rolled_number)
				roll_number(bottom, top, letter)
			end
			@used_numbers[letter] << rolled_number
			rolled_number
		end
end

require_relative 'game_file'
require_relative 'board_file'

new_game = Game.new(["Ty", "Andrew", "Emmanuel", "Lucas", "Jen"])

100.times do 
	new_game.draw
end

puts "Test for PR"

p new_game.players

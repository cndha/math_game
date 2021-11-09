require './game'
require './question'
require './player'

print "Player 1, enter your name:\n >"
player1 = $stdin.gets.chomp

print "Player 2, enter your name:\n >"
player2 = $stdin.gets.chomp

new_game = Game.new(player1, player2)

new_game.start_game

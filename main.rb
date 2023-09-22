require_relative "lib/board.rb"
require_relative "lib/player.rb"


puts "Player 1 >>> Enter your name:"
name = gets.chomp
puts "Player 1 >>> Enter any symbol as your piece:"
piece = gets.chomp
player_1 = Player.new(name, piece)

puts "Player 2 >>> Enter your name:"
name = gets.chomp
puts "Player 2 >>> Enter any symbol as your piece:"
piece = gets.chomp
player_2 = Player.new(name, piece)

player_1.play()
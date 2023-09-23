require_relative "lib/board.rb"
require_relative "lib/player.rb"
require 'colorize'


puts "Player 1 >>> Enter your name:"
name = gets.chomp()

while true do
    puts "Player 1 >>> Enter any character as your piece:"
    piece = gets.chomp
    if piece.length > 1
        puts "You should type one character as your piece".red
        redo
    else
        break
    end
end
player_1 = Player.new(name, piece)

puts "Player 2 >>> Enter your name:"
name = gets.chomp
while true do
    puts "Player 2 >>> Enter any Character as your piece:"
    puts "It should not be same as #{player_1.name}'s piece"
    piece = gets.chomp
    if piece.length > 1
        puts "You should type one character as your piece".red
        redo
    elsif piece == player_1.piece
        puts "Don't choose the same piece as #{player_1.name}".red
        redo
    else
        break
    end
end
player_2 = Player.new(name, piece)

puts "Good, let's play the Tic Tac Toe Game now \u{1f929}!!!\n".blue

Board.show_board

while true do
    if player_1.play
        puts "Congratulations #{player_1.name}, you won!!!".upcase.green
        break
    end
    if player_2.play
        puts "Congratulations #{player_2.name}, you won!!!".upcase.green
        break
    end

end
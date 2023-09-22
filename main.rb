require_relative "lib/board.rb"
require_relative "lib/player.rb"


puts "Player 1 >>> Enter your name:"
name = gets.chomp()

while true do
    puts "Player 1 >>> Enter any character as your piece:"
    piece = gets.chomp
    if piece.length > 1
        puts "You should type one character as your piece"
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
        puts "You should type one character as your piece"
        redo
    elsif piece == player_1.piece
        puts "Your piece should not be same as #{player_1.name}'s piece"
        redo
    else
        break
    end
end
player_2 = Player.new(name, piece)

Board.show_board

while true do
    if player_1.play
        puts "#{player_1.name} won"
        break
    end
    if player_2.play
        puts "#{player_2.name} won"
        break
    end

end
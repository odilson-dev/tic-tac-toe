require_relative "board.rb"
class Player
    attr_reader :piece, :name

    def initialize(name, piece)
        @name = name
        @piece = piece
    end

    def play()
        puts "#{@name} -"
        puts "What is the number where you want to put your piece?"
        number = gets.chomp
        Board.set_board(number, self)
        Board.show_board
        Board.check_victory
    end
end
require_relative "board.rb"
class Player
    attr_reader :piece

    def initialize(name, piece)
        @name = name
        @piece = piece
    end

    def play()
        Board.show_board
        p "What is the number where you want to put your piece?"
        number = gets.chomp
        Board.set_board(number, self)
        Board.show_board
    end
end
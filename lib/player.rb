require_relative "board.rb"
class Player
    attr_reader :piece, :name

    def initialize(name, piece)
        @name = name
        @piece = piece
    end

    def play()
        while true do 
            puts "\n#{@name} -"
            puts "What is the number where you want to put your piece?"
            number = gets.chomp
            if Board.numbers_already_choosed.include? number
                puts "You can't choose this number anymore".red
                redo
            else 
                break
            end
        end
        Board.set_board(number, self)
        Board.show_board
        Board.check_victory
    end
end
#Note a moi meme
#Empecher les joueurs de choisir un numero qui a deja ete choisi par un autre joueur

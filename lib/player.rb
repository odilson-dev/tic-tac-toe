require_relative "board.rb"
def is_digit?(s)
    code = s.ord
    # 48 is ASCII code of 0
    # 57 is ASCII code of 9
    48 <= code && code <= 57
end

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
            if number.length > 1
                puts "You should choose a number between 1 and 9, you are not allowed to choose more than one number".red
                redo

            elsif !is_digit?(number)
                puts "You must enter a number".red
                redo
            elsif Board.numbers_already_choosed.include? number
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
class Board
  def initialize
    @board = {
        1 => 1, 2 => 2, 3 => 3,
        4 => 4, 5 => 5, 6 => 6,
        7 => 7, 8 => 8, 9 => 9
        }
  end

  def show_board
      puts "      #{@board[1]} | #{@board[2]} | #{@board[3]}"
      puts '     ---+---+---'
      puts "      #{@board[4]} | #{@board[5]} | #{@board[6]}"
      puts '     ---+---+---'
      puts "      #{@board[7]} | #{@board[8]} | #{@board[9]}"
  end
end

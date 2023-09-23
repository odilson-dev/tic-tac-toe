def verify(elem1, elem2, elem3)
    elem1 == elem2 ? elem2 == elem3 : false
end

class Board
  def self.create_board
    @@board = {
      1 => 1, 2 => 2, 3 => 3,
      4 => 4, 5 => 5, 6 => 6,
      7 => 7, 8 => 8, 9 => 9
      }
    @@numbers_already_choosed = []
  end

  def self.numbers_already_choosed
    @@numbers_already_choosed
  end

  def self.show_board
      puts "      #{@@board[1]} | #{@@board[2]} | #{@@board[3]}"
      puts '     ---+---+---'
      puts "      #{@@board[4]} | #{@@board[5]} | #{@@board[6]}"
      puts '     ---+---+---'
      puts "      #{@@board[7]} | #{@@board[8]} | #{@@board[9]}"
  end

  def self.set_board(number, player)
    @@board[number.to_i] = player.piece
    @@numbers_already_choosed << number
  end

  def self.check_victory

    arr = [ #Vertical
            verify(@@board[1], @@board[2], @@board[3]),
            verify(@@board[4], @@board[5], @@board[6]),
            verify(@@board[7], @@board[8], @@board[9]),

            #Horizontal
            verify(@@board[1], @@board[4], @@board[7]),
            verify(@@board[2], @@board[5], @@board[8]),
            verify(@@board[3], @@board[6], @@board[9]),

            #Diagonal
            verify(@@board[1], @@board[5], @@board[9]),
            verify(@@board[7], @@board[5], @@board[3]),
    ]
    arr.any?
  end
end
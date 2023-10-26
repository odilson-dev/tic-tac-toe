require_relative '../lib/board'

describe verify('X', 'X', 'X') do
  context "when the board reads X X X across one row, columns or diagonal" do
    it "returns true" do
        expect(verify('X', 'X', 'X')).to be true
    end
  end

  context "when the board reads X X O across one row, columns or diagonal" do
      it "returns false" do
          expect(verify('X', 'X', 'O')).to be false
    end
  end

  context "when the board reads O O O across one row, columns or diagonal" do
    it "returns true" do
        expect(verify('O', 'O', 'O')).to be true
    end
  end
end

describe Board do
    describe "We test when someone has'nt win yet" do
        before do
            class Board
                def self.create_board
                    @@board = {
                    1 => 1, 2 => 2, 3 => 3,
                    4 => 4, 5 => 5, 6 => 6,
                    7 => 7, 8 => 8, 9 => 9
                    }
                    @@numbers_already_choosed = []
                end
            end
            Board.create_board
        end
        context "returns False because any three elements on the rows, columns and diagonals are same" do
            it "returns false that means nobody wins yet" do
                expect(Board.check_victory).to be false
            end
        end
    end

    describe "We test when someone wins" do
        before do
            class Board
                def self.create_board
                    @@board = {
                    1 => 1, 2 => 2, 3 => 3,
                    4 => 4, 5 => 5, 6 => 6,
                    7 => 'X', 8 => 'X', 9 => 'X'
                    }
                    @@numbers_already_choosed = []
                end
            end
            Board.create_board
        end
    
        context "returns True because there is three elements on a row, a column or diagonal which same" do
            it "returns True that means someone wins" do
                expect(Board.check_victory).to be true
            end
        end
    end
end
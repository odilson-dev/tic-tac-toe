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
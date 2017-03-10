require 'start_grid'

describe StartGrid do

  let(:start_grid) {described_class.new}

  describe "contains a blank grid" do
    it "genertes a grid" do
      expect(start_grid).to respond_to(:new_grid)
    end

    it "should contain x3 2multidimentional arrays"do
      expect(start_grid.new_grid).to eq([['a1', 'a2', 'a3'],['b1', 'b2', 'b3'],['c1', 'c2', 'c3']] )
    end
  end

end

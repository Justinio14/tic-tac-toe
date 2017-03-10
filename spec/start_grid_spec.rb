require 'start_grid'

describe StartGrid do

  let(:start_grid) {described_class.new}

  describe "contains a blank grid" do
    it "genertes a grid" do
      expect(start_grid).to respond_to(:new_grid)
    end

    it "should contain x3 2multidimentional arrays"do
      expect(start_grid.new_grid).to eq([[1, 2, 3],[4, 5, 6],[7, 8, 9]] )
    end
  end

end

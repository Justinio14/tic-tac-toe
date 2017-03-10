require 'win_scenario'

describe WinScenario do

  let(:win) { described_class.new }

  it "contains winning permutations" do
    expect(win).to respond_to(:permutations)
  end

  it "contains winning permutations" do
    expect(win.permutations).to eq([])
  end

end

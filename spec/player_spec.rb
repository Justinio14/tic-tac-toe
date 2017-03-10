require 'player'

describe Player do

  let(:player) { described_class.new }

  it "generates a starting grid" do
    expect(player.grid).not_to be nil
  end

  it "players can view grid" do
    expect(player.current_status).not_to be nil
  end

  describe "player1 plays a turn" do
    it "player one can enter a value" do
      expect(player).to respond_to(:player1).with(1).argument
    end
  end

end

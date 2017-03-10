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

    it "player one can enter a value" do
      player.player1(1)

      expect(player.grid[0][0]).to eq('x')
    end

  end

  describe "player2 plays a turn" do
    it "player one can enter a value" do
      player.player1(1)
      player.player2(3)
      expect(player.grid[0][2]).to eq('o')
    end
  end

  describe "players cannot overwrite a chosen selection" do
    it "raises and error if invalid selction" do
      player.player1(3)
      player.player2("o")
      expect(player.grid[0][2]).to eq('x')
    end
  end


  describe "a winning game" do
    it "checks player 1 wins " do
      player.player1(1)
      player.player2(4)
      player.player1(2)
      player.player2(7)
      player.player1(3)
      expect(player.winner).to eq("winner")
    end
  end

  describe "a winning game" do
    it "checks player 1 wins " do
      player.player1(4)
      player.player2(1)
      player.player1(5)
      player.player2(7)
      player.player1(6)
      expect(player.winner).to eq("winner")
    end
  end

  describe "a winning game" do
    it "checks player 2 wins " do
      player.player1(4)
      player.player2(1)
      player.player1(7)
      player.player2(2)
      player.player1(8)
      player.player2(3)
      expect(player.winner).to eq("winner")
    end
  end

end

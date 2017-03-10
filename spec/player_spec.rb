require 'player'

describe Player do

  let(:player) { described_class.new }

  it "generates a starting grid" do
    expect(player.grid).not_to be nil
  end

  it "players can view grid" do
    expect(player.current_status).not_to be nil
  end

end

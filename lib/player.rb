require 'win_scenario'

class Player < WinScenario

  attr_reader :grid

  def initialize()
    @grid = StartGrid.new.new_grid
    @player1 = true
    @player2 = false
  end

  def player1(turn)
    fail "Wrong turn" if @player1 == false
    @grid.map do |i|
      i.map!{ |j| j == turn ? 'x' : j }
    end
    current_status
    @player1 = false
    @player2 = true
    winner
  end

  def player2(turn)
    fail "Wrong turn" if @player2 == false
    @grid.map do |i|
      i.map!{ |j| j == turn ? 'o' : j }
    end
    current_status
    @player2 = false
    @player1 = true
  end

  def current_status
  @grid.each do |x|
        x.each{|y| print y}
        puts "\n"
      end
  end

  def winner
    permutations
  end
end

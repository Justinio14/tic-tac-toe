require 'win_scenario'

class Player < WinScenario

  attr_reader :grid

  PLAYERONE = "x"
  PLAYERTWO = "o"

  def initialize()
    @grid = StartGrid.new.new_grid
    @player1 = true
    @player2 = false
    @icon = ""
    @go = 0
  end

  def player1(turn)
    fail "Wrong turn" if @player1 == false
    @turn1 = turn
    gogo
    current_status
    @player1 = false
    @player2 = true
    winner
  end

  def player2(turn)
    fail "Wrong turn" if @player2 == false
    @turn2 = turn
    gogo
    current_status
    @player2 = false
    @player1 = true
    winner
  end

  def gogo
    @player1 == true ? @icon = PLAYERONE  : @icon = PLAYERTWO
    @player1 == true ? @go = @turn1 : @go = @turn2

    @grid.map do |i|
      i.map!{ |j| j == @go ? @icon : j }
    end
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

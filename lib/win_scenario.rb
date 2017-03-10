
class WinScenario


  def permutations
    return "winner" if @grid[0].all? {|item| item == @grid[0][0] }
    return "winner" if @grid[1].all? {|item| item == @grid[1][0] }
    return "winner" if @grid[2].all? {|item| item == @grid[2][0] }

  end

end

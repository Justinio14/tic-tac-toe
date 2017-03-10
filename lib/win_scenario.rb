
class WinScenario


  def permutations
    return "winner" if @grid[0][0] == "x" && @grid[0][1] == "x" && @grid[0][2] == "x"
    return "winner" if @grid[0][0] == "o" && @grid[0][1] == "o" && @grid[0][2] == "o"
  end

end

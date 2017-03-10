

class Player

  attr_reader :grid

  def initialize()
    @grid = StartGrid.new.new_grid
  end

  def current_status
    return @grid
    puts @grid 
  end

end

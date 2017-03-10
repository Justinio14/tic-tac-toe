

class Player

  attr_reader :grid

  def initialize()
    @grid = StartGrid.new.new_grid
  end

  def player1(x)

  end

  def current_status
  @grid.each do |x|
        x.each do |y|
          print y
        end
        puts "\n"
      end
  end

end

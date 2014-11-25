# Rules:
#  Any live cell with less than two live neighbors dies
#  Any live cell with two or three live neighbors
#  Any live cell with more than three live neighbors dies
#  Any dead cell with exactly three live neighbors becomes a live cell

class World

  def initialize
    @cells = Array.new(25) { Array.new(25) { Cell.new } }
    @cells_alive = []
    @cells_dead = []
    play_game
  end

  def find_neighbors(rows, columns)
  matrix =  [
            [-1, -1], [-1, 0], [-1, 1],
            [0, -1], [0, 0], [0, 1],
            [1, -1], [1, 0], [1, 1]]

  end

  def find_cells_and_neighbors
    @cells_with_neighbors = []
    @cells.each_with_index do |cell_row, row|
      cell_row.each_with_index do |cell, column|
        live_or_die(cell, row, column)
      end
    end
  end

  def find_living_neighbors(cell, row, column)
    find_neighbors(row, column).select { |cell| cell.alive }.length
  end

  def live_or_die(cell, row, column)
    total = find_living_neighbors(cell, row, column)
    case cell.alive
    when true
      if total == 2 || total == 3
        @cells_alive << cell
      else
        @cells_dead << cell
      end
    when false
      if total >= 3
        @cells_alive << cell
      else
        @cells_dead << cell
      end
    end
  end

  def kill_cells
    @cells_dead.each do |cell|
      cell.die
    end
    @cells_dead.clear
  end

  def revive_cells
    @cells_alive.each do |cell|
      cell.revive
    end
    @cells_alive.clear
  end

  def move_to_next_generation
    kill_cells
    revive_cells
  end

  def print_world
    @cells.each do |ary|
      ary.each do |cell|
        if cell.alive == true
          print "O "
        else
          print "- "
        end
      end
      print "\n"
    end
  end

  def play_game
    birth_random_cells
    print_world
    sleep(0.1)
    while 1 < 2
      find_cells_and_neighbors
      move_to_next_generation
      print_world
      sleep(0.1)
    end
  end

  def birth_random_cells
    populate = rand(0..99)
    populate.times do
      row = rand(0..9)
      col = rand(0..9)
      @cells[row][col].revive
    end
  end

end


class Cell

  def initialize
    self.alive = false
  end

  def revive
    self.alive = true
  end

  def die
    self.alive = false
  end

end

World.new

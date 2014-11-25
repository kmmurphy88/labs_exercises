# Rules:
#  Any live cell with less than two live neighbors dies
#  Any live cell with two or three live neighbors
#  Any live cell with more than three live neighbors dies
#  Any dead cell with exactly three live neighbors becomes a live cell

@alive ? [2,3].include?(alive_neighbors) : alive_neighbors == 3
@cells = Array.new(@height) { |y| Array.new(@width) { |x| Cell.new(x,y) }}

def alive_neighbors(x, y)
  @neighbors.inject(0) do |sum, (neighbor_x, neighbor_y)|
    sum += 1 if @cells[y + neighbor_y][x + neighbor_x].alive; sum
  end
end

# class Pattern
#   def initialize(x, y, pattern=nil)
#     @origin_x, @origin_y = origin_x, origin_y
#     @default_patterns = {:acorn => [[-3,0],[-2,0],[-2,2],[0,1],[1,0],[2,0],[3,0]]}
#     @pattern = @default_patterns[pattern].nil? ? @default_patterns[:acorn] : @default_patterns[pattern]
#   end
#
#   def set_cells(cells)
#     @pattern.each  do |(x,y)|
#       unless cells[@origin_x + x].nil? || cells[@origin_x + x][@origin_y + y].nil?
#         cells[@origin_y + y][@origin_x + x].alive = true;
#       end
#     end
#   end
# end

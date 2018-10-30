class Board
  attr_accessor :grid
  
  def initialize
    @grid = [%w(R N B Q K B N R), 
    %w(P P P P P P P P), 
    [nil,nil,nil,nil,nil,nil,nil,nil],
    [nil,nil,nil,nil,nil,nil,nil,nil],
    [nil,nil,nil,nil,nil,nil,nil,nil],
    [nil,nil,nil,nil,nil,nil,nil,nil],
    [nil,nil,nil,nil,nil,nil,nil,nil],
    %w(P P P P P P P P), 
    %w(R N B Q K B N R)]
  end
  
  def populate #with future created pieces

  end
  
  
  def move_piece(start_pos, end_pos)
    @grid[start_pos],@grid[end_pos] = @grid[end_pos],@grid[start_pos]
    
    
    
  end
  
  def [](pos)
    row,col = pos
    @grid[row][col]
  end
  
  def []=(pos,value)
    row,col = pos
    @grid[row][col] = value
  end
  
  def get_input
    arr = []
    input = gets.chomp
    input.split(',').each do |int|
      arr << int.to_i
    end
    arr
  end

  
  
  
end
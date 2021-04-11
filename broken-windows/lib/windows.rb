class Windows
  def execute(actions)
    
    matrix = (0..9).map{(0..9).map{0}}

    actions.each_line do |line|
      coord1, coord2, option = line.split(" ")
      x1, y1 = coord1.split(",")
      x2, y2 = coord2.split(",")

      if(option == "X")
        option = 1
      else
        option = 0
      end
      
      (x1.to_i..x2.to_i).each do |i|
        (y1.to_i..y2.to_i).each do |j|
          matrix[i][j] = option
        end
      end

    end
    matrix.map{|row| row.sum}.sum
  end
end

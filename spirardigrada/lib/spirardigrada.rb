class Spirardigrada
  def devour(matrix)
    output = []
    while (!matrix.empty?)
      output += matrix.shift
      if(!matrix.empty?)
        output += matrix.map{ |line| line.pop}
      end
      if(!matrix.empty?)
        output += matrix.pop.reverse
      end
      if(!matrix.empty?)
        output += matrix.map{ |line| line.shift}.reverse
      end
    end
    output.join(" ")
  end
end
